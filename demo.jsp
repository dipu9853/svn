<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
/********** Start RESET **********
	AUTHOR: Osvaldas Valutis, www.osvaldas.info
*/
* {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
    *behavior: url( '/theme/js/boxsizing.htc' );
	-webkit-tap-highlight-color: rgba( 0, 0, 0, 0 );
	-webkit-overflow-scrolling: touch;
}
html, body, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sup, sub, tt, var, b, u, i, center, ul, ol, li, dl, dt, dd, table, tr, th, td, thead, tbody, tfoot, caption, form, fieldset, legend, input, textarea, select, label, applet, object, iframe, audio, video, canvas, article, aside, canvas, details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary {
	/* font-size: 100%; */
	font-family: inherit;
	/* font-weight: inherit; */
   /*  font-style: inherit;
	line-height: inherit;
	vertical-align: baseline; */
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
table {
/* 	table-layout: auto;
	border-collapse: separate;
	border-spacing: 0;
	empty-cells: hide; */
}
img {
	/* vertical-align: middle;
	-ms-interpolation-mode: bicubic; */
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

/********** End RESET **********/

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
	/* width: 60em;  *//* 1000 */
	font-family: 'Open Sans', sans-serif;
	/* font-weight: 400; */
	/* 	position: absolute; */
	/* 	top: 25%;
	left: 50%; */
	/* margin-left: -30em;  *//* 30 480 */
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
#nav li a:active {
/* 	background-color: #c00 */ !important;
}
#nav span:after {
	width: 0;
	height: 0;
	border: 0.313em solid transparent; /* 5 */
	border-bottom: none;
	border-top-color:white;
	content: '';
	vertical-align: middle;
	display: inline-block;
	position: relative;
	right: -0.313em; /* 5 */
}
/* first level */
#nav > ul {
	/* height: 3.75em; */ /* 60 */
	background-color:rgb(51,79,147);
    height:45px;
}
#nav > ul > li {
  /*   width: 8.3%; */
	height: 100%;
	float: left;
}
#nav > ul > li > a {
	height: 100%;
	font-size: 15px; /* 24 */
	/* line-height: 2.5em; */ /* 60 (24) */
	/* text-align: center; */
    padding: 10px; 
}
#nav > ul > li:not( :last-child ) > a {
/* 	border-right: 1px solid #cc470d; */		
}
#nav > ul > li:hover > a, #nav > ul:not( :hover ) > li.active > a {
	/* background-color: #cc470d; */
	background-color:rgb(16,52,116); 
}
/* second level */

#nav li ul {
	/* background-color: #cc470d; */
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
	/* background-color: #e15a1f; */
	background-color:rgb(16,52,116);
}
 @media only screen and ( max-width: 62.5em ) /* 1000 */ {
#nav {
	width: 100%;
	position: static;
	margin: 0;
}
}
 @media only screen and ( max-width: 40em ) /* 640 */ {
html {
	font-size: 75%; /* 12 */
}
#nav {
	position: relative;
	top: auto;
	left: auto;
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
	/* background-color: #cc470d; */
    background-color:rgb(51,79,147);
	display: none;
	position: absolute;
	top: 100%;
	width:250px; 
	
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

</style>
</head>
<body>
<form id="form1">
	<nav id="nav" role="navigation"> <a href="#nav" title="Show navigation">Show navigation</a> <a href="#" title="Hide navigation">Hide navigation</a>
      <ul class="clearfix">
    <li><a href=""><span>About Us</span></a>
    <ul>
       <li><a href="#">Director Message</a></li>
       <li><a href="#">Mission & Vision</a></li>
       <li><a href="/GowbellHope/user/About.html">Why Go With Bell ?</a></li>
       <li><a href="/GowbellHope/user/Committee.html">Advisory Committee</a></li>
   </ul>
    </li>
    <li> <a href=""><span>GHTHA</span></a>
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
    <li> <a href=""><span>Gateway to GYSDP</span></a>
          <ul>
                    <li><a href="#">Why GYSDP?</a></li>
                    <li><a href="#">Why Programming?</a></li>
                    <li><a href="/GowbellHope/user/CodingProjects.html">How Kids Learn?</a></li>
                    <li><a href="/GowbellHope/user/StudentPartner.html">Gowbell Student Partners</a></li>
                    <li><a href="#">Gowbell Teacher Partners</a></li>
          </ul>
        </li>
    <li><a href=""><span>Curriculam</span></a>
      <ul>
                  <li><a href="#">GHTHA-Syllabus</a></li>
                  <li><a href="/GowbellHope/user/Courses.html">GYSDP-Syllabus </a></li>
      </ul>
    </li>
    <li><a href=""><span>Associate Partners</span></a>
      <ul> 
                  <li><a href="/GowbellHope/user/Sponsors.html">GHTHA-Sponsors</a></li>
                  <li><a href="/GowbellHope/user/Prizes.html">Prizes</a></li>
      </ul>
    </li>
    <li><a href=""><span>Gallery</span></a>
      <ul>
                    <li><a href="/GowbellHope/user/Gallery.html">GHTHA-Exams</a></li>
                    <li><a href="#">GHTHA-Prize Distribution Events</a></li>
                    <li><a href="#">GYSDA-Class Rooms</a></li>
                    <li><a href="#">Kids Project</a></li>
      </ul>
    </li>
    <li><a href=""><span>Media</span></a>
      <ul>
                    <li><a href="/GowbellHope/user/PrintMedia.html">Print Media</a></li>
                    <li><a href="/GowbellHope/user/DegitalMedia.html">Digital Media</a></li>
                    <li><a href="/GowbellHope/user/ElectronicMedia.html">Electronic Media</a></li>
                    <li><a href="/GowbellHope/user/MediaPartner.html">Media Partner</a></li>
      </ul>
    </li>
    <li><a href=""><span>Downloads</span></a>
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
    <li><a href=""><span>Results</span></a>
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
    <li><a href=""><span>Careers</span></a>
    <ul>  
                    <li><a href="#">Why to Choose Gowbell?</a></li>
                    <li><a href="#">Who Can Join With Us?</a></li>
                    <li><a href="#">Current-Openings</a></li> 
                    <li><a href="#">Apply</a></li>
    </ul>
    </li> 
    <li><a href=""><span>Ask Us</span></a>
    <ul>  
                    <li><a href="/GowbellHope/user/FAQs.html">FAQs</a></li>
                    <li><a href="#">General Enquiry</a></li>
                    <li><a href="#">Admission Enquiry</a></li> 
                    <li><a href="/GowbellHope/user/ContactUs.html">Grivance Redressal</a></li>
                    <li><a href="/GowbellHope/user/Feedback.html">Feedback</a></li>
    </ul>
    </li>     
  </ul>
</nav> 

<!-- <script src="http://osvaldas.info/examples/main.js"></script>
<script src="http://osvaldas.info/examples/drop-down-navigation-touch-friendly-and-responsive/doubletaptogo.js"></script>  -->
  
<!-- <script>
	$( function()
	{
		$( '#nav li:has(ul)' ).doubleTapToGo();
	});
</script> -->
</form> 
</body>
</html>