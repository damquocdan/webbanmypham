<?php
include "connect.php";
include "../webbanmypham/assets/components/formatCurrency.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Cocolux</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="assets/img/logo-banner/logotheps.png" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css.map">
    <link rel="stylesheet" href="assets/css/base.css">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <link rel="stylesheet" href="assets/fonts/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
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
                    <div id="banner">
                        <img src="./assets/img/logo-banner/banner-web.png" width="100%">
                    </div>
                </div>
                <!-- <?php include "./assets/components/loc.php" ?> -->
                <div id="apple">
                    <div>
                        <form class="search-product" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]) . (isset($_GET['name']) ? '?name=' . htmlspecialchars($_GET['name']) : ''); ?>" method="GET">
                            <input type="text" name="name" placeholder="Tìm kiếm sản phẩm">
                            <button type="submit">Tìm</button>
                        </form>
                    </div>
                    <form action="" method="GET" class="locSP">
                        <h3>Lọc theo:</h3>
                        <div class="locTheoHang">
                            <input type="radio" name="Options" id="option" value="DESC"> &nbsp Giá cao tới thấp &nbsp&nbsp&nbsp
                            <input type="radio" name="Options" id="option" value="ASC"> &nbsp Giá thấp tới cao &nbsp&nbsp
                            <select name="selectname" id="nsx" class="form-select form-select-lg">
                                <option value=null selected>Danh mục sản phẩm</option>
                                <option value="1">Trang điểm</option>
                                <option value="2">Chăm sóc da</option>
                                <option value="3">Chăm sóc cơ thể</option>
                                <option value="4">Chăm sóc tóc</option>
                                <option value="5">Nước hoa</option>
                            </select>
                        </div>

                        <div class="locTheoGia">
                            <select name="gia" id="gia" class="form-select form-select-lg">
                                <option value=null selected>Chọn khoảng giá</option>
                                <option value="0-400000">Dưới 400.000</option>
                                <option value="400000-1000000">400.000 - 1.000.000</option>
                                <option value="1000000-2000000">1.000.000 - 2.000.000</option>
                                <option value=">2000000">Từ 2.000.000</option>
                            </select>
                        </div>

                        <button type="submit" id="btn-loc" class="btn btn-danger btn-loc">LỌC</button>
                    </form>
                    <div class="phone-heading">
                        <h3 class="phone-heading-text">Tất cả sản phẩm</h3>
                    </div>

                    <div class="phone-content">

                        <?php
                        // include "./assets/components/formatCurrency.php";

                        

                        if (isset($_GET["name"])) {
                            $name = $_GET["name"];
                            $sql = "SELECT * FROM sanpham WHERE TEN LIKE '%$name%'";
                        } elseif (isset($_GET["Options"]) && in_array($_GET["Options"], ["ASC", "DESC"])) {
                            // Handle the sorting form submission and construct the SQL query accordingly
                            $price_sort = $_GET["Options"];
                            $sql = "SELECT * FROM sanpham ORDER BY GIA $price_sort";
                        } elseif (isset($_GET["selectname"]) && !empty($_GET["selectname"])) {
                            // Handle the location form submission and construct the SQL query accordingly
                            $location = $_GET["selectname"];
                            $sql = "SELECT * FROM sanpham WHERE ID_NSX = '$location'";
                        } else {
                            $sql = "SELECT * FROM sanpham";
                        }
                        $result = mysqli_query($conn, $sql);

                        while ($row = $result->fetch_assoc()) {
                            $rsNSX = mysqli_query($conn, "SELECT * FROM nsx WHERE ID=" . $row['ID_NSX']);
                            if ($rsNSX) {
                                $nsx_data = mysqli_fetch_assoc($rsNSX);
                                $nsx = $nsx_data['TENNSX'];
                            }
                            
                            $item = "<div class='phone-phone-item'>";
                            $item .= "<a href='chitietsanpham.php?id=" . $row['ID'] . "'><img src=" . $row["HINHANH"] . " class='phone-img'></a>";
                            $item .= "<p  class='phone-name'><a href='chitietsanpham.php?id=" . $row['ID'] . "'>" . $row["TEN"] . "</a></p>";
                            $item .= "<h3 class='phone-price'>" . currency_format($row["GIA"]) . "</h3>";
                            $item .= "<div class='phone-vote'><p class='value'>" . $row["DANHGIA"] . "</p><i class='ti-star'></i></div>";
                            echo $item;
                        }
                        ?>

                    </div>
                    <?php include "./assets/components/phantrang.php" ?>
                </div>
            </div>
        </div>
        <?php include "./assets/components/footer.php" ?>
        <?php include "./assets/components/yeucaudangnhap.php" ?>

        <script src="./assets/slider/banner.js"></script>
        <script src="./assets/js/timkiem.js"></script>
        <script src="./assets/js/loc.js"></script>
        <script src="./assets/js/menuMobile.js"></script>
</body>

</html>