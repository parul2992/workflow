
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
                  <li><a class="menu" href="#templatemo_service_page">Services</a></li>
                  <li><a class="menu" href="#templatemo_work_page">Projects</a></li>
                  
                  <li><a class="menu" href="ProviderWelocomepage.jsp">Logout</a></li>
                  
<!--                   <li><a class="menu" href="#templatemo_team_page">Our Team</a></li> -->
<!--                   <li><a class="menu" href="#templatemo_contact_page">Contact</a></li> -->
                </ul>
              </div>
            </div>
           
          </div>
        
        </nav>
        <div class="clear"></div>
      </div>
    </div>
  </div>
  <div class="templatemo_headerimage">
    <div class="flexslider">
      <ul class="slides">




<div class="templatemo_team_wrapper" id="templatemo_team_page">
  <div class="container">
    <div class="row">
    <p><font face="verdana" color="#7B68EE"><h3> <marquee scrollamount="5" width="40"></marquee> FILE WORKLOAD
      <marquee scrollamount="5" direction="right" width="40"></marquee></h3></font>
     
      
      
      
      <form action="#" method="post" enctype="multipart/form-data"><br>
      
    &nbsp;&nbsp;&nbsp;&nbsp; FileId:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="fileid" ><br><br>
     
      FileTitle:<select name="FileTitile" id="cc"> <option >Select</option>
    <option value="DataMining">Data Mining</option>
    <option value="NetWorking">Net Working</option>
    <option value="CloudComputing">Cloud Computing</option>
    <option value="MobileComputing">Mobile Computing</option>
</select><br><br>
      
      
     
      Cash: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="cash" id="cash">        <br>
      
     FileNmae:<input type="text" name="filename">  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
      <center>   <input type="file" name="file"></center><br>
      
    <input type="submit" value="SUBMIT">      
       <marquee behavior="alternate" style="color: green;">ALL Work Details Filled Perfectly</marquee>
      
      </form>      <br>
    
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
      <p><font face="verdana" color="#008B8B"><h4> <marquee scrollamount="5" width="40"></marquee>View Requests
      <marquee scrollamount="5" direction="right" width="40"></marquee></h4></font>
      
       <form action="WorkLoadDetails.jsp" method="post">
      FileTitle <select name="FileTitile" > <option >Select</option>
    <option value="DataMining">Data Mining</option>
    <option value="NetWorking">Net Working</option>
    <option value="CloudComputing">Cloud Computing</option>
    <option value="MobileComputing">Mobile Computing</option>
</select><br><br>
     <input type="submit" name="SUBMIT">
     </form>

      
      
      
      
      <div class="col-md-12 templatemo_workmargin"></div>
      <div id="w">
        <div class="crsl-items" data-navigation="navbtns">
          <div class="crsl-wrap">
            <div class="crsl-item"><img src="images/team/01.jpg" alt="person 1">
              <div class="templatemo_team_name">Mauris Luctus</div>
              <div class="templatemo_team_post">CEO</div>
              <div class="templatemo_social">
                <ul>
                  <li><a href="#"><span class="fa fa-facebook"></span></a></li>
                  <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                  <li><a href="#"><span class="fa fa-linkedin"></span></a></li>
                  <li><a href="#"><span class="fa fa-skype"></span></a></li>
                </ul>
              </div>
            </div>
            <!-- post #1 -->
            <div class="crsl-item"><img src="images/team/02.jpg" alt="person 2">
              <div class="templatemo_team_name">Etiam Massa</div>
              <div class="templatemo_team_post">Director</div>
              <div class="templatemo_social">
                <ul>
                  <li><a href="#"><span class="fa fa-facebook"></span></a></li>
                  <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                  <li><a href="#"><span class="fa fa-linkedin"></span></a></li>
                  <li><a href="#"><span class="fa fa-skype"></span></a></li>
                </ul>
              </div>
            </div>
            <!-- post #2 -->
            <div class="crsl-item"><img src="images/team/03.jpg" alt="person 3">
              <div class="templatemo_team_name">Mauris Luctus</div>
              <div class="templatemo_team_post">New Manager</div>
              <div class="templatemo_social">
                <ul>
                  <li><a href="#"><span class="fa fa-facebook"></span></a></li>
                  <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                  <li><a href="#"><span class="fa fa-linkedin"></span></a></li>
                  <li><a href="#"><span class="fa fa-skype"></span></a></li>
                </ul>
              </div>
            </div>
            <!-- post #3 -->
            <div class="crsl-item"><img src="images/team/04.jpg" alt="person 4">
              <div class="templatemo_team_name">Morbi Pulvinar</div>
              <div class="templatemo_team_post">Designer</div>
              <div class="templatemo_social">
                <ul>
                  <li><a href="#"><span class="fa fa-facebook"></span></a></li>
                  <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                  <li><a href="#"><span class="fa fa-linkedin"></span></a></li>
                  <li><a href="#"><span class="fa fa-skype"></span></a></li>
                </ul>
              </div>
            </div>
            <!-- post #4 -->
            <div class="crsl-item"><img src="images/team/05.jpg" alt="person 5">
              <div class="templatemo_team_name">Mauris Luctus</div>
              <div class="templatemo_team_post">Developer</div>
              <div class="templatemo_social">
                <ul>
                  <li><a href="#"><span class="fa fa-facebook"></span></a></li>
                  <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                  <li><a href="#"><span class="fa fa-linkedin"></span></a></li>
                  <li><a href="#"><span class="fa fa-skype"></span></a></li>
                </ul>
              </div>
            </div>
            <!-- post #5 -->
            <div class="crsl-item"><img src="images/team/06.jpg" alt="person 6">
              <div class="templatemo_team_name">Mauris Luctus</div>
              <div class="templatemo_team_post">Technical Staff</div>
              <div class="templatemo_social">
                <ul>
                  <li><a href="#"><span class="fa fa-facebook"></span></a></li>
                  <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                  <li><a href="#"><span class="fa fa-linkedin"></span></a></li>
                  <li><a href="#"><span class="fa fa-skype"></span></a></li>
                </ul>
              </div>
            </div>
            <!-- post #6 --> 
          </div>
          <!-- @end .crsl-wrap --> 
        </div>
        <!-- @end .crsl-items --> 
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
  </div>
</div>
<!-- team end -->
<div class="clear"></div>
<!-- contact start -->
<div class="templatemo_contactwrapper" id="templatemo_contact_page">
  <div class="container">
    <div class="row">
      <h1>Contact</h1>
    </div>
  </div>
  <div class="templatemo_contactmap">
    <div id="templatemo_map"></div>
  </div>
  <div class="container templatemo_contactmargin">
    <div class="row">
      <div class="col-md-3">
        <div class="templatemo_address_title">Mailing Address:</div>
        No 123, Duis in enim road, Sed sit amet arcu ut quam porttitor.
        <div class="clear"></div>
        <div class="templatemo_address_left">Call us:</div>
        <div class="templatemo_address_right">+001 333 000 1010<br>
          +002 666 000 2020</div>
        <div class="clear"></div>
        <div class="templatemo_address_left">Hot line:</div>
        <div class="templatemo_address_right">+009 000 999 0000</div>
        <div class="clear"></div>
        <div class="templatemo_address_left">Email us:</div>
        <div class="templatemo_address_right">admin@company.com<br>
          info@company.com</div>
      </div>
      <form action="#" method="post">
        <div class="col-md-9">
          <div class="col-md-4">
            <input type="text" name="name" id="name" class="name" placeholder="Your Name">
          </div>
          <div class="col-md-4">
            <input type="text" name="email" id="email" class="email" placeholder="Your Email">
          </div>
          <div class="col-md-4">
            <input type="text" name="subject" id="subject" class="subject" placeholder="Subject">
          </div>
          <div class="col-md-12">
            <textarea name="message" cols="1" rows="1" class="message" placeholder="Your message... " id="message"></textarea>
          </div>
          <div class="col-md-4">
            <input type="submit" name="send" value="Send Message" id="submit" class="button templatemo_sendbtn">
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
<!-- contact end --> 
<!-- footer start -->
<div class="templatemo_footerwrapper">
  <div class="container">
    <div class="row">
      <div class="col-md-12">Copyright &copy; 2084 <a href="#">True Solution</a> | Design: <a href="http://www.templatemo.com">templatemo</a></div>
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

<script type="text/javascript" src="js/Attributes.js"></script>
<script type="text/javascript" src="js/Workload.js"></script>


</body>
</html>