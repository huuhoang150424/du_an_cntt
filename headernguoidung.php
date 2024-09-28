<?php session_start();

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
    <style>
        .header-top-primaryColor {
            background-color: #A8CE91;
        }

        .header__cart-1 {
            color: white;
        }

        .btn__search-1 {
            background-color: var(--red);
            height: 30px;
            color: var(--white);
            border-radius: 99px;
            position: relative;
            right: 100px;
            top: 5px;
            border: none;
            outline: none;
            padding: 0 15px;
            font-size: 16px;
        }
    </style>
</head>

<body>
    <header class="header-top-primaryColor">
        <link href='./assetss/img/favicon.png' rel='icon' type='image/x-icon' />
        <div class="header-top">
            <div class="container">
                <div class="header-top-left">
                    <ul class="header-top-list">
                        <li><a href=""><i class="fa-regular fa-phone"></i> 0987654321 (miễn phí)</a></li>
                        <li><a href=""><i class="fa-light fa-location-dot"></i> Xem vị trí cửa hàng</a></li>
                    </ul>
                </div>
                <div class="header-top-right">
                    <ul class="header-top-list">
                        <li><a href="">Giới thiệu</a></li>
                        <li><a href="">Cửa hàng</a></li>
                        <li><a href="">Chính sách</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="header-middle">
            <div class="container">
                <div class="header-middle-left">
                    <div class="header-logo">
                        <a href="index.php">
                            <img src="https://sgweb.vn/wp-content/uploads/2022/12/logo-png-01.png" alt="Logo"
                                class="header-logo-img">
                        </a>
                    </div>
                </div>
                <div class="header-middle-center">
                    <form action="timkiemsp.php" class="form-search" method="GET">
                        <span class="search-btn"><i class="fa-light fa-magnifying-glass"></i></span>
                        <input type="text" name="timkiem" class="form-search-input" placeholder="Tìm kiếm ..." value="<?php if (isset($_GET['timkiem'])) {
                            echo $_GET['timkiem'];
                        } ?> ">
                        <button class=" btn__search-1 ">
                            <!-- <i class="fa-light fa-filter-list"></i> -->
                            <span>Tìm kiếm</span>
                        </button>
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
                                    <span class="text-dndk header__cart-1">Đăng xuất / Đơn hàng</span>
                                    <span class="text-tk header__cart-1"><?php echo $_SESSION['user']; ?> <i
                                            class="fa-sharp fa-solid fa-caret-down header__cart-1"></i></span>
                                </div>
                                <ul class="header-middle-right-menu">
                                    <li><a id="login" href="logout.php"><i
                                                class="fa-light fa-right-to-bracket header__cart-1"></i> Đăng xuất</a></li>
                                    <li><a href="xemdonhang_dadat.php"><i class="fa-light fa-cart header__cart-1"></i> Đơn
                                            hàng</a></li>
                                </ul>
                            </li>
                            <li class="header-middle-right-item open">
                                <div class="cart-icon-menu">
                                    <a href="cart.php"> <i class="fa-light fa-basket-shopping"></i>
                                        <span
                                            class="count-product-cart"><?php echo isset($_SESSION['giohang']) ? count($_SESSION['giohang']) : 0; ?></span>
                                </div>
                                <span class="header__cart-1">Giỏ hàng</span></a>
                            </li>
                        <?php } else { ?>
                            <div class="auth-container">
                                <span class="text-dndk header__cart-1">Đăng nhập / Đăng ký</span>
                                <span class="text-tk header__cart header__cart-1"> Tài Khoản <i
                                        class="fa-sharp fa-solid fa-caret-down header__cart-1"></i></span>
                            </div>
                            <ul class="header-middle-right-menu">
                                <li><a id="login" href="login.php"><i class="fa-light fa-right-to-bracket header__cart"></i>
                                        Đăng nhập</a></li>
                                <li><a id="signup" href="dangki.php"><i class="fa-light fa-user-plus header__cart"></i> Đăng
                                        kí</a></li>
                            </ul>
                            </li>
                            <li class="header-middle-right-item open">
                                <div class="cart-icon-menu">
                                    <i class="fa-light fa-basket-shopping"></i>
                                    <span class="count-product-cart">0</span>
                                </div>
                                <span class="header__cart">Giỏ hàng</span>
                            </li>
                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <nav class="header-bottom">
        <div class="container">
            <ul class="menu-list">
                <li class="menu-list-item"> <a href="index.php" class="menu-link"> Trang chủ</a>
                <li>
                    <?php while ($row_nhom = mysqli_fetch_assoc($result_nhom)) { ?>
                    <li class="menu-list-item"> <a class="menu-link"
                            href="cat.php?nhom_id=<?php echo $row_nhom["id"] ?>"><?php echo $row_nhom["tennhom"] ?></a></li>
                <?php } ?>
                <li class="menu-list-item"> <a href="lienhe.php" class="menu-link"> Đánh Giá</a>
                <li>
                <li class="menu-list-item"> <a href="tintuc.php" class="menu-link"> Tin Tức</a>
                <li>
            </ul>
        </div>
    </nav>