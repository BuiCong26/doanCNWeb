<nav class="navbar navbar-expand-md btn-app text-white">
        
  <div class="text-left d-flex align-items-center btn-app"> 
    <div class="text-md text-white font-weight-bold ml-2 mb-2" style="font-size: 2.5rem;">
        <span style="font-size: 2.5rem;">Nhóm </span>
    </div>
    <img class="m-2" src="image/group 8.png" alt="Logo" style="width:60px;">
  </div>
  <a style="font-size: 30px; margin-top: -5px;" class="navbar-brand d-md-block d-none text-white ml-4" href="#"> Quản lý đặt bàn</a>

  <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>

  <!-- Navbar links -->
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link text-white zoom-20 mr-4" href="#">Home</a>
      </li>
        <a class="nav-link text-white zoom-20 mr-4" href="#">Đặt bàn</a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-white zoom-20 mr-4" href="#">Hóa đơn</a>
      </li>
    </ul>
  </div>
  <div class="dropdown">
      <button class="btn bg-transparent border-0 dropdown-toggle text-white outline-0" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <% checkIsLogin() %>
      </button>
      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="#">Action</a>
        <a class="dropdown-item" href="#">About us</a>
        <a class="dropdown-item" href="#" onclick="window.location.href = '/logout.asp'">Đăng xuất</a>
      </div>
    </div>
</nav>