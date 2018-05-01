
 <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title></title>
    <link href="Css/Style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
    <script src="scripts/contentvalidation.js"></script>
    <style>
         a:link {
        color:white;
        font-size:14px; 
        text-decoration:none; 
        }
        a:hover {
            color:black;
            text-decoration:none;
        }
    </style>
    
 <style>
/* home page navigation bar (begin) */
	* {
		-webkit-box-sizing: border-box;
		-moz-box-sizing: border-box;
		box-sizing: border-box;
	    *behavior: url( '/theme/js/boxsizing.htc' );
		-webkit-tap-highlight-color: rgba( 0, 0, 0, 0 );
		-webkit-overflow-scrolling: touch;
	}
	html, body, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sup, sub, tt, var, b, u, i, center, ul, ol, li, dl, dt, dd, table, tr, th, td, thead, tbody, tfoot, caption, form, fieldset, legend, input, textarea, select, label, applet, object, iframe, audio, video, canvas, article, aside, canvas, details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary {
		font-family: inherit;
		border: 0;
		outline: 0;
		padding: 0;
		margin: 0;
	}
	a {
		text-decoration: underline;
		color: #000;
	}
	a:hover {
		text-decoration: none;
	}
	
	ul, ol {
		list-style: none;
	}
	svg:not(:root) {
		overflow: hidden;
	}
	blockquote, q {
		quotes: none;
	}
	blockquote:before, blockquote:after, q:before, q:after {
		content: '';
		content: none;
	}
	input, textarea {
		-webkit-appearance: none;
	}
	button, input, select, textarea {
		vertical-align: baseline;
	    *vertical-align: middle;
		-webkit-border-radius: 0;
	}
	button, input {
		line-height: normal;
	    *overflow: visible;
	}
	table button, table input {
	*overflow: auto;
	}
	button, input[type='button'], input[type='reset'], input[type='submit'] {
		cursor: pointer;
		-webkit-appearance: button;
	}
	textarea {
		overflow: auto;
		vertical-align: top;
	}
	input[type='search']::-webkit-search-decoration, input[type='search']::-webkit-search-cancel-button, input[type='search']::-webkit-search-results-button, input[type='search']::-webkit-search-results-decoration {
	display: none;
	}
	input[type='search'] {
		-webkit-appearance: textfield;
	}
	input[type='radio'] {
		-webkit-appearance: radio;
	}
	input[type='checkbox'] {
		-webkit-appearance: checkbox;
	}
	input::-ms-clear {
	display: none;
	}
	input[type='password']::-ms-reveal {
	display: none;
	}
	.clearfix:after {
		visibility: hidden;
		display: block;
		font-size: 0;
		content: " ";
		clear: both;
	}
	* html .clearfix {
		zoom: 1;
	}
	*:first-child+html .clearfix {
		zoom: 1;
	}
	.cleaner {
		height: 0;
		line-height: 0;
		clear: both;
	}
	
	a {
		-webkit-transition: color .3s ease;
		-moz-transition: color .3s ease;
		-ms-transition: color .3s ease;
		-o-transition: color .3s ease;
		transition: color .3s ease;
	}
	a, a:hover {
		text-decoration: none;
	}
	#nav {
		font-family: 'Open Sans', sans-serif;
		position:relative;
	    z-index:1000;
	}
	#nav > a {
		display: none;	
	}
	#nav li {
		position: relative;
	}
	#nav li a {
		color: #fff;
		display: block;
	}
	#nav span:after {
		width: 0;
		height: 0;
		border: 0.313em solid transparent;
		border-bottom: none;
		border-top-color:white;
		content: '';
		vertical-align: middle;
		display: inline-block;
		position: relative;
		right: -0.313em; 
	}
	/* first level */
	#nav > ul {
		background-color:rgb(51,79,147);
	    height:45px;
	}
	#nav > ul > li {
		height: 100%;
		float: left;
	}
	#nav > ul > li > a {
		height: 100%;
		font-size: 15px;
	    padding: 10px; 
	}
	#nav > ul > li:not( :last-child ) > a {
	/* 	border-right: 1px solid #cc470d; */		
	}
	#nav > ul > li:hover > a, #nav > ul:not( :hover ) > li.active > a {
		background-color:rgb(16,52,116); 
	}
	/* second level */
	
	#nav li ul {
	    background-color:rgb(51,79,147);
		display: none;
		position: absolute;
		top: 100%;
		/* width:250px; */
	}
	#nav li:hover ul {
		display: block;
		left: 0;
		right: 0;
	}
	#nav li:not( :first-child ):hover ul {
		left: -1px;
	}
	#nav li ul a {
		font-size: 15px; /* 20 */
		border-top: 1px solid #e15a1f;
		padding: 0.75em; /* 15 (20) */
	}
	#nav li ul li a:hover, #nav li ul:not( :hover ) li.active a {
		background-color:rgb(16,52,116);
	}

 @media only screen and ( max-width: 40em )  {
	html {
		font-size: 75%;
	}
	#nav {
		position: relative;
		top: auto;
		left: auto;
	}
	#nav > a {
		width: 3.125em;
		height: 3.125em;
		text-align: left;
		text-indent: -9999px;
		background-color:rgb(51,79,147);
		position: relative;
	}
	#nav > a:before, #nav > a:after {
		position: absolute;
		border: 2px solid #fff;
		top: 35%;
		left: 25%;
		right: 25%;
		content: '';
	}
	#nav > a:after {
		top: 60%;
	}
	#nav:not( :target ) > a:first-of-type, #nav:target > a:last-of-type {
		display: block;
	}
	/* first level */
	
	#nav > ul {
		height: auto;
		display: none;
		position: absolute;
		left: 0;
		right: 0;
	}
	#nav:target > ul {
		display: block;
	}
	#nav > ul > li {
		width: 100%; 
		float: none;
	}
	#nav > ul > li > a {
		text-align: left;
		padding: 0 0.833em; /* 20 (24) */
	}
	#nav > ul > li:not( :last-child ) > a {
		border-right: none;
		border-bottom: 1px solid #cc470d;
	}
	/* second level */
	    #nav li ul {
		position: static;
		padding: 1.25em; /* 20 */
		padding-top: 0;
	}
	
	}

 @media only screen and (min-width:768px) and (max-width:1024px){ 

	html {
		font-size: 75%; /* 12 */
	}
	#nav {
		position: relative;
		top: auto;
		left: auto;
		margin-top:20px;
	}
	#nav > a {
		width: 3.125em; /* 50 */
		height: 3.125em; /* 50 */
		text-align: left;
		text-indent: -9999px;
		background-color:rgb(51,79,147);
		position: relative;
	}
	#nav > a:before, #nav > a:after {
		position: absolute;
		border: 2px solid #fff;
		top: 35%;
		left: 25%;
		right: 25%;
		content: '';
	}
	#nav > a:after {
		top: 60%;
	}
	#nav:not( :target ) > a:first-of-type, #nav:target > a:last-of-type {
		display: block;
	}
	/* first level */
	
	#nav > ul {
		height: auto;
		display: none;
		position: absolute;
		left: 0;
		right: 0;
	}
	#nav:target > ul {
		display: block;
	}
	#nav > ul > li {
		width: 100%; 
		float: none;
	}
	#nav > ul > li > a {
		text-align: left;
		padding: 0 0.833em; /* 20 (24) */
	}
	#nav > ul > li:not( :last-child ) > a {
		border-right: none;
		border-bottom: 1px solid #cc470d;
	}
	/* second level */
	    #nav li ul {
		position: static;
		padding: 1.25em; /* 20 */
		padding-top: 0;
	} 
	}
	@media only screen and (min-width:1224px){
	#nav li ul {
	    background-color:rgb(51,79,147);
		display: none;
		position: absolute;
		top: 100%;
		width:250px; 	
	}
	}
	@media only screen and (min-width:1824px){
	#nav li ul {
	    background-color:rgb(51,79,147);
		display: none;
		position: absolute;
		top: 100%;
		width:250px; 	
	}
	}
	/* home page navigation bar (end) */

</style>
    
</head>
<body >
    <form id="form1">
    
 <div class="pageHeader">
       <div class="topmenuHolderImage">
        <c:choose>
        <c:when test="${NameAccount==null}">
           <div class="topMenu">
               <nav class="topMenuNavigation">
                   <ul>
                       <li><a href="/GowbellHope/user/Registration.jsp?val=3"> <i class="fa fa-user fa-fw"> </i>Register</a></li>
                       <li><a href="/GowbellHope/user/login.jsp"> <i class="fa fa-star" aria-hidden="true"> </i> Log in</a></li>
                   </ul>
               </nav>
           </div>
           </c:when>
        <c:when test="${NameAccount!=null}">
           <div class="topMenu3">
              <nav class="topMenuNavigation3">
                <ul>
                 <c:choose>
                 <c:when test="${val==1}">
                 <li style="width:190px;"><a href="/GowbellHope/useraccount/StudentDashboard/StudentAccount.jsp"><i class="fa fa-user fa-fw"></i>${NameAccount}'s Account<span class="caret"style="margin-left:20px;"></span></a>
                  <ul>
                      <li><a href="/GowbellHope/useraccount/StudentDashboard/StudentAccount.jsp">My Account</a></li>
                      <li><a href="/GowbellHope/useraccount/StudentDashboard/login&Security.jsp">Change Password</a></li>
                      <li><a href="/GowbellHope/LogOut">Log Out</a></li>
                   </ul>
                  </li>
                 </c:when>
                 <c:otherwise>
                 <li style="width:190px;"><a href="/GowbellHope/useraccount/InstitutionalDashboard/InstituteAccount.jsp"><i class="fa fa-user fa-fw"></i>${NameAccount}'s Account<span class="caret"style="margin-left:20px;"></span></a>
                 <ul>
                      <li><a href="/GowbellHope/useraccount/InstitutionalDashboard/InstituteAccount.jsp">My Account</a></li>
                   <li><a href="/GowbellHope/useraccount/InstitutionalDashboard/ChangePassword.html">Change Password</a></li>
                 <li><a href="/GowbellHope/LogOut">Log Out</a></li>
                 </ul>
                 </li>
                 </c:otherwise>
                 </c:choose>
                 </ul>
                </nav>
             </div>
         </c:when>
         </c:choose>
           <img src="/GowbellHope/images/homepage/header/topbar.png"/>
       </div>
       <div class="logo">
           <a href="/GowbellHope/default.jsp"target="_parent"><img src="/GowbellHope/images/homepage/header/Logo.png" style="height:100%"/></a>
       </div>
       <div class="headerText">
           <span class="firstHeaderText">Gowbell-Hope Talent Hunt Awards</span><span class="socialImage">
               <a href="http://twitter.com"><img src="/GowbellHope/images/homepage/header/Twitter.png"/></a>
               <a href="https://www.facebook.com/GowbellHopeTalentHuntAward/"><img src="/GowbellHope/images/homepage/header/Facebook.png" /></a>
           </span>
       </div>
       <div class="subHeaderText">
           <span class="secondHeaderText">GateWay To World's Youngest Software Programmer</span>
       </div>
        </div> 
        
	<nav id="nav" role="navigation"> <a href="#nav" title="Show navigation">Show navigation</a> <a href="#" title="Hide navigation">Hide navigation</a>
	
      <ul>
            <li style="width:8%;"><a href="#">About Us<span class=""></span></a>
                <ul>
                    <li><a href="#">Director Message</a></li>
                    <li><a href="#">Mission & Vision</a></li>
                    <li><a href="/GowbellHope/user/About.html">Why GoWbell ?</a></li>
                    <li><a href="/GowbellHope/user/Committee.html">Advisory Committee</a></li>
                </ul>
            </li>
            <li style="width:8%;"><a href="#">GHTHA<span class=""></span></a>
                <ul>    
                    <li><a href="#">Benefits of GHTHA</a></li>
                    <li><a href="/GowbellHope/user/ThumbRule.html">Eligibility Criterion </a></li>
                    <li><a href="#">Registration Fees </a></li>
                    <li><a href="#">How to Register </a></li>
                    <li><a href="#">Dates for Exam </a></li>
                    <li><a href="#">Exam Center Details </a></li>
                    <li><a href="#">Selection Criteria </a></li>
                    <li><a href="#">School for Change& Innovation </a></li>
                    
                </ul>
            </li>
            <li style="width:13%;"><a href="#">Gateway to GYSDP<span class=""></span></a>
                <ul>
                    <li><a href="#">Why GYSDP?</a></li>
                    <li><a href="#">Why Programming?</a></li>
                    <li><a href="/GowbellHope/user/CodingProjects.html">How Kids Learn?</a></li>
                    <li><a href="/GowbellHope/user/StudentPartner.html">Gowbell Student Partners</a></li>
                    <li><a href="#">Gowbell Teacher Partners</a></li>
                </ul>
            </li>
            <li style="width:8%;"><a href="#">Curriculam<span class=""></span></a>
                <ul>
                    <li><a href="#">GHTHA-Syllabus</a></li>
                    <li><a href="/GowbellHope/user/Courses.html">GYSDP-Syllabus </a></li>
                </ul>
            </li>
            <li style="width:13%;"><a href="#">Associate Partners<span class=""></span></a>
                <ul> 
                    <li><a href="/GowbellHope/user/Sponsors.html">GHTHA-Sponsors</a></li>
                    <li><a href="/GowbellHope/user/Prizes.html">Prizes</a></li>
                </ul>
            </li>
            <li style="width:8%;"><a href="#">Gallery<span class=""></span></a>
                <ul>
                    <li><a href="/GowbellHope/user/Gallery.html">GHTHA-Exams</a></li>
                    <li><a href="#">GHTHA-Prize Distribution Events</a></li>
                    <li><a href="#">GYSDA-Class Rooms</a></li>
                    <li><a href="#">Kids Project</a></li>
                </ul>
            </li>
            <li style="width:8%;"><a href="#">Media<span class=""></span></a>
                <ul>
                    <!-- <li><a href="/GowbellHope/user/PrintMedia.html">Print Media</a></li>
                    <li><a href="/GowbellHope/user/DegitalMedia.html">Digital Media</a></li> -->
                    <li><a href="/GowbellHope/user/ElectronicMedia.html">Press Release</a></li>
                    <li><a href="/GowbellHope/user/MediaPartner.html">Media Partner</a></li>
                </ul>
            </li>
            <li style="width:10%;"><a href="#">Downloads<span class=""></span></a>
                <ul>
                    <li><a href="#">GHTHA-Registration Forms</a></li>
                    <li><a href="/GowbellHope/user/ReferenceBooks.html">GHTHA-Preparatory-E-Books</a></li>
                    <li><a href="/GowbellHope/user/Questions.html">GHTHA-Sample Questions</a></li>
                    <li><a href="#">GHTHA-Broucher</a></li>
                    <li><a href="#">GYSDA-Registration Forms</a></li>
                    <li><a href="#">GYSDP-E-Books</a></li>
                    <li><a href="#">GYSDA-Broucher</a></li>
                </ul>
            </li>
            <li style="width:8%;"><a href="#">Results<span class=""></span></a>
                <ul>  
                    <li><a href="/GowbellHope/user/Results.html">GHTHA Results-2017</a></li>
                    <li><a href="#">Admitcard Download</a></li>
                    <li><a href="#">TOP-Rankers-Across Globe</a></li> 
                    <li><a href="#">TOP Rankers-Pan India</a></li>
                    <li><a href="#">Top Rankers-State</a></li>
                    <li><a href="#">Top Rankers-District</a></li>
                    <li><a href="#">Top Rankers-School</a></li>
                </ul>
            </li>
            <li style="width:8%;"><a href="#">Careers<span class=""></span></a>
                <ul>  
                    <li><a href="#">Why to Choose Gowbell?</a></li>
                    <li><a href="#">Who Can Join With Us?</a></li>
                    <li><a href="#">Current-Openings</a></li> 
                    <li><a href="#">Apply</a></li>
                </ul>
            </li>
            <li style="width:8%;"><a href="#">Ask Us<span class=""></span></a>
                <ul style="float:right;">  
                    <li><a href="/GowbellHope/user/FAQs.html">FAQs</a></li>
                    <li><a href="#">General Enquiry</a></li>
                    <li><a href="#">Admission Enquiry</a></li> 
                    <li><a href="/GowbellHope/user/ContactUs.html">Grivance Redressal</a></li>
                    <li><a href="/GowbellHope/user/Feedback.html">Feedback</a></li>
                </ul>
            </li>
        </ul>
 
</nav> 

 <%--<sql:setDataSource var="confluence" driver="org.postgresql.Driver" url="jdbc:postgresql://localhost:5432/Local_GowbellHope" user="postgres" password="Kermit99"/>
       <sql:query var="listAddBanner" dataSource="${confluence}" sql="select \"Photo\" from \"Banner\" "> </sql:query> 
		 <table style="width=89%;height:233px;" >
             <c:forEach var="N" items="${listAddBanner.rows }">   
             <tr style="background-color:lightgrey;color:rgb(33,115,185);width=89%;height:233px;" class="mySlides">
             <td style="width:1347px;height:290px;"><div class="form-control input-sm"  id="DisplayPhoto" style="width:1347px;height:301px;">
             <img style="width:1347px;height:290px;" class="mySlides" src="/GowbellHope/images/homepage/banner/<c:out value="${N.Photo}"/>"/></div></td>
            </tr>
            </c:forEach>
        </table>  --%>
        <div style="align-items:center">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                     <li data-target="#myCarousel" data-slide-to="3"></li> 
                </ol>
            <div id="body" class="carousel-inner">
                <div class="item active">
                    <img src="/GowbellHope/images/homepage/banner/1350x360_1.jpg" style="width:100%;"/>
                </div>
                  <div class="item">
                   <img src="/GowbellHope/images/homepage/banner/1350x360_4.jpg" style="width:100%;"/>
                </div> 
                <div class="item">
                    <img src="/GowbellHope/images/homepage/banner/1350x360_3.jpg" style="width:100%;"/>
                </div>
               <div class="item">
                   <img src="/GowbellHope/images/homepage/banner/banner_images.jpg" style="width:100%;"/>
                </div>
            </div>
        </div>
    </div> 
    <div>
         <section class="main_articles">
              <div id="scroolTxt" >
                    <marquee onmouseover="this.stop()" onmouseout="this.start()">All participants  Technokids Certificates and User ID and password to access one project for One YEAR  will be sent to thier respective schools.  If any candidates want to receive it personally send your contact details to info@Gowbell.com</marquee>
              </div>   
              <div style="margin-top:10px;">
                <div class="middleContent">
                    <span class="middleContentHeading"style="line-height:4px;"><b>Gowbell-Hope Talent Hunt Awards (GHTHA) :</b></span>
                </div>            
                <div class="middleContentHeadingText">
                    <p>Gowbell-Hope Talent Hunt Awards is the first of its kinds and an unique initiative of Gowbell for the School Students & School Teachers towards the field of competitive education and to motivate them together towards a real competitive atmosphere. It has been characterized as one of the most successful and well managed competitive programme of the 21st Century.</p><br>

						<p>Gowbell-Hope Talent Hunt Awards generally takes place every year in October and students from across the globe qualifies from School Level to District Level to State Level and then Country Level (International Level) of the Competition followed by winning various rewards & recognitions.</p>
                </div>
            </div>
            <div style="margin-top:10px;">
                <div class="middleContent">
                    <span class="middleContentHeading"style="line-height:23px;"><b>GateWay Youngest Software Academy (GYSDA) :</b></span>
                </div>            
                <div class="middleContentHeadingText">
                    <p>Gone are the days where a student aspired to become a banker or an engineer or a doctor from childhood. Now the priority has changed and to get connected with the best of Technology first. India has seen a spectacular success in IT and Computers which is acknowledged around the world but computer education in our country is highly fragmented and without any common goal of platform. </p>
                    <br><p>Realizing the huge importance of streamlined and digital education in Computers and IT and with a view to fortifying India's success, Gowbell is foraying into its unique platform called Gowbell Youngest Software Developer Academy. Wherein the qualifiers of the competition will have an oppertunity to get trained from an early age to become World's youngest Software Programmers.

						</p>
                </div>
            </div>
    </section>
        <aside class="sideArticle">
             <div class="sideArticleArea">
                <div class="sideArticleAreaHeading">
                    <span class="sideArticleAreaHeadingText">Student Testimonial</span>
                </div>
                <div class="w3-content">
                      <img class="mySlides"src="/GowbellHope/images/homepage/testimonialbox/User1.jpg"style="height:233px;width:400px;"/>
                      <img class="mySlides"src="/GowbellHope/images/homepage/testimonialbox/User2.jpg"style="height:233px;width:400px;"/>
                      <!-- <img class="mySlides" src="/GowbellHope/images/homepage/testimonialbox/User3.jpg"style="width:100%;height:40%;"/>
                      <img class="mySlides" src="/GowbellHope/images/homepage/testimonialbox/User4.jpg"style="width:100%;height:40%;"/>
                      <img class="mySlides" src="/GowbellHope/images/homepage/testimonialbox/User5.jpg"style="width:100%;height:40%;"/>
                      <img class="mySlides" src="/GowbellHope/images/homepage/testimonialbox/User6.jpg"style="width:100%;height:40%;"/> -->
            <%-- <table style=" width=89%;height:233px;" class="table table-striped table-bordered table-hover" >
             <c:forEach var="N" items="${listFeedback.rows }">   
             <tr style="background-color:lightgrey;color:rgb(33,115,185);width=89%;height:233px;" class="mySlides">
             <td style="width:140px;height:190px;" ><div class="form-control input-sm" id="DisplayPhoto" style="width:140px;height:170px;">
             <img style="width:120px;height:160px;"class="mySlides" src="/GowbellHope/images/homepage/testimonialbox/<c:out value="${N.Photo}"/>"/></div></td>
             <td style="width:140px;height:190px;font-size:10px;"><c:out value="${N.Description}"/></td>
            </tr>
            </c:forEach>
             </table> --%>
                </div>
            </div>
            <div class="sideArticleArea"style="margin-top:10px;">
                 <div class="sideArticleAreaHeading">
                    <span class="sideArticleAreaHeadingText">Our Sponsors</span>
                </div>
    <div class="w3-content">
        <div style="align-items:center">
            <div id="myCarousel1" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel1" data-slide-to="1"></li>
                    <!--<li data-target="#myCarousel1" data-slide-to="2"></li>
                    <li data-target="#myCarousel1" data-slide-to="3"></li>
                    <li data-target="#myCarousel1" data-slide-to="4"></li>
                    <li data-target="#myCarousel1" data-slide-to="5"></li> -->
                </ol>
              <div id="body1" class="carousel-inner">
                <div class="item active">
                    <img src="/GowbellHope/images/homepage/sponsorbox/titan.jpg"style="height:233px;width:400px;" />
                </div>
                <div class="item ">
                    <img src="/GowbellHope/images/homepage/sponsorbox/luxor.jpg"style="height:233px;width:400px;" />
                </div>
               <!--  <div class="item">
                   <img src="/GowbellHope/images/homepage/sponsorbox/Sponsor3.jpg" />
                </div>
                <div class="item ">
                    <img src="/GowbellHope/images/homepage/sponsorbox/sponsor4.jpg" />
                </div>
                <div class="item ">
                    <img src="/GowbellHope/images/homepage/sponsorbox/Sponsor5.jpg" />
                </div>
                <div class="item">
                   <img src="/GowbellHope/images/homepage/sponsorbox/Sponsor6.jpg" />
                </div> -->
            </div>
         </div>
       </div>
    </div>        
      </div>
     </aside>
    </div>
    <div class="mainfooter">
            <span class="footer1">Copyright &copy; 2017-2018 Gowbell-Hope Talent Hunt Awards. All rights reserved.</span>
           <span class="footer2">
                <a href="/GowbellHope/user/Disclaimer.html">Disclaimer </a><span style="color:white;">|</span>
                <a href="/GowbellHope/user/TermAndConditions.html"> Terms & Conditions </a><span style="color:white;">|</span>
                <a href="/GowbellHope/user/PrivacyPolicy.html">Privacy Policy</a>
            </span>
     </div>
	<script>
	    var slideIndex = 0;
	    carousel();
	    function carousel() {
	    var i;
	    var x = document.getElementsByClassName("mySlides");
	    for (i = 0; i < x.length; i++) {
	      x[i].style.display = "none"; 
	    }
	    slideIndex++;
	    if (slideIndex > x.length) {slideIndex = 1} 
	    x[slideIndex-1].style.display = "block"; 
	    setTimeout(carousel, 2000); 
	    }
	 </script>
   <!--<script>
	    var slideIndex = 0;
	    carousel();
	    function carousel() {
	    var i;
	    var y = document.getElementsByClassName("mySlides1");
	    for (i = 0; i < y.length; i++) {
	      y[i].style.display = "none"; 
	    }
	    slideIndex++;
	    if (slideIndex > y.length) {slideIndex = 1} 
	    y[slideIndex-1].style.display = "block"; 
	    setTimeout(carousel, 2000); 
	    }
	 </script> -->
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</form>  
</body>
</html> 

