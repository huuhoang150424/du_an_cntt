<?php include "headernguoidung.php";

include "function_lienhe.php";
$lienhe = new lienhe();
if (isset($_POST['ok'])) {
    $lienhe->hoten = isset($_POST['hoten']) ? $_POST['hoten'] : '';
    $lienhe->sdt = isset($_POST['sdt']) ? $_POST['sdt'] : '';
    $lienhe->email = isset($_POST['email']) ? $_POST['email'] : '';
    $lienhe->noidung = isset($_POST['noidung']) ? $_POST['noidung'] : '';

    $lienhe->insert();
}
?>
<link rel="stylesheet" href="assets/css/base.css">
<link rel="stylesheet" href="assets/css/grid.css">
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/scss/style.scss">
<link rel="stylesheet" href="assets/css/responsive.css">



<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
<style>
    .contact {
        height: unset;
        margin: 100px 0 0 0;
    }

    .contact__form:hover {
        box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.15);
    }

    .contact__form-gr-input {
        border: 1px solid black !important;
    }
</style>
<div class="contact" >
    <div class="grid wide  ">
        <div class="row">
            <div class="col l-9">
                <div class="contact__form">
                    <div class="contact__info">
                        <h3 class="contact__form-heading">Đánh Giá Món Ăn Và Phục Vụ</h3>
                        <form action="" method="post">
                            <div class="contact__form-gr">
                                <input type="text" class="contact__form-gr-input" placeholder="Nhập Tên" name="hoten"></input>
                                <input type="text" class="contact__form-gr-input" placeholder="Nhập Số Điện Thoại" name="sdt"></input>
                                <input type="text" class="contact__form-gr-input" placeholder="Nhập Email" name="email"></input>
                                <input type="text" class="contact__form-gr-input" placeholder="Nội Dung" name="noidung"> </input>
                            </div>
                            <div class="contact__form-btn">
                                <button class="contact__form-link" type="submit" name="ok">Gửi</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col l-3">
                <div class="row">
                    <div class="col l-12">
                        <div class="container-support__items">
                            <img src="upload/sp1.png" alt="" class="container-support__items-img">
                            <div class="container-support__items-info">
                                <span class="container-support__info-title">Miễn phí vận chuyển</span>
                                <span class="container-support__info-msg">Cho các đơn hàng > 5tr</span>
                            </div>
                        </div>
                    </div>
                    <div class="col l-12">
                        <div class="container-support__items">
                            <img src="upload/sp2.png" alt="" class="container-support__items-img">
                            <div class="container-support__items-info">
                                <span class="container-support__info-title">Hỗ trợ 24/7</span>
                                <span class="container-support__info-msg">Liên hệ hỗ trợ 24h/ngày</span>
                            </div>
                        </div>
                    </div>
                    <div class="col l-12">
                        <div class="container-support__items">
                            <img src="upload/sp3.png" alt="" class="container-support__items-img">
                            <div class="container-support__items-info">
                                <span class="container-support__info-title">Hoàn tiền 100%</span>
                                <span class="container-support__info-msg">Nếu các sản phẩm bị lỗi, hư hỏng</span>
                            </div>
                        </div>
                    </div>
                    <div class="col l-12">
                        <div class="container-support__items">
                            <img src="upload/sp4.png" alt="" class="container-support__items-img">
                            <div class="container-support__items-info">
                                <span class="container-support__info-title">Thanh toán</span>
                                <span class="container-support__info-msg">Được bảo mật 100%</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
include "footernguoidung.php"; ?>