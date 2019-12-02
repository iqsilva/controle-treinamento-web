<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!--======== All Stylesheet =========-->
		<link href="Ranger/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="Ranger/css/font-awesome.min.css" rel="stylesheet">
		<link href="Ranger/css/linearicons.css" rel="stylesheet">
       	<link rel="stylesheet" href="css/style.css">
        <!--=== plugins ===-->
        <link href="Ranger/css/owl.carousel.css" rel="stylesheet">
        <link href="Ranger/css/owl.theme.css" rel="stylesheet">
        <!--=== end plugins ===-->
		<link href="Ranger/css/style.css" rel="stylesheet">
		<link href="Ranger/css/responsive.css" rel="stylesheet">
		<!--=== JavaScript ===-->
		<script src='http://code.jquery.com/jquery-1.7.min.js' type='text/javascript'/></script>
		<script type='text/javascript'>
			jQuery("document").ready(function($){
			var nav = $('.navbar navbar-default default-menu menu-4');
			$(window).scroll(function () {
			if ($(this).scrollTop() > 168) {
			nav.addClass("navbar-header");
			} else {
			nav.removeClass("navbar-header");
			}
			});
			});
		</script>
		<!--=== end JavaScript ===-->
<!--======== header =========-->
<header>
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <!-- menu 4 -->
                    <div class="navbar navbar-default default-menu menu-4" role="navigation">
                        <div class="container">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu-4" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand default-logo" href="index.html" >								
								<img src="Ranger/images/logo.png" width="60px" alt="" />
								</a>
                            </div>
                        </div>
                    </div><!-- end menu -->
                </div>
            </div>            
        </header>
<style>
body {
  background: #fff;
  color: #666666;
  font-family: 'RobotoDraft', 'Roboto', sans-serif;
  font-size: 14px;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

/* Form Module */
.form-module {
  position: relative;
  background: #ffffff;
  max-width: 320px;
  width: 100%;
  margin: 0 auto;
  height:93%;
}

.form-module .toggle .tooltip {
  position: absolute;
  top: 5px;
  right: -65px;
  display: block;
  background: rgba(0, 0, 0, 0.6);
  width: auto;
  padding: 5px;
  font-size: 10px;
  line-height: 1;
  text-transform: uppercase;
}
.form-module .toggle .tooltip:before {
  content: '';
  position: absolute;
  top: 5px;
  left: -5px;
  display: block;
  border-top: 5px solid transparent;
  border-bottom: 5px solid transparent;
  border-right: 5px solid rgba(0, 0, 0, 0.6);
}
.form-module .form {
  display: none;
  padding-top:50px;
  /*padding: 40px;*/
}
.form-module .form:nth-child(2) {
  display: block;
}
.form-module h2 {
  margin: 0 0 20px;
  color: #33b5e5;
  font-size: 18px;
  font-weight: 400;
  line-height: 1;
}
.form-module input {
  outline: none;
  display: block;
  width: 100%;
  border: 1px solid #d9d9d9;
  margin: 0 0 20px;
  padding: 10px 15px;
  box-sizing: border-box;
  font-wieght: 400;
  -webkit-transition: 0.3s ease;
  transition: 0.3s ease;
}
.form-module input:focus {
  border: 1px solid #33b5e5;
  color: #333333;
}
.form-module button {
  cursor: pointer;
  background: #33b5e5;
  width: 100%;
  border: 0;
  padding: 10px 15px;
  color: #ffffff;
  -webkit-transition: 0.3s ease;
  transition: 0.3s ease;
}
.form-module button:hover {
  background: #178ab4;
}
.form-module .cta {
  background: #f2f2f2;
  width: 100%;
  padding: 15px 40px;
  box-sizing: border-box;
  color: #666666;
  font-size: 12px;
  text-align: center;
}
.form-module .cta a {
  color: #333333;
  text-decoration: none;
}

</style>
<div class="module form-module">
  <div class="toggle">
  </div>
  <div class="form" method="post" action="vl_login.jsp">
  <form method="post" action="vl_login.jsp">
    <img src="imgs/logo.png" width="110%" height="auto">
    </br>
	</br>
	</br>
	<form>
      <input type="text" name="txt_usuario" id="txt_usuario" placeholder="Usuário"/>
      <input type="password" name="txt_senha" id="txt_senha" placeholder="Senha"/>
      <button type="submit">Entrar</button>
    </form>
  </div>
</div>
<%@include file="footer.jsp" %>