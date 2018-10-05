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
<title>Super Market an Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Transaction :: w3layouts</title>
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
<jsp:include page="Aheader.jsp"/>
<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Pay Invoice Page</li>
			</ol>
		</div>
		<div class="payment-w3ls">	
						<img src="images/card.png" alt=" " class="img-responsive">
					</div>
	</div>
<!-- //breadcrumbs -->
<!-- register -->
	<div class="register">
	
		<div class="container">
			<h2>Pay Invoice</h2>
			<div class="login-form-grids">
			<%
					String total=request.getParameter("total");
					String username=(String) session.getAttribute("username");
			%>
				<h5>Payment Amount:<%=total%></h5>
				<form action="trasactionDone" method="post">
					
					
					<input type="text" placeholder="Name On Card..." name="NameOnCard" required>
					<input type="text" placeholder="Card Number..." name="CardNumber" required>
					<input type="text" placeholder="Expiry Date...    eg. MM/YY " name="Expirydate" required>
					<input type="text" placeholder="Mobile Number..." name="MobileNumber" required>
					<input type="password" placeholder="Security Code..." name="Securitycode" required>
					<br>
					<input type="text" placeholder="Zip/Postal code" name="zippostalcode" required>
					<div class="register-check-box">
						<div class="check">
							<label class="checkbox"><input type="checkbox" name="checkbox"><i> </i>I accept the terms and conditions</label>
						</div>
					</div>
					<input type="submit" value="Proceed for trasaction">
				</form>
			</div>
			<div class="checkout-right">
				<table class="timetable_sub">
					<thead>
						<tr>	
							<th>Product</th>
							<th>Quantity</th>
							<th>Product Name</th>
						
							<th>Price</th>
						</tr>
					</thead>
					<%
							try{
									//int total=0;
									//String username=(String) session.getAttribute("username");
									DatabaseConnection db1 = new DatabaseConnection();
									db1.dbconnection();
									String query1 = "select * from addcart where UserName='"+username+"'";
									ResultSet rs1 = (ResultSet) db1.getResultSet(query1);
			
									while(rs1.next())
									{
										
									String id = rs1.getString("id");
									String pname = rs1.getString("ProductName");
									//String str = pname.substring(0, 10)+"...";
									String image1 = rs1.getString("pimage");
									String pprice = rs1.getString("ProductPrice");
									int getprice=Integer.parseInt(pprice);
									total=total+getprice;
									//String pstock = rs.getString("pstock");
									String quantity = rs1.getString("quantity");
									//int stock = Integer.parseInt(pstock);
						%>
					<tr class="rem1">
						
						<td class="invert-image"><a href="ProductReview.jsp"><img src="Admin/Product/<%=image1%>" alt=" " class="img-responsive" /></a></td>
						<td class="invert">
							 <div class="quantity"> 
								<div class="quantity-select">                           
									<div class="entry value-minus">&nbsp;</div>
									<div class="entry value"><span>1</span></div>
									<div class="entry value-plus active">&nbsp;</div>
								</div>
							</div>
						</td>
						<td class="invert"><%=pname%></td>
						
						<td class="invert"><%=pprice%></td>
					</tr>
					<%

						}
					%>
								<!--quantity-->
									<script>
									$('.value-plus').on('click', function(){
										var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
										divUpd.text(newVal);
									});

									$('.value-minus').on('click', function(){
										var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
										if(newVal>=1) divUpd.text(newVal);
									});
									</script>
								<!--quantity-->
				</table>
				
			</div>
			<div class="register-home">
				<a href="index.jsp">Home</a>
			</div>
			<%
					}
						catch(Exception e)
						{
							e.printStackTrace();
						}
				%>
		</div>
				
		
	</div>
<!-- //register -->
<!-- //footer -->
<jsp:include page="footer.jsp"/>
<!-- //footer -->	
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<!-- top-header and slider -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
<script src="js/minicart.min.js"></script>
<script>
	// Mini Cart
	paypal.minicart.render({
		action: '#'
	});

	if (~window.location.search.indexOf('reset=true')) {
		paypal.minicart.reset();
	}
</script>
<!-- main slider-banner -->
<script src="js/skdslider.min.js"></script>
<link href="css/skdslider.css" rel="stylesheet">
<script type="text/javascript">
		jQuery(document).ready(function(){
			jQuery('#demo1').skdslider({'delay':5000, 'animationSpeed': 2000,'showNextPrev':true,'showPlayButton':true,'autoSlide':true,'animationType':'fading'});
						
			jQuery('#responsive').change(function(){
			  $('#responsive_wrapper').width(jQuery(this).val());
			});
			
		});
</script>	
<!-- //main slider-banner --> 

</body>
</html>