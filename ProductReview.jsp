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
<style>
		#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #ddd;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #333333;
    color: white;
}
	</style>
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
<jsp:include page="Aheader.jsp"/>
<!-- //header -->
<!-- navigation -->	
<!-- //navigation -->
<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index1.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Product Detail And Review</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!--- groceries --->
	<div class="products">
	<%
	String productid=request.getParameter("productid");
	String productname=request.getParameter("productname");
	if(productid==null)
	{
		productid = (String) session.getAttribute("productid");
		productname = (String) session.getAttribute("productname");
		if(productid==null)
		{
			productid="1";
			//subcat="1";
		}
	}
	%>
	<div class="products">
		<div class="container">
			<div class="agileinfo_single">
			<%				
							String username=(String) session.getAttribute("username");
							System.out.println(username);
							DatabaseConnection db = new DatabaseConnection();
							db.dbconnection();
							ResultSet rs = null;
							int i=0;							
							String sql="Select * from products Where id='"+productid+"'";
							rs=db.getResultSet(sql);
												
							while(rs.next())
							{
								String id = rs.getString("id");
								String pname = rs.getString("pname");
								String str = pname.substring(0, 10)+"...";
							String image1 = rs.getString("image1");
							String pprice = rs.getString("pprice");
							String pstock = rs.getString("pstock");
							String description = rs.getString("description");
							int stock = Integer.parseInt(pstock);
						%>	
				<div class="col-md-4 agileinfo_single_left">
					<img id="example" src="Admin/Product/<%=image1%>" alt=" " class="img-responsive">
				</div>
				<div class="col-md-8 agileinfo_single_right">
				<h2><%=pname%></h2>
					<div class="rating1">
						<span class="starRating">
							<input id="rating5" type="radio" name="rating" value="5">
							<label for="rating5">5</label>
							<input id="rating4" type="radio" name="rating" value="4">
							<label for="rating4">4</label>
							<input id="rating3" type="radio" name="rating" value="3" checked="">
							<label for="rating3">3</label>
							<input id="rating2" type="radio" name="rating" value="2">
							<label for="rating2">2</label>
							<input id="rating1" type="radio" name="rating" value="1">
							<label for="rating1">1</label>
						</span>
					</div>
					<div class="w3agile_description">
						<h4>Description :</h4>
						<p><%=description%>.</p>
					</div>
					<div class="snipcart-item block">
						<div class="snipcart-thumb agileinfo_single_right_snipcart">
							<h4 class="m-sing">Rs.<%=pprice%></h4>
						</div>
						<div class="snipcart-details agileinfo_single_right_details">
							<form action="Addcart" method="post">
								<fieldset>
									<input type="hidden" name="UserName" value="<%=username%>">
									<input type="hidden" name="quantity" value="1">
									<input type="hidden" name="productid" value="<%=productid%>">
									<input type="hidden" name="product_name" value="<%=pname%>">
									<input type="hidden" name="amount" value="<%=pprice%>">
									<input type="hidden" name="productimage" value="<%=image1%>">
									<input type="submit" name="submit" value="Add to cart" class="button">
								</fieldset>
							</form>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		
							
	</div>
		<div class="container">
				<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					<ul id="myTab" class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#expeditions" id="expeditions-tab" role="tab" data-toggle="tab" aria-controls="expeditions" aria-expanded="true">This Product All Review</a></li>
						<li role="presentation"><a href="#tours" role="tab" id="tours-tab" data-toggle="tab" aria-controls="tours">Take Review</a></li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade in active" id="expeditions" aria-labelledby="expeditions-tab">
							<div class="agile-tp">
							
								<h5>This Product Review Detail</h5>
								<p class="w3l-ad"><%=pname%></p>
							</div>
							<div class="agile_top_brands_grids">
						
									<div class="col-md-12 top_brand_left">
						<table id="customers">
			<tr>
				<th>User Name</th>
				<th> Email Address</th>
				<th>User Statement</th>
				<th>DateTime</th>
				<th>Reporting</th>	
			</tr>
		<%
			try{
			DatabaseConnection db1 = new DatabaseConnection();
			db1.dbconnection();
			
			String query1 = "select * from userreview where Productid='"+productid+"'";
			ResultSet rs1 = (ResultSet) db.getResultSet(query1);
			
			while(rs1.next())
			{
			%>
			<tr>
				<td><%=rs1.getString("UserName") %></td>
				<td><%=rs1.getString("Emailid") %></td>
				<td><%=rs1.getString("statement") %></td>
				<td><%=rs1.getString("DateTime") %></td>
				<td class="invert">
							<div class="rem">
							<form action="UserReport" method="post">
								<input type="hidden" name="productid" value="<%=rs1.getString("Productid")%>">
								<input type="hidden" name="UserName" value="<%=rs1.getString("UserName")%>">
								<input type="hidden" name="Emailid" value="<%=rs1.getString("Emailid")%>">
								<input type="hidden" name="statement" value="<%=rs1.getString("statement")%>">
								<input type="hidden" name="ReportingUser" value="<%=username%>">
								
								<input style="height: 28px; width: 100px;color:white; background-color: #333333;" type="submit" value="Reporting">
							</form>	
							</div>
						</td>
			</tr>
			<%

			}
			%>
		</table>
		<%
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		%>
			
						<div class="clearfix"> </div>
					</div>
							
								
								<div class="clearfix"> </div>
								
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="tours" aria-labelledby="tours-tab">
							<div class="agile-tp">
								<h5>Give Review</h5>
								<p class="w3l-ad"><%=pname%></p>
							</div>
							<div class="agile_top_brands_grids">
								<div class="login-form-grids">
								
				<h5>Review Form</h5>
				<form action="SaveReview" method="post">
					<input type="hidden" name="productid" value="<%=id%>">
					<input type="text" name="UserName" placeholder="User Name..." required>
					<br></br>
					<input type="email" name="UserEmailid" placeholder="Email Name..." required>
					<br></br>
					<textarea style="height:100px ; width:395px ; border-color: #000000"  name="Statement" placeholder="Statement..." required></textarea>
					<input type="submit" value="Submit">
				</form>
			</div>
								<div class="clearfix"> </div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		<%
			}
		%>
			<div class="clearfix"> </div>
<!--- groceries --->
<!-- //footer -->
<br></br>
<br></br>
<br></br>
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