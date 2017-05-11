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


<meta http-equiv="refresh" content="30; url=http://localhost:8080/WorkflowScheduling/Timeout.jsp" />



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


<script src="http://code.jquery.com/jquery-latest.min.js"></script>



<script type="text/javascript">
$(function() {
    $('.lightbox').lightBox();
});
</script>  

<script>
   var i=30;
   
   
   function timer12()
   {
      var x=document.getElementById("timer").innerHTML = i;
	  i--;
   }
   var m1=setInterval('timer12()',1000);
   function xx111()
   {
     clearInterval(m1);
	 
	 
   }
   
   setTimeout('xx111()',50000);
   
  
  </script> 





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
<!--                   <li><a class="menu" href="#templatemo_service_page">Services</a></li> -->
<!--                   <li><a class="menu" href="#templatemo_work_page">Projects</a></li> -->
<!--                   <li><a class="menu" href="#templatemo_team_page">Our Team</a></li> -->
                  <li><a class="menu" href="UserWelcomepage.jsp">Logout</a></li>
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
  
  
  
  
   <h1>WELLCOME ::: <%=session.getAttribute("username") %> </h1><br><br><br>
   
   
  
         <div  id="timer" style="font-size:100px;text-align:right;"> DeadLine: 
	 <input id="minutes" type="text" style="width: 26px; border: none; background-color:none; font-size: 16px; font-weight: bold;">  
	<input id="seconds" type="text" style="width: 30px; border: none; background-color:none; font-size: 16px; font-weight: bold;">
               </div>
        <script>
          countdown();
            </script>

   <p id="timer" style="font-size:100px;text-align:right;"></p>

<h1>Work Scheduled Details</h1>
      
      <br>

     
      <br>
      <br>
      
      
     
     
			<%String uid=session.getAttribute("Uid").toString();
			//String ftitile=request.getParameter("FileTitile");
			
			System.out.println("----------->All Values Comming");				
							
           DBConnection dd=new DBConnection();
			
			Connection c=dd.con();
			
			
			PreparedStatement ps=(PreparedStatement)c.prepareStatement("SELECT Fromdate,Lastdate,username,userid, titleid, filetitle, filename, contenttype FROM `workflowscheduling`.`timeslot` where userid='"+uid+"'");
			
			
			
			ResultSet rs=ps.executeQuery();
			
		
			
			%>
			
			
			  <center> <table border="2" style="position:relative;left:10px; background-color:#E0FFFF">
			
                  <tr>

				<th>UserId</th>
				<th>File Id</th>
				<th>File Title</th>
				<th>ContentType</th>
				<th>From Date:</th>
                <th>To Date:</th>
                
                
                
                <th>DOWNLOAD</th>
                
                
                   </tr>
                   
			
			
			
			
		<% 
while(rs.next())
{
	String userid=rs.getString(3);
	String filetitle=rs.getString(6);
	String filename=rs.getString(7);
	String contentType=rs.getString(8);
	String fromdate=rs.getString(1);
	String todate=rs.getString(2);

// 	 String status=rs.next();
// 	   if(status.endsWith("pending"))
// 	   {
			%>
			
               
                    <tr>
                   <td height="50"><%= userid%></td> 
                   <td><%=filetitle %></td> 
                   <td><%=filename %>	</td>
                      <td><%=contentType %>	</td>
                         <td Style="color: green;"><%=fromdate %>	</td>
                            <td Style="color: red;;"><%=todate %>	</td>

                     <td><a href="Download?filename=<%=filename %>">DOWNLOAD FILE</a>	</td>

                   
                   </tr>

                  
                    
                    
                    
                  <%}
// }
%>	   	
		
      </table>
 </center>














<div class="clear"></div>

<div class="templatemo_team_wrapper" id="templatemo_team_page">
  <div class="container">
    <div class="row">
<!--       <h1>Work Downloaded</h1> -->
<!--      
            <!-- post #6 --> 
          </div>
          <!-- @end .crsl-wrap --> 
        </div>
        <!-- @end .crsl-items --> 
      </div>
      <div class="clear"></div>
      <nav class="slidernav">
<!--         <div id="navbtns" class="clearfix"><a href="#" class="previous"><img src="images/slideitmoo_back.png" alt="previous"></a> <a href="#" class="next"><img src="images/slideitmoo_forward.png" alt="next"></a></div> -->
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

<div class="templatemo_footerwrapper">
  <div class="container">
    <div class="row">
      <div class="col-md-12">Copyright &copy; 2017 <a href="#">True Solutions</a> | Design: <a href="http://www.templatemo.com">Java Team</a></div>
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