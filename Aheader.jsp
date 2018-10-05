<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page import="databaseconnection.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<title>Super Market an E-commerce Online Shopping and Market Forecasting and Fake product review system</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Super Market Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
</head>
	
<body>
<!-- header -->
	<div class="agileits_header">
		<div class="container">
			<div class="w3l_offers">
				<p>MARKET FORECASTING AND FAKE PRODUCT REVIEW DETECTION SYSTEM. <a href="products.jsp">SHOP NOW</a></p>
			</div>
			<div class="agile-login">
				<ul>
					<li><a href="index.jsp">Logout</a></li>
					<li><a href="checkout.jsp">Checkout</a></li>
					<li><a href="contact.jsp">Help</a></li>
					
				</ul>
			</div>
			<div class="product_list_header">  
					<form action="#" method="post" class="last"> 
						<input type="hidden" name="cmd" value="_cart">
						<input type="hidden" name="display" value="1">
						<button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
					</form>  
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>

	<div class="logo_products">
		<div class="container">
		<div class="w3ls_logo_products_left1">
				<ul class="phone_email">
					<li><i class="fa fa-phone" aria-hidden="true"></i>Order online or call us : (+0123) 234 567</li>
					
				</ul>
			</div>
			<div class="w3ls_logo_products_left">
				<h1><a href="index.jsp">super Market</a></h1>
			</div>
		<div class="w3l_search">
			<form action="#" method="post">
				<input type="search" name="Search" placeholder="Search for a Product..." required="">
				<button type="submit" class="btn btn-default search" aria-label="Left Align">
					<i class="fa fa-search" aria-hidden="true"> </i>
				</button>
				<div class="clearfix"></div>
			</form>
		</div>
			
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->
<!-- navigation -->
	<div class="navigation-agileits">
		<div class="container">
			<nav class="navbar navbar-default">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header nav_2">
								<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div> 
							<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
								<ul class="nav navbar-nav">
									<li class="active"><a href="index.jsp" class="act">Home</a></li>	
									<!-- Mega Menu -->
									<li class="dropdown">
									<%
											DatabaseConnection db = new DatabaseConnection();
											db.dbconnection();
											ResultSet rs = null;
											
												String sql="Select * from category where id=1";
												rs=db.getResultSet(sql);
												
												if(rs.next())
												{
													String id = rs.getString("id");
													String cname1 = rs.getString("cname");
											%>
										<a href="#" class="dropdown-toggle" data-toggle="dropdown"><%=cname1%><b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6><%=cname1%></h6>
												<%
												String sql1="Select * from subcat Where cat='"+id+"'";
												ResultSet rs1=db.getResultSet(sql1);
												
													while(rs1.next())
													{
														String sid = rs1.getString("id");
														String subcname = rs1.getString("subname");
												%>
														<li><a href="Products.jsp?cat=<%=id%>&subcat=<%=sid%>"><%=subcname%></a></li>
												<%
													}
												%>
													</ul>
												</div>	
												
											</div>
										</ul>
										<%
												}
										%>
									</li>
									<li class="dropdown">
										<%
											//DatabaseConnection db = new DatabaseConnection();//
											db.dbconnection();
											ResultSet rs2 = null;
											
												String sql2="Select * from category where id=2";
												rs2=db.getResultSet(sql2);
												//System.out.println(sql2);
												if(rs2.next())
												{
													String id2 = rs2.getString("id");
													String cname2 = rs2.getString("cname");
											%>
										<a href="#" class="dropdown-toggle" data-toggle="dropdown"><%=cname2%><b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6><%=cname2%></h6>
												<%
												String sql3="Select * from subcat Where cat='"+id2+"'";
												ResultSet rs3=db.getResultSet(sql3);
												
													while(rs3.next())
													{
														String sid2 = rs3.getString("id");
														String subcname = rs3.getString("subname");
												%>
														<li><a href="Products.jsp?cat=<%=id2%>&subcat=<%=sid2%>"><%=subcname%></a></li>
												<%
													}
												%>
													</ul>
												</div>	
												
											</div>
										</ul>
										<%
												}
										%>
									</li>
									<li class="dropdown">
										<%
											//DatabaseConnection db = new DatabaseConnection();//
											db.dbconnection();
											ResultSet rs4 = null;
											
												String sql4="Select * from category where id=3";
												rs4=db.getResultSet(sql4);
												//System.out.println(sql2);
												if(rs4.next())
												{
													String id2 = rs4.getString("id");
													String cname2 = rs4.getString("cname");
											%>
										<a href="#" class="dropdown-toggle" data-toggle="dropdown"><%=cname2%><b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6><%=cname2%></h6>
												<%
												String sql3="Select * from subcat Where cat='"+id2+"'";
												ResultSet rs3=db.getResultSet(sql3);
												
													while(rs3.next())
													{
														String sid2 = rs3.getString("id");
														String subcname = rs3.getString("subname");
												%>
														<li><a href="Products.jsp?cat=<%=id2%>&subcat=<%=sid2%>"><%=subcname%></a></li>
												<%
													}
												%>
													</ul>
												</div>	
												
											</div>
										</ul>
										<%
												}
										%>
									</li>
									<li><a href="contact.jsp">Contact</a></li>						
								</ul>
							</div>
							</nav>
			</div>
		</div>
		
<!-- //navigation -->

</body>
</html>