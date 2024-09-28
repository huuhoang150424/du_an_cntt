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
$sql = "SELECT *  FROM sanpham1 order by rand() limit 8";
//Bước 3
$result = mysqli_query($conn, query: $sql);

?>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    .current-ten {
        text-transform: uppercase;
        color: green;
        font-weight: bold;
    }

    .home-slider img {
        height: 200px;
        object-fit: cover;
    }

    .image-banner {
        height: 400px;
    }
</style>

<!-- Start Slider Area -->
<main class="main-wrapper">
    <div class="container mt-3" id="trangchu">
        <!-- slider -->
        <div id="homeCarousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">
            <!-- Indicators -->
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#homeCarousel" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#homeCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#homeCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
                <button type="button" data-bs-target="#homeCarousel" data-bs-slide-to="3" aria-label="Slide 4"></button>
                <button type="button" data-bs-target="#homeCarousel" data-bs-slide-to="4" aria-label="Slide 5"></button>
            </div>

            <!-- Slides -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://inan2h.vn/wp-content/uploads/2022/12/in-banner-quang-cao-do-an-7-1.jpg"
                        class="d-block w-100 image-banner" alt="Slide 1">
                </div>
                <div class="carousel-item">
                    <img src="./assetss/img/banner-2.png" class="d-block w-100 image-banner" alt="Slide 2">
                </div>
                <div class="carousel-item">
                    <img src="./assetss/img/banner-3.png" class="d-block w-100 image-banner" alt="Slide 3">
                </div>
                <div class="carousel-item">
                    <img src="./assetss/img/banner-4.png" class="d-block w-100 image-banner" alt="Slide 4">
                </div>
                <div class="carousel-item">
                    <img src="./assetss/img/banner-5.png" class="d-block w-100 image-banner" alt="Slide 5">
                </div>
            </div>

            <!-- Controls -->
            <button class="carousel-control-prev" type="button" data-bs-target="#homeCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Trước</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#homeCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Sau</span>
            </button>
        </div>
        <!-- card -->
        <div class="home-service" id="home-service">
            <div class="home-service-item">
                <div class="home-service-item-icon">
                    <i class="fa-light fa-person-carry-box"></i>
                </div>
                <div class="home-service-item-content">
                    <h4 class="home-service-item-content-h">GIAO HÀNG NHANH</h4>
                    <p class="home-service-item-content-desc">Cho tất cả đơn hàng</p>
                </div>
            </div>
            <div class="home-service-item">
                <div class="home-service-item-icon">
                    <i class="fa-light fa-shield-heart"></i>
                </div>
                <div class="home-service-item-content">
                    <h4 class="home-service-item-content-h">THỰC PHẨM AN TOÀN</h4>
                    <p class="home-service-item-content-desc">Cam kết đồ ăn chất lượng</p>
                </div>
            </div>
            <div class="home-service-item">
                <div class="home-service-item-icon">
                    <i class="fa-light fa-headset"></i>
                </div>
                <div class="home-service-item-content">
                    <h4 class="home-service-item-content-h">HỖ TRỢ 24/7</h4>
                    <p class="home-service-item-content-desc">Tất cả ngày trong tuần</p>
                </div>
            </div>
            <div class="home-service-item">
                <div class="home-service-item-icon">
                    <i class="fa-light fa-circle-dollar"></i>
                </div>
                <div class="home-service-item-content">
                    <h4 class="home-service-item-content-h">HOÀN LẠI TIỀN</h4>
                    <p class="home-service-item-content-desc">Nếu không hài lòng</p>
                </div>
            </div>
        </div>
        <div class="home-title-block" id="home-title">
            <h2 class="home-title">Khám phá thực đơn của chúng tôi</h2>
        </div>
        <!-- cared Item food -->
        <div class="home-products" id="home-products">
            <?php $limit = 8;
            $count = 0;
            while ($row = mysqli_fetch_assoc($result)) {
                if ($count >= $limit) {
                    break;
                }
                ?>
                <div class="col-product">
                    <article class="card-product">
                        <div class="card-header">
                            <a href="chitiet.php?masp=<?php echo $row["masp"] ?>" class="card-image-link">
                                <img src="upload/<?php echo $row["img1"] ?>" alt="" class="card-image">
                            </a>
                        </div>
                        <form action="cart.php" method="post" class="product__items-cart">
                            <div class="card-footer">
                                <div class="product-buy">
                                    <!-- <i class="fa-regular fa-cart-shopping-fast"></i> -->
                                    <input type="submit" value="Đặt món" name="addcart" class="card-button order-itemt">
                                </div>
                            </div>
                            <input type="hidden" name="soluong" value="1">
                            <input type="hidden" name="tensp" value="<?php echo $row["tensp"] ?>">
                            <input type="hidden" name="dongiamoi" value="<?php echo $row["dongiamoi"] ?> 000 VNĐ">
                            <input type="hidden" name="img1" value="<?php echo $row["img1"] ?>">
                        </form>
                        <div class="food-info">
                            <div class="card-content">
                                <div class="card-title">
                                    <a href="#" class="card-title-link"></a>
                                </div>
                            </div>
                            <div class="card-footer">
                                <div class="product-price">
                                    <span class="current-ten"><?php echo $row["tensp"] ?></span>
                                </div>
                                <div class="product-price">
                                    <span class="current-price"><?php echo $row["dongiamoi"] ?> 000 VNĐ</span>
                                </div>
                            </div>
                        </div>
                </div>
                <?php
                $count++;
            } ?>
            <div class="page-nav">
                <ul class="page-nav-list">
                </ul>
            </div>
        </div>
    </div>
    </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Chọn Carousel bằng ID
        var myCarousel = document.querySelector('#homeCarousel');

        // Khởi tạo Carousel với tùy chọn interval là 4000 mili giây
        var carousel = new bootstrap.Carousel(myCarousel, {
            interval: 2000, // 4 giây
            ride: 'carousel' // Bắt đầu Carousel tự động
        });
    </script>