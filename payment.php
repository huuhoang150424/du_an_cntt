<?php

// Thông tin PayPal API (Lấy từ tài khoản PayPal Developer)
$clientId = 'AaGBfAkRLJd61b6dHugiiZ14I75rMCXjeofitwNQ0GCKb4zZ4IAmm-6rZ29sTBzaYxyKCXjV5RvfLktH';    // Client ID của bạn
$secret = 'YOUR_SECRET';         // Secret của bạn

// PayPal API URL
$paypalUrl = "https://api-m.sandbox.paypal.com/v1/oauth2/token"; // Dùng sandbox cho môi trường thử nghiệm
$paypalPaymentUrl = "https://api-m.sandbox.paypal.com/v1/payments/payment";

// Lấy Access Token từ PayPal API
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $paypalUrl);
curl_setopt($ch, CURLOPT_HEADER, false);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_USERPWD, $clientId . ":" . $secret);
curl_setopt($ch, CURLOPT_POSTFIELDS, "grant_type=client_credentials");

$result = curl_exec($ch);
if (empty($result)) die("Error: No response.");
$json = json_decode($result);
curl_close($ch);

$accessToken = $json->access_token;

// Tạo thanh toán mới
$paymentData = [
    "intent" => "sale",
    "payer" => [
        "payment_method" => "paypal"
    ],
    "transactions" => [
        [
            "amount" => [
                "total" => "50.00",
                "currency" => "USD"
            ],
            "description" => "Mô tả đơn hàng của bạn"
        ]
    ],
    "redirect_urls" => [
        "return_url" => "http://yourdomain.com/success.php",
        "cancel_url" => "http://yourdomain.com/cancel.php"
    ]
];

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $paypalPaymentUrl);
curl_setopt($ch, CURLOPT_HEADER, false);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_HTTPHEADER, [
    "Content-Type: application/json",
    "Authorization: Bearer " . $accessToken
]);
curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($paymentData));

$result = curl_exec($ch);
if (empty($result)) die("Error: No response.");
$paymentResponse = json_decode($result);
curl_close($ch);

// Lấy URL để redirect người dùng đến PayPal thanh toán
foreach ($paymentResponse->links as $link) {
    if ($link->rel == "approval_url") {
        $redirectUrl = $link->href;
        break;
    }
}

// Chuyển hướng người dùng đến PayPal để thanh toán
header("Location: $redirectUrl");
exit;
?>
