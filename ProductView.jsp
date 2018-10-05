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
<jsp:include page="header.jsp"/>
<!-- //header -->
<!-- navigation -->	
<!-- //navigation -->
<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index1.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Products</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!--- groceries --->
	<div class="products">
	<%
	String cat=request.getParameter("cat");
	String subcat=request.getParameter("subcat");
	if(cat==null)
	{
		cat = (String) session.getAttribute("cat");
		subcat = (String) session.getAttribute("subcat");
		if(cat==null)
		{
			cat="1";
			subcat="1";
		}
	}
	%>
	
		<div class="container">
				<div class="agile_top_brands_grids">
					
					<%
						DatabaseConnection db = new DatabaseConnection();
						db.dbconnection();
						ResultSet rs = null;
						int i=0;							
						String sql="Select * from products Where pcate='"+cat+"' and pscate='"+subcat+"'";
						rs=db.getResultSet(sql);
												
						while(rs.next())
						{
							String id = rs.getString("id");
							String pname = rs.getString("pname");
							String str = pname.substring(0, 10)+"...";
							String image1 = rs.getString("image1");
							String pprice = rs.getString("pprice");
							String pstock = rs.getString("pstock");
							//String discrioption = rs.getString("description");
							//String str1 = discrioption.substring(0, 20)+"...";
							int stock = Integer.parseInt(pstock);
						%>
					<div class="col-md-4 top_brand_left">
						<div class="hover14 column">
							<div class="agile_top_brand_left_grid">
								
								<div class="agile_top_brand_left_grid1">
									<figure>
										<div class="snipcart-item block">
											<div class="snipcart-thumb">
												<%-- <a href="ProductReview.jsp?productid=<%=id%>"> --%><img title="" alt="" src="Admin/Product/<%=image1%>"><!-- </a> -->		
												<p><%=str%></p>
												<h4>$<%=pprice%></h4>
											</div>
											
											<div class="snipcart-details top_brand_home_details">
												<p></p>
											</div>
										</div>
									</figure>
								</div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
							<%
								}
							%>
						
						<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
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