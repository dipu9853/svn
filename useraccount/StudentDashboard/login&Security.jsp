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
    <link href="../DashboardCss/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../DashboardCss/sb-admin-2.css" rel="stylesheet"/>
    <link href="../DashboardCss/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="../DashboardCss/DashboardContent.css" rel="stylesheet"/>
    <script src="../DashboardCss/Validation.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
    
</head>
	<body>
		<div>
			<iframe frameborder="0" scrolling="no" src="/GowbellHope/user/MasterHeader.jsp" style="min-width:100%;height:150px;"></iframe>
		</div>
       <div style="margin-top:20px;"></div>
			<div class="navbar-default sidebar " role="navigation"style="margin-top:0.2px;border-top:1px solid rgb(231,231,231);">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<li>
                             <a href="../StudentDashboard/StudentAccount.jsp" style="color:gray;"><i class="fa fa-dashboard fa-fw"style="color:rgb(66,133,244);"></i> Student Dashboard</a>
                        </li>
						<li>
							<a href="login&Security.jsp"><i class="fa fa-lock" aria-hidden="true"style="color:rgb(251,188,5)"></i> Login & Security</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-registered" aria-hidden="true"style="color:rgb(52,168,83)"></i> Gowbell-Hope Competition<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li>
                                    <a href="Apply.html"><i class="glyphicon glyphicon-arrow-right admin-sb-link"style="font-size:10px" class="fa"></i> Apply Here</a>
                                </li>
							</ul>
						</li>
								<li>
                                    <a href="PerformanceReport.html"> <i class="fa fa-line-chart"style="color:rgb(255,187,51)"></i> Performance Report</a>
                                </li>
                          <li>
                             <a href="Achievements.html"><i style="font-size:12px;color:rgb(255,51,185);" class="fa">&#xf00b;</i> Achievements</a>
						  </li>
					       <li>
                             <a href="Results.html"><i class="glyphicon glyphicon-search"style="font-size:12px;color:rgb(234,67,53)"></i> Exam Results</a>
						  </li>
                            <li>
							<a href="#"><i class="fa fa-download" aria-hidden="true"style="font-size:12px;color:rgb(126,204,0)"></i> Downloads<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li>
                                    <a href="Questions.html"><i class="glyphicon glyphicon-arrow-right admin-sb-link"style="font-size:10px" class="fa"></i> Questions</a>
                                </li>
                                <li>
                                    <a href="HallTicket.html"><i class="glyphicon glyphicon-arrow-right admin-sb-link"style="font-size:10px" class="fa"></i> Hall Ticket</a>
                                </li>
							</ul>
                        </li> 
                            <li>
                             <a href="Orders.html"><i class="fa fa-first-order" aria-hidden="true"style="font-size:12px;color:rgb(204,78,0)"></i> Your Orders</a>
                        </li>
                         <li>
                             <a href="Feedback.jsp"><i class="fa fa-commenting" aria-hidden="true"style="color:rgb(92,46,145)"></i> Feedback</a>
                        </li>
					</ul>
				</div>
			</div>
        <div id="page-wrapper"style="border-top:1px solid rgb(231,231,231);">
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"style= "font-family:Arial;">Login & Security</h3>
				</div> 
			</div> 
			<div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default"style="box-shadow: 0px 5px 10px 0px silver;">
                     <div class="panel-body">
                         <ul class="nav nav-tabs">
                                <li class="active"><a href="#PersonalInfo" data-toggle="tab">Personal Info</a>
                                </li>
                                <li><a href="#AddressInfo" data-toggle="tab">Address Info</a>
                                </li>
                                <li><a href="#ChangePassword" data-toggle="tab">Change Password</a>
                                </li>
                                <li><a href="#Deactivate" data-toggle="tab">Deactivate Account</a>
                                </li>
                            </ul>
    <div class="tab-content">
    <div class="tab-pane fade in active" id="PersonalInfo"><br/>
    <div class="row">
    <div class="col-lg-12"style="width:70%;margin-left:2%;">
    <div class="panel panel-default"style="background-color:rgb(248,248,248);">
    <div class="panel-heading"style="height:38px;background-color:rgb(33,115,185);color:white;">
    Student Personal Information
    </div>
    <div class="panel-body">
    <div class="row">
     <!-- Database Connectivity (Begin) -->
		<sql:setDataSource var="confluence" driver="org.postgresql.Driver" url="jdbc:postgresql://127.0.0.1:5432/Local_GowbellHope" user="postgres" password="Kermit99"/>
		<sql:query var="result" dataSource="${confluence}" sql="select * from \"Student\" where \"StudentID\" =?">
		<sql:param value="${NameAccountID}"></sql:param>
		</sql:query>
	    <!-- Database Connectivity (End) -->
	    <c:forEach var="row" items="${result.rows}">
    <form id="edit Profile" action="/GowbellHope/EditStudentProfile" method="post" enctype="multipart/form-data">
    <div class="col-md-12 col-sm-12"style="padding-left:8%;padding-right:8%;">
     <input type="hidden" id="StudentID" name="inputName" value="hiddenValue">
   
      <div class="col-md-4 col-xs-12">
	        <label class="dashlbl">Student's name:</label>
		    <input type="text" class="form-control input-sm" ID="SFirstName" Name="SFirstName" placeholder="First" value="${row.FirstName}">
	 </div>
	 <div class="col-md-4 col-xs-12"style="margin-top:25px;">
	        <input type="text" class="form-control input-sm" ID="MiddleName" Name="MiddleName" placeholder="Middle" value="${row.MiddleName}">
	 </div>
	 <div class="col-md-4 col-xs-12"style="margin-top:25px;">
	        <input type="text" class="form-control input-sm" ID="SLastName" Name="SLastName" placeholder="Last" value="${row.LastName}">
	 </div>
     <div class="form-group col-md-6 col-sm-6">
            <label class="dashlbl">Email address:</label>
            <input type="text" class="form-control input-sm" id="emailId" Name="emailId" value="${row.EmailAddress}">
     </div>
	 <div class="form-group col-md-6 col-sm-6">
            <label class="dashlbl">Mobile phone:</label>
            <input type="text" class="form-control input-sm" ID="MobileNo" Name="MobileNo" value="${row.MobileNo}">
     </div>
     <div class="col-md-4 col-xs-12"style="margin-top:-15px;">
            <label class="dashlbl">Parent's name:</label>
	        <input type="text" class="form-control input-sm" ID="PFirstName" Name="PFirstName" placeholder="First">
	 </div>
	 <div class="col-md-4 col-xs-12"style="margin-top:10px;">
	        <input type="text" class="form-control input-sm" ID="MiddleName" Name="MiddleName" placeholder="Middle">
	 </div>
	 <div class="col-md-4 col-xs-12"style="margin-top:10px;">
	        <input type="text" class="form-control input-sm" ID="PLastName" Name="PLastName" placeholder="Last">
	 </div>
	 <div class="form-group col-md-6 col-sm-6">
            <label class="dashlbl">Institution Name:</label>
            <input type="text" class="form-control input-sm"  ID="InstitutionName" Name="InstitutionName" >
     </div>
	 <div class="form-group col-md-6 col-sm-6">
            <label class="dashlbl">Dob:</label>
            <input type="date" class="form-control input-sm " id="SDob" Name="SDob" placeholder="Date of Birth">
     </div>
	 <div class = "form-group col-md-6 col-sm-6"style="margin-top:-10px;">
	        <label class="dashlbl">Grade:<span style="color:red;">*</span></label>
		    <select class="form-control input-sm" ID="Grade" Name="Grade">
			<option>-- Select Grade --</option>
	        <option value="">I</option>
	        <option value="">II</option>
	        <option value="">III</option>
	        <option value="">IV</option>
	        <option value="">V</option>
	        <option value="">VI</option>
	        <option value="">VII</option>
	        <option value="">VIII</option>
	        <option value="">IX</option>
	        <option value="">X</option>
		   </select>
      </div>  
      <div class = "form-group col-md-6 col-sm-6"style="margin-top:-10px;"> 
            <label class="dashlbl">Gender:</label><br/>
	            <label class="radio-inline">
	            <input type="radio" name="Male" ID="Male" value="option1">Male
            </label>
	            <label class="radio-inline">
	            <input type="radio" name="Male" ID="Female" value="option2">Female
            </label>
	 </div>
     <div class="form-group col-md-3 col-sm-3 pull-right" style="width:100%;">
		 <input type="button"  class="btn btn-primary" value="Save" onClick="validateProfile()"style="width:100%;height:45px;"/>
     </div>
	 </div>
	</form> 
	</c:forEach>     
    </div>
    </div> 
    </div>
    </div>
    </div> 
    </div>
    
<div class="tab-pane fade" id="AddressInfo">
   <div class="row" style="margin-top:20px;">
      <div class="col-lg-12"style="width:70%;margin-left:2%;">
        <div class="panel panel-default"style="background-color:rgb(248,248,248);">
          <div class="panel-heading"style="height:38px;background-color:rgb(33,115,185);color:white;">
             Address Information
             </div>
<div class="panel-body">
  <div class="row">
    <form>
	  <div class="col-md-12 col-sm-12"style="padding-left:8%;padding-right:8%;">
        <div class="col-md-6 col-xs-12">
        	<label class="dashlbl">Building name:</label>
	        <input type="text" class="form-control input-sm" ID="BuildingName" Name="BuildingName" >
	    </div>
	    <div class="col-md-6 col-xs-12">
	        <label class="dashlbl">Building no:</label>
	        <input type="text" class="form-control input-sm" ID="BuildingNo" Name="BuildingNo">
	    </div>
	    <div class="col-md-6 col-xs-12">
        	<label class="dashlbl">Area:</label>
	        <input type="text" class="form-control input-sm" ID="Area" Name="Area">
	    </div>
	    <div class="col-md-6 col-xs-12">
	        <label class="dashlbl">Street:</label>
	        <input type="text" class="form-control input-sm" ID="Street" Name="Street" >
	     </div>
	    <div class="col-md-6 col-xs-12">
        	<label class="dashlbl">Locality:</label>
	        <input type="text" class="form-control input-sm" ID="Locality" Name="Locality">
	    </div>
	    <div class="col-md-6 col-xs-12">
	         <label class="dashlbl">Landmark:</label>
	         <input type="text" class="form-control input-sm" ID="Landmark" Name="Landmark">
	    </div>
        <div class="col-md-6 col-xs-12">
            <label class="dashlbl">Country:</label>
	        <select class="form-control input-sm" ID="Country" Name="Country">
				<option>-- Select Country --</option>
		        <option value="India">India</option>
		        <option value="Dubai">Dubai</option>
		    </select>
	   </div>
	   <div class="col-md-6 col-xs-12">
	       <label class="dashlbl">Province:</label>
	       <select class="form-control input-sm" ID="Province" Name="Province">
				<option>-- Select Province/State --</option>
		        <option value="Odisha">Odisha</option>
		        <option value="Kolkata">Kolkata</option>
		   </select>
	   </div>
	   <div class="col-md-4 col-xs-12">
	       <label class="dashlbl">Dist:</label>
	       <select class="form-control input-sm" ID="Dist" Name="Dist">
				<option>-- Select Dist --</option>
		        <option value="Khordha">Khordha</option>
		        <option value="Cuttack">Cuttack</option>
		   </select>
	  </div>
	  <div class="col-md-4 col-xs-12">
	        <label class="dashlbl">City:</label>
	        <select class="form-control input-sm" ID="City" Name="City">
				<option>-- Select City --</option>
		        <option value="Bhubaneswar">Bhubaneswar</option>
		        <option value="Cuttack">Cuttack</option>
		    </select>  
	  </div>
	  <div class="col-md-4 col-xs-12">
	        <label class="dashlbl">Pincode:</label>
	        <input type="text" class="form-control input-sm" ID="Pincode" Name="Pincode" placeholder="Pincode *">
	  </div>
      <div class="form-group col-md-3 col-sm-3 pull-right" style="width:100%;margin-top:20px;">
			<input type="button" class="btn btn-primary" onClick="validateAddress()"value="Save" style="width:100%;height:45px;"/>
	  </div>
	  </div>
  </form>      
            </div>
           </div> 
          </div>
         </div>
       </div> 
      </div>
      
<div class="tab-pane fade" id="ChangePassword">
  <div class="row"style="margin-top:20px;">
    <div class="col-lg-12"style="width:50%;margin-left:2%;">
      <div class="panel panel-default"style="background-color:rgb(248,248,248);">
        <div class="panel-heading"style="height:38px;background-color:rgb(33,115,185);color:white;">
           <label style="font-weight:100;">Change Password</label>
         </div>
<div class="panel-body">
   <div class="row">
     <form>
    <div class="col-md-12 col-sm-12"style="padding-left:8%;padding-right:8%;">
	 <div class="form-group col-md-12 col-sm-12">
        <label class="dashlbl">Enter Old Password:<span style="color:red;">*</span></label>
        <input type="password" class="form-control input-sm" ID="oldpassword" Name="oldpassword" >
    </div>
	<div class="form-group col-md-12 col-sm-12"style="margin-top:-10px;">
        <label class="dashlbl">New Password:<span style="color:red;">*</span></label>
        <input type="password" class="form-control input-sm" ID="newpassowrd" Name="newpassowrd">
    </div>
	<div class="form-group col-md-12 col-sm-12"style="margin-top:-10px;">
        <label class="dashlbl">Confirm New Password:<span style="color:red;">*</span></label>
        <input type="password" class="form-control input-sm" ID="UConfirmPassword" Name="cnfmnwpswd">
     </div>
	<div class="form-group col-md-12 col-sm-12">
        <input type="button" class="btn btn-primary" onClick="validatePassword()" value="Change Password"style="width:100%;height:45px;"/>
	</div>
             </div>
            </form>
           </div>
          </div>
         </div>
        </div>
       </div>
      </div>
       <div class="tab-pane fade" id="Deactivate">
        <div class="row"style="margin-top:20px;">
    <div class="col-lg-12"style="width:80%;margin-left:2%;">
      <div class="panel panel-default"style="background-color:rgb(248,248,248);">
        <div class="panel-heading"style="height:38px;background-color:rgb(33,115,185);color:white;">
           <label style="font-weight:100;">Deactivate</label>
         </div>
<div class="panel-body">
   <div class="row">
     <form>
    <div class="col-md-12 col-sm-12"style="padding-left:8%;padding-right:8%;height:200px;">
	 

             </div>
            </form>
           </div>
          </div>
         </div>
        </div>
       </div>
      </div>
     </div>
    </div>
   </div>
  </div>
 </div>
</div>

		<div style="background-color:rgb(51,79,147);">
			<iframe  frameborder="0" scrolling="no" src="/GowbellHope/user/Footer.html" style="min-width:100%;height:70px;"></iframe>
		</div>
		<script src="../DashboardJs/jquery.min.js"></script>
		<script src="../DashboardJs/bootstrap.min.js"></script>
        <script src="../DashboardJs/metisMenu.min.js"></script>
        <script src="../DashboardJs/sb-admin-2.js"></script>
        <script  type="text/javascript">
    function validateProfile()
    {
    	 var fname = document.getElementById("SFirstName");
         if (!isValidName(fname)){
             alert("First name should not be blank and Proper format.");
			 fname.style.backgroundColor = "rgb(255,235,233)";
             fname.focus();
			 return false;
         }
         else{
         	fname.style.backgroundColor = "";
			}
         var lname = document.getElementById("SLastName");
         if (!isValidName(lname)){
             alert("Last name should not be blank and Proper format.");
			 lname.style.backgroundColor = "rgb(255,235,233)";
        	 lname.focus();
			 return false;
         }
         else{
         	lname.style.backgroundColor = "";
			}
         var email = document.getElementById("emailId");
         if (!isValidEmailID(email)){
             alert("Email should not be blank and Proper format.");
		     email.style.backgroundColor = "rgb(255,235,233)";
     	     email.focus();
             return false;
         }
         else{
         	email.style.backgroundColor = "";
			}
        	var mobNo = document.getElementById("MobileNo");
         if (!isValidMobileNo(mobNo)){
             alert("Mobile no should not be blank and Proper format.");
			 mobNo.style.backgroundColor = "rgb(255,235,233)";
             mobNo.focus();
             return false;
         }
         else{
         	mobNo.style.backgroundColor = "";
			}
         var fname = document.getElementById("PFirstName");
         if (!isValidName(fname)){
             alert("First name should not be blank and Proper format.");
			 fname.style.backgroundColor = "rgb(255,235,233)";
             fname.focus();
			 return false;
         }
         else{
         	fname.style.backgroundColor = "";
			}
         var lname = document.getElementById("PLastName");
         if (!isValidName(lname)){
             alert("Last name should not be blank and Proper format.");
			 lname.style.backgroundColor = "rgb(255,235,233)";
        	 lname.focus();
			 return false;
         }
         else{
         	lname.style.backgroundColor = "";
			}
         var insname = document.getElementById("InstitutionName");
         if (!isValidName(insname)){
             alert("Institution name should not be blank and Proper format.");
			 insname.style.backgroundColor = "rgb(255,235,233)";
             insname.focus();
			 return false;
         }
         else{
         	insname.style.backgroundColor = "";
			}
         var sdob= document.getElementById("SDob");
         if (!isValidDate(sdob)) {
            alert("Student DOB should not be blank and Proper format.");
            sdob.style.backgroundColor = "rgb(255,235,233)";
            return false;
        }
         var grade = document.getElementById("Grade");
		 if (grade.selectedIndex == 0){
			 alert("Grade should not be blank.");
			 grade.style.backgroundColor =  "rgb(255,235,233)";
			 grade.focus();
			 return false;
		  }
		 var check1 = document.getElementById("Male");
         var check2 = document.getElementById("Female");
		 if (check1.checked == false && check2.checked == false){
			 alert("Gender must be choose.");
			 return false;
		 }
    }
    </script>
    
    <!-- Address form validation -->
    <script type="text/javascript">
        function validateAddress()
         {
             //Validate building name
            var buildingname = document.getElementById("BuildingName");
            if (!isValidAddress(buildingname)) {
                alert("Please recheck your building name.");
				buildingname.style.backgroundColor = "rgb(255,235,233)";
				buildingname.focus();
				return false;
            }
			 else{
				 buildingname.style.backgroundColor = "";
			 }
			 
             //Validate building No
			 var buildingno= document.getElementById("BuildingNo");
             if (!isValidAddress(buildingno)) {
                alert("Please recheck your building no.");
                buildingno.style.backgroundColor = "rgb(255,235,233)";
                buildingno.focus();
                return false;
            }
			else{
				buildingno.style.backgroundColor = "";
			}
             
             var area = document.getElementById("Area");
             if (!isValidAddress(area)) {
                alert("Please recheck your area.");
 				area.style.backgroundColor = "rgb(255,235,233)";
 				area.focus();
 				return false;
             }
 			 else{
 				area.style.backgroundColor = "";
 			 }
 			 
              //Validate street
 			 var street= document.getElementById("Street");
              if (!isValidAddress(street)) {
                 alert("Please recheck your street.");
                 street.style.backgroundColor = "rgb(255,235,233)";
                 street.focus();
                 return false;
             }
 			else{
 				street.style.backgroundColor = "";
 			}
			 
            //Validate locality
            var locality = document.getElementById("Locality");
            if (!isValidAddress(locality)) {
                alert("Please recheck your locality.");
				locality.style.backgroundColor = "rgb(255,235,233)";
                locality.focus();
				return false;
             }
			 else{
				locality.style.backgroundColor = "";
			 }
            
           //Validate Landmark
            var landmark = document.getElementById("Landmark");
            if (!isValidAddress(landmark)) {
                alert("Please recheck your landmark.");
				landmark.style.backgroundColor = "rgb(255,235,233)";
                landmark.focus();
				return false;
             }
			 else{
				landmark.style.backgroundColor = "";
			 }
            
             //Validate country
			 var country = document.getElementById("Country");
			 if (country.selectedIndex == 0){
				 alert("Please select a country.");
				 country.style.backgroundColor = "rgb(255,235,233)";
				 country.focus();
				 return false;
			  }
			  else{
				 country.style.backgroundColor = "";
			  }
			 
			 //Validate state
			 var province = document.getElementById("Province");
			 if (province.selectedIndex == 0){
				 alert("Please select a province or state.");
				 province.style.backgroundColor = "rgb(255,235,233)";
				 province.focus();
				 return false;
			  }
			  else{
				 province.style.backgroundColor = "";
			  }
			 
			//Validate dist
			 var dist = document.getElementById("Dist");
			 if (dist.selectedIndex == 0){
				 alert("Please select a district.");
				 dist.style.backgroundColor = "rgb(255,235,233)";
				 dist.focus();
				 return false;
			  }
			  else{
				 dist.style.backgroundColor = "";
			  }
			 
            //Validate City
			 var city = document.getElementById("City");
			 if (city.selectedIndex == 0){
				 alert("Please select a city.");
				 city.style.backgroundColor =  "rgb(255,235,233)";
				 city.focus();
				 return false;
			  }
			  else{
				 city.style.backgroundColor = "";
			  }
			 
            //Validate pincode
			 var pinCode = document.getElementById("Pincode");
            if (!isValidPinCode(pinCode)) {
               alert("Please recheck your pincode.");
			   pinCode.style.backgroundColor = "rgb(255,235,233)";
               pinCode.focus();
               return false;
             }
			  else{
				 pinCode.style.backgroundColor = "";
			  }       
  }
    </script>
      <!-- changepassword form validation -->
    <script type="text/javascript">
    function validatePassword(){
    	 var upassword = document.getElementById("oldpassword");
		 if (!isValidPassword(upassword)) {
           alert("For security purpose,Your password must contain atleast a capital letter,a small letter,a special character & a number. And it must be between 8 to 16 characters.");
		   upassword.style.backgroundColor = "rgb(255,235,233)";
           upassword.focus();
           return false;
		  }
		 else{
			 upassword.style.backgroundColor = "";
			} 
		 
		var newpassword = document.getElementById("newpassowrd");
		 if (!isValidPassword(newpassword)) {
	       alert("For security purpose,Your password must contain atleast a capital letter,a small letter,a special character & a number. And it must be between 8 to 16 characters.");
		   newpassword.style.backgroundColor = "rgb(255,235,233)";
	       newpassword.focus();
	       return false;
		   }
		else{
		  newpassword.style.backgroundColor = "";
		   }
		 
		 var uconfpass = document.getElementById("UConfirmPassword");
		 if (uconfpass.value != newpassword.value) {
			 alert("Please retype the password correctly.");
			 uconfpass.style.backgroundColor = "rgb(255,235,233)";
		 	 uconfpass.focus();
		 	 return false;
		  }
		 else{
			 uconfpass.style.backgroundColor = "";
			}
    }
    </script>
    
    
	</body>
</html>

