
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
    <link href="../DashboardCss/Dashboardjavascript.js" rel="stylesheet"/>
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
							<a href="#"><i class="fa fa-lock" aria-hidden="true"style="color:rgb(251,188,5)"></i> Login & Security<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li>
                                    <a href="UpdatePersonalInfo.html"><i class="glyphicon glyphicon-arrow-right admin-sb-link"style="font-size:10px" class="fa"></i> Update Personal Information</a>
                                </li>
                                <li>
                                    <a href="ChangePassword.html"><i class="glyphicon glyphicon-arrow-right admin-sb-link"style="font-size:10px" class="fa"></i> Change Password</a>
                                </li>
                                <li>
                                    <a href="Deactivate.html"><i class="glyphicon glyphicon-arrow-right admin-sb-link"style="font-size:10px" class="fa"></i> Deactivate Account</a>
                                </li>
							</ul>
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
                             <a href="ExamResult.jsp"><i class="glyphicon glyphicon-search"style="font-size:12px;color:rgb(234,67,53)"></i> Exam Results11</a>
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
				<div class="col-lg-12"style="width:61%;">
					<h3 class="page-header">Student Exam Result</h3>
				</div> 
			</div> 	
 		<div class="row">
             <div class="col-lg-12">
                 <div class="panel panel-default"style="box-shadow: 0px 5px 10px 0px silver;">
                    <div class="panel-body">
	                      <div class="col-lg-12"style="width:60%;margin-left:2%;">
        <div class="panel panel-default"style="background-color:rgb(248,248,248);">
          <div class="panel-heading"style="height:38px;background-color:rgb(33,115,185);color:white;">
            
             </div>
		   <div class="panel-body">
		   <div class="row">
		     <form>
		    <div class="col-md-12 col-sm-12"style="padding-left:8%;padding-right:8%;">
			 <div class="form-group col-md-12 col-sm-12">
		        <label class="dashlbl">Select Exam:<span style="color:red;">*</span></label>
		       <select class="form-control input-sm" ID="Exam">
				<option>-- Select Exam --</option>
		        <option value="">School Level</option>
		        <option value="">District Level</option>
		        <option value="">State Level</option>
			   </select>
		    </div>
			<div class="form-group col-md-12 col-sm-12"style="margin-top:-10px;">
		       <label class="dashlbl">Select Year:<span style="color:red;">*</span></label>
		       <select class="form-control input-sm" ID="Year">
				<option>-- Select Year --</option>
		        <option value="">2016</option>
		        <option value="">2017</option>
			   </select>
		    </div>
			<div class="form-group col-md-12 col-sm-12"style="margin-top:-10px;">
		       <label class="dashlbl">Student DOB:<span style="color:red;">*</span></label>
		 <input type="text"class="form-control input-sm" ID="StuDob" Name="StuDob" placeholder="Student DOB *" onfocus="(this.type='date')" onblur="if(this.value==''){this.type='text'}">   	 
		     </div>
		     <div class="col-md-12 col-xs-12"style="margin-top:-10px;">
		      <label class="dashlbl">Student Roll ID:<span style="color:red;">*</span></label>
	          <input type="text" class="form-control input-sm" ID="StudentRoll" Name="StudentRoll">
	       </div>
			<div class="form-group col-md-12 col-sm-12"style="margin-top:15px;">
		        <input type="button" class="btn btn-primary" onClick="validatePassword()" value="View Result"style="width:100%;height:45px;"/>
			</div>
		             </div>
		            </form>
		           </div>
		          </div><!-- panel body end -->
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
	</body>
</html>

