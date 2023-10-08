<?php
include "connect.php"
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Về chúng tôi</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="./assets/img/logo-banner/logotheps.png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css.map">
    <link rel="stylesheet" href="./assets/css/base.css">
    <link rel="stylesheet" href="./assets/css/main.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <link rel="stylesheet" href="./assets/fonts/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <script src="./assets/js/style.js"></script>
</head>

<body>
    <div class="app">
        <!-- Header -->
        <?php
        include './assets/components/header.php';
        include './assets/components/headerMobile.php';
        ?>
        <div class="container">
            <div class="grid">
                <div class="content">
                    <div class="about" style="font-size: 14px;">
                        <h1 style="margin-top: 0; padding-top: 20px">Về chúng tôi</h1>
                        <hr>
                    </div>
                    <div class="aboutus">
                        <div class="ab_text">
                            Cocolux là hệ thống phân phối mỹ phẩm chính hãng uy tín và dịch <br> vụ chăm sóc khách hàng tận tâm . Đến với Coco bạn có thể hoàn toàn yên tâm<br> khi sẽ chọn được cho mình bộ sản phẩm phù hợp và ưng ý từ các nhãn hàng nổi <br> tiếng trên toàn thế giới.
                        </div>
                        <div class="ab_contact">
                            <div class="ab_contact-heading">Liên hệ với chúng tôi</div>
                            <div class="ab_group">
                                <a href="https://www.facebook.com/nhpphnnhp/">Nguyễn Hoài Phong</a>
                            </div>
                            <div class="ab_group">
                                <a href="https://www.facebook.com/anhpha.aquarius">Nguyễn Võ Anh Pha</a>
                            </div>
                            <div class="ab_group">
                                <a href="https://www.facebook.com/chanphong.giang.73">Giang Chấn Phong</a>
                            </div>
                            <div class="ab_group">
                                <a href="https://www.facebook.com/dung.nguoi.9279">Nguyễn Hoàng Phúc</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php require "./assets/components/footer.php" ?>
    </div>
    <script src="./assets/js/timkiem.js"></script>
    <div id="dangki" style="display: none">
        <div class="modal">
            <div class="modal_overlay"></div>
            <div class="modal_body">
                <div class="auth-form">
                    <div class="auth-form__container">
                        <div class="auth-form__header">
                            <h3 class="auth-form__heading">Đăng kí</h3>
                        </div>
                        <div class="auth-form__form">
                            <div class="auth-form__group">
                                <input type="text" class="auth-form__input" placeholder="Tên đăng nhập">
                            </div>
                            <div class="auth-form__group">
                                <input type="password" class="auth-form__input" placeholder="Mật khẩu">
                            </div>
                            <div class="auth-form__group">
                                <input type="password" class="auth-form__input" placeholder="Nhập lại mật khẩu">
                            </div>
                        </div>
                        <div class="auth-form__note">
                            <input type="checkbox" class="auth-form__policy-check">
                            <p class="auth-form__policy-text">Tôi đồng ý với các điều khoản và dịch vụ.</p>
                        </div>
                        <div class="auth-form__controls">
                            <button class="btn btn--back" onclick="hide()">TRỞ LẠI</button>
                            <button class="btn btn--primary" onclick="DangKiThanhCong()">ĐĂNG KÍ</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Dang nhap -->
    <div id="dangnhap" style="display: none;">
        <div class="modal">
            <div class="modal_overlay"></div>
            <div class="modal_body">
                <div class="auth-form">
                    <div class="auth-form__container">
                        <div class="auth-form__header">
                            <h3 class="auth-form__heading">Đăng nhập</h3>
                        </div>
                        <div class="auth-form__form">
                            <div class="auth-form__group">
                                <input type="text" class="auth-form__input" placeholder="Tên đăng nhập">
                            </div>
                            <div class="auth-form__group">
                                <input type="password" class="auth-form__input" placeholder="Mật khẩu">
                            </div>
                        </div>
                        <div class="auth-form__note">
                            <p class="auth-form__policy-text2">Quên mật khẩu?</p>
                        </div>
                        <div class="auth-form__controls">
                            <button class="btn btn--back" onclick="hide()">TRỞ LẠI</button>
                            <button class="btn btn--primary" onclick="DangNhapThanhCong()">ĐĂNG NHẬP</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Yeu cau dang nhap-->
    <div id="login_required" style="display: none;">
        <div class="modal">
            <div class="modal_overlay"></div>
            <div class="modal_body">
                <div class="auth-form">
                    <div class="auth-form__container">
                        <div class="cart-icon-check">
                            <div style="background-color: #cb1c22; border: 10px solid #cb1c22;"><i class="ti-alert"></i></div>
                        </div>
                        <div class="cart-notification">
                            <p>Vui lòng đăng nhập!</p>
                        </div>
                        <div class="cart-button-OK">
                            <button class="btn btn--primary" onclick="hide_login_required()">OK</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="./assets/js/menuMobile.js"></script>
</body>

</html>