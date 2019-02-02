<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <!-- <link rel="shortcut icon" href="img/2012.png" type="image/png"> -->
<title>{$title}</title>
<!-- <link rel="stylesheet" type="text/css" href="css/style.css" /> -->
<script type="text/javascript" src="jscript/myscript.js"></script>
<!-- <script type="text/javascript" src="jscript/jquery-1.11.0.min.js"></script> -->

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container-fluid" id="container">
	{include file="header.tpl"}
		
		<div id="navigation">
		<div id="nabigButtons">
		<!--  
			<span id="btl-panel-login" class="btl-modal">Войти</span>
			<span id="btl-panel-registration" class="btl-modal">Регистрация</span>
		-->
		</div>
		</div>
		<!-- end navigation -->

		{include file="menu.tpl"}
		
		<div id="content">
			{include file="$contentPage.tpl"}

		</div>
		<div id="clear"></div>
		<!-- end content -->
		{include file='footer.tpl'}
		</div>
	<!-- end container -->
</body>
</html>