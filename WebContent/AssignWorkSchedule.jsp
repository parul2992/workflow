<!DOCTYPE html>
<!-- 
Conquer Template
http://www.templatemo.com/preview/templatemo_426_conquer
-->
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.DataBaseConnection.DBConnection"%>
<%@page import="java.sql.Connection"%>
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

        <li><img src="images/slider/3.jpg" alt="Slide 3"></li>
  
        
      </ul>
    </div>
  </div>


      <div class="clear"></div>
      <nav class="slidernav">
        <div id="navbtns" class="clearfix"><a href="#" class="previous"><img src="images/slideitmoo_back.png" alt="previous"></a> <a href="#" class="next"><img src="images/slideitmoo_forward.png" alt="next"></a></div>
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
    
    <%
    Connection con=DBConnection.con();
    String query="SELECT filename FROM `workflowscheduling`.`workloaddetails`";
    PreparedStatement ps=con.prepareStatement(query);
    ResultSet rs=ps.executeQuery();
    
    
    %>
    
    
    
    
    
    
    
 
<center>
      <form action="AssignWorkSchedule" method="post">
      
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User id:<input type="text" name="uid"  placeholder="User Id"><br>
        User  Name:<input type="text" name="uname"  placeholder="User Name"><br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Title Id:<input type="text" name="Titleid"  placeholder="Title Id"><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  File Title:<input type="text" name="filetitile"  placeholder="File Title"><br>
        
        
       
           &nbsp;&nbsp;&nbsp; File Name:<select name="filename">
            
            <option value="">----- Select Filename -----</option>
            <%while(rs.next()) {%>
           <option value="<%= rs.getString(1)%>"><%= rs.getString(1)%></option>
           <%} %>
           </select><br>
            Content Type<input type="text" name="contenttype"  placeholder=" Content Type"><br><br>
        <div class="col-md-9">
          <div class="col-md-4">
        FromDate   <input type="date" name="fromdate" id="fDate" class="date" placeholder="From Date">
          </div>
          <div class="col-md-4">
        LastDate  <input type="date" name="todate" id="tdate" class="date" placeholder="To Date">
          </div><br><br><br>
<!--           <div class="col-md-4"> -->
<!--             <input type="text" name="subject" id="subject" class="subject" placeholder="Subject"> -->
<!--           </div> -->
<!--           <div class="col-md-12"> -->
<!--             <textarea name="message" cols="1" rows="1" class="message" placeholder="Your message... " id="message"></textarea> -->
<!--           </div> --> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <div class="col-md-4">
  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<input type="submit" name="send" value="Send Work" id="submit" class="button templatemo_sendbtn">
          </div>
        </div>
      </form>
  </center>
<!-- contact end --> 
<!-- footer start -->
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