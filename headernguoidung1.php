<?php session_start();
//   if(isset($_SESSION)){

//   }


?>
<?php
$servername = "localhost:3308";
$username = "root";
$password = "";
$dbname = "vuthibacdk12cntt2";

//B1: Create connetion

$conn = mysqli_connect($servername, $username, $password, $dbname);
//check connection

if (!$conn) {
    die("connection failer" . mysqli_connect_error());
}
//B2:
$sql_nhom = "SELECT * FROM `sanpham_nhom` ";
;
//Bước 3
$result_nhom = mysqli_query($conn, $sql_nhom);

$addToCartClicked = isset($_POST['addcart']);

if ($addToCartClicked && !isset($_SESSION['user'])) {
    // Người dùng chưa đăng nhập và đã nhấn nút "Thêm vào giỏ hàng"
    // Chuyển hướng đến trang login.php
    header("Location: login.php");
    exit();
}


?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Family Food</title>
    <link href='./assetss/img/favicon.png' rel='icon' type='image/x-icon' />
    <link rel="stylesheet" href="./assetss/css/main.css">
    <link rel="stylesheet" href="./assetss/css/home-responsive.css">
    <link rel="stylesheet" href="./assetss/css/toast-message.css">
    <link rel="stylesheet" href="./assetss/font/font-awesome-pro-v6-6.2.0/css/all.min.css" />
</head>

<body>

    <div class="header-middle">
        <div class="container">
            <div class="header-middle-left">
                <div class="header-logo">
                    <a href="index.php">
                        <img src="./assetss/img/e.jpg" alt="Logo" class="header-logo-img">
                    </a>
                </div>
            </div>
            <div class="header-middle-center">
                <form action="" class="form-search">
                    <span class="search-btn"><i class="fa-light fa-magnifying-glass"></i></span>
                    <input type="text" class="form-search-input" placeholder="Tìm kiếm ...">
                    <button class="filter-btn"><i class="fa-light fa-filter-list"></i><span>Lọc</span></button>
                </form>
            </div>
            <div class="header-middle-right">
                <ul class="header-middle-right-list">
                    <li class="header-middle-right-item dnone open">
                        <div class="cart-icon-menu">
                            <i class="fa-light fa-magnifying-glass"></i>
                        </div>
                    </li>
                    <li class="header-middle-right-item close">
                        <div class="cart-icon-menu">
                            <i class="fa-light fa-circle-xmark"></i>
                        </div>
                    </li>
                    <li class="header-middle-right-item dropdown open">
                        <i class="fa-light fa-user"></i>
                        <?php if (isset($_SESSION['user'])) { ?>
                            <div class="auth-container">
                                <span class="text-dndk">Đăng xuất / Đơn hàng</span>
                                <span class="text-tk"><?php echo $_SESSION['user']; ?> <i
                                        class="fa-sharp fa-solid fa-caret-down"></i></span>
                            </div>
                            <ul class="header-middle-right-menu">
                                <li><a id="login" href="logout.php"><i class="fa-light fa-right-to-bracket"></i> Đăng
                                        xuất</a></li>
                                <li><a href="xemdonhang_dadat.php"><i class="fa-light fa-cart"></i> Đơn hàng</a></li>
                            </ul>
                        </li>
                        <li class="header-middle-right-item open">
                            <div class="cart-icon-menu">
                                <a href="cart.php"> <i class="fa-light fa-basket-shopping"></i>
                                    <span
                                        class="count-product-cart"><?php echo isset($_SESSION['giohang']) ? count($_SESSION['giohang']) : 0; ?></span>
                            </div>
                            <span>Giỏ hàng</span></a>
                        </li>
                    <?php } else { ?>
                        <div class="auth-container">
                            <span class="text-dndk">Đăng nhập / Đăng ký</span>
                            <span class="text-tk"> Tài Khoản <i class="fa-sharp fa-solid fa-caret-down"></i></span>
                        </div>
                        <ul class="header-middle-right-menu">
                            <li><a id="login" href="login.php"><i class="fa-light fa-right-to-bracket"></i> Đăng nhập</a>
                            </li>
                            <li><a id="signup" href="dangki.php"><i class="fa-light fa-user-plus"></i> Đăng kí</a></li>
                        </ul>
                        </li>
                        <li class="header-middle-right-item open">
                            <div class="cart-icon-menu">
                                <i class="fa-light fa-basket-shopping"></i>
                                <span class="count-product-cart">0</span>
                            </div>
                            <span>Giỏ hàng</span>
                        </li>
                    <?php } ?>
                </ul>
            </div>
        </div>
    </div>
    </header>