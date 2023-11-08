<!-- #include file="connect.asp" -->
<!DOCTYPE html>
<html lang="vn">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia&effect=neon|outline|emboss|shadow-multiple">
    <link rel="stylesheet" href="/css/app.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
</head>
<body class="bg-light"> 
    <div class="text-left btn-app d-flex py-2 align-items-center"> 
        <div class="text-md text-white font-weight-bold ml-4 mb-2" style="font-size: 2.5rem;">
            <span style="font-size: 2.5rem;">Nhóm </span>
        </div>
        <img class="m-2" src="image/group 8.png" alt="Logo" style="width:60px;">
    </div>
    <div class="container">
        <div class="row align-items-center" style="margin-top: 100px;">
            <div class="col-md-6">
                <div class="col-10 bg-gray shadow-10 pt-5" style="height: 500px;">
                    <div class="position-relative text-center m-auto">
                        <div style="z-index: 1; top: -20px" class="position-absolute w-100">
                                <h1 class="text-app">Quản lý đặt bàn</h1>
                                <img style="width: 35%; opacity: 0.97;" src="/image/kisspng-restaurant-sticker-matbord-clip-art-table-dinner-5b16fd1d41b920.5112634015282332452692.png" alt="display-macbook1">
                        </div>
                        <div class="position-absolute w-100 mt-5" style="top:50px">
                            <form class="text-left" action="login.asp" method="post" runat="server" onsubmit="return checkAccout()">
                                <div class="p-4">
                                    <div class="text-center text-shadow text-xl mt-5" style="color: rgb(248, 40, 40);"><b>Đăng nhập</b></div>
                                    <div class="form-group mt-4">
                                        <input id="check-username" name="username" width="100%" type="text" placeholder="Tên đăng nhập/Email" class="form-control rounded-20">
                                      </div>
                                      <div class="form-group mt-4">
                                       <input id="check-password" name="password" width="100%" type="password" placeholder="Mật khẩu" class="form-control rounded-20">
                                      </div>
                                      <div class="form-group text-right mt-4">
                                        <button runat="server" type="submit" class="btn btn-danger my-2 my-sm-0 btn-app border-0 ml-1"><i class="fas fa-sign-in-alt"></i>&nbsp;&nbsp;Đăng nhập</button>
                                      </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div> 
            </div>
            <div class="col-md-6">
                <div class="row align-items-center flex-md-nowrap">
                    <div class="col-md-6 text-lg">
                        <h1 class="mb-4 text-app">Nhóm 8</h1>
                        <div class=" ml-3 font-weight-bold">
                            <p>Nguyễn Đức Anh - 4363</p>
                            <p>Hoàng Phú Cường - 24363</p>
                            <p>Bùi thành Công - 24363</p>
                        </div>
                    </div>
                    <img src="image/9.-NUCE.png" alt="" class="w-100 col-md-6 shadow-5">
                </div>
            </div>
        </div>
    </div>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<% 
Session("isLogin") = ""
dim account, password
account = Request.form("username")
password = request.form("password")
set rs = Server.CreateObject("ADODB.recordset")
dim isFalse 
function checkAccout()
        rs.Open "Select * from ACCOUNT", connDB
        do until rs.EOF  
            if account = rs.Fields.Item("Ten_TK") Then 
                if password = rs.Fields.item("MatKhau") Then
                    Session("isLogin")="Wellcome " + account
                    response.redirect "index.asp"
                end if
            else 
            Session("isLogin")=""
            End if
        rs.MoveNext
        loop
        rs.close   
    end function
checkAccout()
%>
</body>
</html>