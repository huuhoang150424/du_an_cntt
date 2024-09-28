<?php include "headerquantri.php"; ?>
<?php

include "function_taikhoan.php";
$taikhoan = new taikhoan();
$result = $taikhoan->hienthi();
$count = mysqli_num_rows($result);

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        .container-1 {
            padding-bottom: 10px;
        }
        .container-1 h2 {
            margin: 10px 0 20px 0;
        }
        .container-1 th,
        .container-1 tr,
        .container-1 h2,
        .container-1 td {
            color: black;
            border-color: black;
        }
        .container-1 th {
            text-align: center;
            /* background-color: yellowgreen; */
            border-color: black !important;
        }

        .container-1 h2 {
            text-align: center;
            width: 100%;
            padding-top: 10px;
            font-weight: 700;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            font-size: 30px;
        }
        .container-1 td {
            background-color: white;
        }


        .container-1 button {
            border-radius: 8px;
            margin-top: 15px;
            font-size: 18px;
        }

        .example {
            padding: 0px 20px 0px 20px;
        }

        .table {
            padding: 0px 150px 0px 250px;
            font-size: 22px;
        }

        th,
        td {
            padding: 10px;
        }

    </style>
</head>

<body>

    <div class="example">
        <div class="container-1">
            <div class="">
                <h2 class="text-muted">Quản Lý Tài Khoản </h2>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Tên Đăng Nhập</th>
                            <th>Mật Khẩu</th>
                            <th>Họ Tên</th>
                            <th>Email</th>
                            <th>Enable</th>
                            <th>Hành động</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if ($count > 0) {
                            while ($row = mysqli_fetch_assoc($result)) { ?>
                                <tr>
                                    <td>
                                        <?PHP echo $row["tendangnhap"] ?>
                                    </td>
                                    <td>
                                        <?PHP echo $row["matkhau"] ?>
                                    </td>
                                    <td>
                                        <?PHP echo $row["hoten"] ?>
                                    </td>
                                    <td>
                                        <?PHP echo $row["email"] ?>
                                    </td>
                                    <td>
                                        <?PHP echo $row["enable"] ?>
                                    </td>
                                    <td>
                                        <a href="suataikhoan.php?tendangnhap=<?PHP echo $row["tendangnhap"] ?>"
                                            style="text-decoration: none">Sửa</a>
                                        <a href="xoaform.php?tendangnhap=<?PHP echo $row["tendangnhap"] ?>"
                                            style="text-decoration: none">Xóa</a>
                                    </td>
                                </tr>
                                <?PHP
                            }
                        } ?>
                    </tbody>
                </table>
                <button class="btn btn-success "> <a href="form.php" style="text-decoration: none; color: white; ">Thêm Tài Khoản</a></button>
            </div>
        </div>
    </div>
</body>
</html>