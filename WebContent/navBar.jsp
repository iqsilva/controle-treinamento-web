<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String username = (String)session.getAttribute("usuario");
	String senha = (String)session.getAttribute("senha");
	String id_usuario="";
	if(username!=null){
    	id_usuario = (String)session.getAttribute("id");
    }else{
    	response.sendRedirect("sair.jsp");
    }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Azul - Controle de Treinamento</title>
        
        <!--======== All Stylesheet =========-->
		<link href="Ranger/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="Ranger/css/font-awesome.min.css" rel="stylesheet">
		<link href="Ranger/css/linearicons.css" rel="stylesheet">
        <link href="estilos/estilo.css" rel="stylesheet">
        <!--=== plugins ===-->
        <link href="Ranger/css/owl.carousel.css" rel="stylesheet">
        <link href="Ranger/css/owl.theme.css" rel="stylesheet">
        <!--=== end plugins ===-->
		<link href="Ranger/css/style.css" rel="stylesheet">
		<link href="Ranger/css/responsive.css" rel="stylesheet">
		<!--=== JavaScript ===-->
		<script src="scripts/jquery.min.js"></script>
		<script src="scripts/bootstrap.js"></script>
		
		
		<script src="Ranger/js/jquery-2.1.1.js"></script>
		<script src="Ranger/bootstrap/js/bootstrap.min.js"></script>       
		<script src="Ranger/js/owl.carousel.min.js"></script>
		<script src="Ranger/js/custom.js"></script>
		
		
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
            <div class="row" style="width:100%;">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <!-- menu 4 -->
                    <div class="navbar navbar-default default-menu menu-4" role="navigation" style="width:100%;">
                        <div class="container">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu-4" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand default-logo" href="" >								
								<img src="Ranger/images/logo.png" width="60px" alt="" />
								</a>
                            </div>

                            <div class="collapse navbar-collapse" id="menu-4">
                                <ul class="nav navbar-nav navbar-right">
                                    <li class="active"><a class="scroll" href="portal.jsp">Cursos</a></li>
                                    <li><a class="scroll" href="espera.jsp">Cursos em Espera</a></li>
                                    <li><a class="scroll" href="cursando.jsp">Cursando</a>
                                    <li><a class="scroll" href="concluido.jsp">Cursos Concluídos</a></li>
									<li><a class="scroll" href="perfil.jsp">Perfil</a></li>
									<li><a class="scroll" href="sair.jsp">Sair</a></li>
                                </ul>
                            </div>
                        </div>
                    </div><!-- end menu -->
                </div>
            </div>            
</head>