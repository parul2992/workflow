
<%@page import="com.Implementation.ImplementaionClass"%>
<%@page import="com.Interface.MyInterface"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%@page import="com.DataBaseConnection.DBConnection"%>


<!DOCTYPE html>
<!-- 
Conquer Template
http://www.templatemo.com/preview/templatemo_426_conquer
-->
<head>
<title>WorkFlow Scheduler</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta charset="utf-8">
<meta name="viewport" content="initial-scale=1">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,700italic,400,600,700,800' rel='stylesheet' type='text/css'>
<!-- Style Sheets -->
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/templatemo_misc.css">
<link rel="stylesheet" href="css/templatemo_style.css">
<link rel="stylesheet" href="css/styles.css">
<!-- JavaScripts -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap-dropdown.js"></script>
<script src="js/bootstrap-collapse.js"></script>
<script src="js/bootstrap-tab.js"></script>
<script src="js/jquery.singlePageNav.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/custom.js"></script>
<script src="js/jquery.lightbox.js"></script>
<script src="js/templatemo_custom.js"></script>
<script src="js/responsiveCarousel.min.js"></script>
</head>
<body>
<!-- header start -->
<div id="templatemo_home_page">
  <div class="templatemo_topbar">
    <div class="container">
      <div class="row">
        <div class="templatemo_titlewrapper"><img src="images/templatemo_logobg.png" alt="logo background">
          <div class="templatemo_title"><span>WorkFlow Scheduler</span></div>
        </div>
        <div class="clear"></div>
        <div class="templatemo_titlewrappersmall">WorkFlow Scheduler</div>
        <nav class="navbar navbar-default templatemo_menu" role="navigation">
          <div class="container-fluid"> 
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"><span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div id="top-menu">
              <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                  <li><a class="menu" href="index.jsp">Home</a></li>
                   
<!--                       <li><a class="menu" href="UserLogin.jsp">User</a></li> -->
<!--                        <li><a class="menu" href="ProviderLogin.jsp">Cloud Provider</a></li> -->
 <li><a class="menu" href="ProviderWelocomepage.jsp">Back</a></li>
<!--                   <li><a class="menu" href="#templatemo_service_page">Services</a></li> -->
<!--                   <li><a class="menu" href="#templatemo_work_page">Projects</a></li> -->
<!--                   <li><a class="menu" href="#templatemo_team_page">Our Team</a></li> -->
                  <li><a class="menu" href="ProviderWelocomepage.jsp">Logout</a></li>
                </ul>
              </div>
            </div>
            <!-- /.navbar-collapse --> 
          </div>
          <!-- /.container-fluid --> 
        </nav>
        <div class="clear"></div>
      </div>
    </div>
  </div>
  <div class="templatemo_headerimage">
    <div class="flexslider">
      <ul class="slides">

        <li><img src="images/slider/wrkflw.png" alt="Slide 3"></li>
  
        
      </ul>
    </div>
  </div>


      <div class="clear"></div>
      <nav class="slidernav">
        <div id="navbtns" class="clearfix"><a href="#" ><img src="" alt="previous"></a> <a href="#" class="next"><img src="" ></a></div>
      </nav>
    </div>
    <script>
	$(function() {
		$('.crsl-items').carousel({
			visible: 4,
			itemMinWidth: 180,
			itemEqualHeight: 370,
			itemMargin: 9,
		});
		$("a[href=#]").on('click', function(e) {
			e.preventDefault();
		});
	});
    </script>
 
 
 
  <h1>AVAILABLE REQUEST DETAILS</h1>
      
      <br>

     
      <br>
      <br>
      
      
     
      
			<%
			//String ftitile=request.getParameter("FileTitile");
			
			System.out.println("----------->All Values Comming");				
							
			DBConnection dd=new DBConnection();
			
			Connection c=dd.con();
			
			
			PreparedStatement ps=(PreparedStatement)c.prepareStatement("SELECT userid,username,country,status FROM `workflowscheduling`.`userregistration`");
			//UPDATE workflowscheduling.userregistration u SET ;
			PreparedStatement ps1=(PreparedStatement)c.prepareStatement("SELECT filetitle,bankname,branch,acNo,Name,country FROM `workflowscheduling`.`userfilleddetails`");
			
			ResultSet rs=ps.executeQuery();
			
			ResultSet rs1=ps1.executeQuery();
			
			%>
			
			
 <table border="2" style="position:relative;left:10px; background-color:#bfff00">
			
		
                  <tr>

<!-- 				<th>UserId</th> -->
				<th>User Name</th>
				<th>Country</th>
				<th>File Titile</th>
<!-- 				<th>Amount</th> -->
				<th>Bank Name</th>
				<th>Branch Name</th>
				<th>A/C No</th>


				<th width="110px">  Status</th>
                  
                   
                   </tr>
                  
			
			
			
			
		<% 
while(rs.next())
{
	String userid=rs.getString(1);
	
	String username=rs.getString(2);
	String Country=rs.getString(3);
String status=rs.getString(4);

			%>
			<% 
while(rs1.next())
{
	
	String filetitile=rs1.getString(1);
// 	String cash=rs1.getString(2);
	String BankName=rs1.getString(2);
	String Branch=rs1.getString(3);
	
   String ACNo=rs1.getString(4);
   String username1=rs1.getString(5);
	String country1=rs1.getString(6);

			
			%>
               
                <tr>
<%--                    <td height="50"><%= userid%></td>  --%>
                   <td><%=username1 %></td> 
                   <td><%=country1 %>	</td>
                   
                   
                   
                   <td><%=filetitile %></td>
<%--                    <td><%=cash %></td> --%>
                   <td><%=BankName %></td>
                   <td><%=Branch %></td>
                    <td><%=ACNo %></td>
<%--                     <td style="position:relative;background-color:#00CED1"><%=status %></td> --%>
                      <td style="position:relative;background-color:#00CED1">Status Accept SendWork Successfully</td>
<!--                     <td><a href="">Status</a></td> -->
                   </tr>
                  <%} %>	   	
			
			 <%} %>	   
				

      </table>

 
 
 
 

<div class="templatemo_footerwrapper">
  <div class="container">
    <div class="row">
      <div class="col-md-12">Copyright &copy; 2017 <a href="#">True Solution</a> | Design: <a href="http://www.templatemo.com">templatemo</a></div>
    </div>
  </div>
</div>
<!-- footer end --> 
<script>
<!-- scroll to specific id when click on menu -->
// Cache selectors
var lastId,
    topMenu = $("#top-menu"),
    topMenuHeight = topMenu.outerHeight() + 15,
    // All list items
    menuItems = topMenu.find("a"),
    // Anchors corresponding to menu items
    scrollItems = menuItems.map(function() {
        var item = $($(this).attr("href"));
        if (item.length) {
            return item;
        }
    });
// Bind click handler to menu items
// so we can get a fancy scroll animation
menuItems.click(function(e) {
    var href = $(this).attr("href"),
        offsetTop = href === "#" ? 0 : $(href).offset().top - topMenuHeight + 1;
    $('html, body').stop().animate({
        scrollTop: offsetTop
    }, 300);
    e.preventDefault();
});
// Bind to scroll
$(window).scroll(function() {
    // Get container scroll position
    var fromTop = $(this).scrollTop() + topMenuHeight;
    // Get id of current scroll item
    var cur = scrollItems.map(function() {
        if ($(this).offset().top < fromTop)
            return this;
    });
    // Get the id of the current element
    cur = cur[cur.length - 1];
    var id = cur && cur.length ? cur[0].id : "";
    if (lastId !== id) {
        lastId = id;
        // Set/remove active class
        menuItems
            .parent().removeClass("active")
            .end().filter("[href=#" + id + "]").parent().addClass("active");
    }
});
</script>
</body>
</html>