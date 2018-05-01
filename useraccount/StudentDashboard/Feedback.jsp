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
    <link href="/GowbellHope/useraccount/DashboardCss/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="/GowbellHope/useraccount/DashboardCss/sb-admin-2.css" rel="stylesheet"/>
    <link href="/GowbellHope/useraccount/DashboardCss/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="/GowbellHope/useraccount/DashboardCss/DashboardContent.css" rel="stylesheet"/>
    <!-- <link href="/GowbellHope/UserAccount/DashboardCss/Dashboardjavascript.js" rel="stylesheet"/> -->
    <!--<link href="/GowbellHope/admin/TableCss&JS/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet"/>
    <link href="/GowbellHope/admin/TableCss&JS/datatables-responsive/dataTables.responsive.css" rel="stylesheet"/>-->
    <script type="text/javascript">
		    // document.getElementById('photo').addEventListener('change', readURL, true);
		    function readURL(){
		       var file = document.getElementById("photo").files[0];
		       var reader = new FileReader();
		       reader.onloadend = function()
		       {
		    	  document.getElementById('DisplayPhoto').innerHTML = "";
		          document.getElementById('DisplayPhoto').style.backgroundImage = "url(" + reader.result + ")";        
		       }
		       if(file)
		       {
		          reader.readAsDataURL(file);
		       }
		       else{}
		    }
    	</script> 
    	 
	    <script type="text/javascript">
		    function readURLEdit(){
		        var file = document.getElementById("editphoto").files[0];
		        var reader = new FileReader();
		        reader.onloadend = function()
		        {
		     	  document.getElementById('editPhoto').innerHTML = "";
		          document.getElementById('editPhoto').style.backgroundImage = "url(" + reader.result + ")";        
		        }
		        if(file)
		        {
		           reader.readAsDataURL(file);
		        }
		        else
		        {}
		     }
	    </script> 
    <style type="text/css">
    #DisplayPhoto 
    {
	    background-image:url('');
	    background-size:cover;
	    background-position: center;
	    height: 170px; width: 170px;
	    border: 1px solid #bbb;
    }
    #editPhoto
    {
	   background-image:url('');
	   background-size:cover;
	   background-position: center;
	   height: 170px; width: 170px;
	   border: 1px solid #bbb;
    }
    </style>
    
	</head>
	
	<body>
		<div>
			<iframe frameborder="0" scrolling="no" src="/GowbellHope/user/MasterHeader.jsp" style="min-width:100%;height:150px;"></iframe>
		</div>
		
		<!-- Database Connectivity (Begin) -->
		<sql:setDataSource var="confluence" driver="org.postgresql.Driver" url="jdbc:postgresql://127.0.0.1:5432/Local_GowbellHope" user="postgres" password="Kermit99"/>
		<sql:query var="listFeedback" dataSource="${confluence}" sql="select * from \"Feedback\" where \"StudentID\" =?">
		<sql:param value="${NameAccountID}"></sql:param>
		</sql:query>
	    <!-- Database Connectivity (End) -->
	    
       <div style="margin-top:20px;"></div>
	   <div class="navbar-default sidebar " role="navigation" style="margin-top:0.2px;border-top:1px solid rgb(231,231,231);">
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
	  
	  <div id="page-wrapper"style="height:700px;">
           <div class="row">
               <div class="col-lg-12">
                   <h2 class="page-header"style="color:rgb(33,115,185)">Feedback</h2>
               </div>
           </div>
           <div class="row">
               <div class="col-lg-12">
                  <div class="panel panel-default"style="box-shadow: 0px 5px 10px 0px silver;">
                    <div class="panel-body">
                       <div class="row"style="float:right;margin-right:2px;">
                          <!--<button class="btn btn-primary btn-xs" id="Addbtn" data-title="Add" data-toggle="modal" data-backdrop="static" data-keyboard="false" data-target="#add"><span class="glyphicon glyphicon-plus"></span> Add Feedback</button> -->  
                            <c:choose> 
                              <c:when test="${listFeedback.rowCount == 0}">
	                               <button class="btn btn-primary btn-xs" id="Addbtn" data-title="Add" data-toggle="modal" data-backdrop="static" data-keyboard="false" data-target="#add"><span class="glyphicon glyphicon-plus"></span> Add Feedback</button>
	                               <button class="btn btn-primary btn-xs" id="Editbtn" aria-hidden="true"  onclick="Edit()" ><span class="glyphicon glyphicon-pencil" ></span> Edit Feedback</button>
                               </c:when> 
                               <c:otherwise>
                              <button class="btn btn-primary btn-xs" id="Addbtn" onclick="Add()" ><span class="glyphicon glyphicon-plus"></span> Add Feedback</button>
	                              <c:forEach var="N" items="${listFeedback.rows }">
	                              <button class="btn btn-primary btn-xs" id="Editbtn" onclick="checkBoxUses('${N.Description}','${N.Photo }')" aria-hidden="true" data-title="Edit" data-backdrop="static" data-keyboard="false" data-toggle="modal" data-target="#edit"><span class="glyphicon glyphicon-pencil" ></span> Edit Feedback</button>
	                             </c:forEach> 
                             </c:otherwise>
                           </c:choose>
                        </div>
                        <div class="tab-content" style="margin-top:10px;">
                           <div class="tab-pane fade in active" id="SchoolInformation-1"><br/>
                              <table style="width:100%;" id="mytable" class="table table-striped table-bordered table-hover" >
                                 <thead style="background-color:rgb(33,115,185);">
                                    <tr style="background-color:grey;color:white;">
                                       <th style="margin-right:20em;width:1em"><input type="checkbox" id="checkall"/></th>
                                       <th style="width:10em">Feedback Date</th>
                                       <th style="width:40em">Feedback Description</th>
                                       <th>Status</th>
                                    </tr>
                                 </thead>
                               <tbody>                        
                                  <c:choose>
                                  <c:when test="${listFeedback.rowCount == 0}">
                                   <tr class="gradeX">
	                                   <td><input type="checkbox" id="checkFeedback" class="checkthis"/></td>
	                                    <td></td>
	                                    <td></td>
	                                    <td></td>
                                   </tr>
                                  </c:when>
                                  <c:otherwise>
                                       <c:forEach var="N" items="${listFeedback.rows }">
                                       <tr class="gradeX">
	                                       <td><input type="checkbox" id="checkFeedback" class="checkthis"/></td>
	                                       <td ><c:out value="${N.FeedbackDate}" /></td>
	                                       <td ><c:out value="${N.Description}" /></td>
	                                       <td><c:out value="${N.FeedbackStatusUpdate}" /></td>
                                       </tr>
                                      </c:forEach>
                                   </c:otherwise>
                                        </c:choose>
                                     </tbody>
                                  </table>
                               </div>
                           </div><!--  tab content end -->
                       </div><!-- panel body end -->
                   </div>
               </div>
           </div>
       </div>
       
       <form id="add feedback" action="/GowbellHope/Feedback" method="post" enctype="multipart/form-data">         
       <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="add" aria-hidden="true">
         <div class="modal-dialog" >
    	   <div class="modal-content">
          	<div class="modal-header" style="background-color:rgb(33,115,185);">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true" ><span class="glyphicon glyphicon-remove"  aria-hidden="true"></span></button>
              <h4 class="modal-title custom_align" id="Heading"><span style="color:white">Add Feedback</span></h4>
      		</div>
          	<div class="modal-body">
              <div class="form-group col-md-6 col-sm-6"style="width:30%;">
	               <label class="dashlbl">Name's Photo:<span style="color:red;">*</span></label>
	               <div class="form-control input-sm"   id="DisplayPhoto"  ><img  src="/GowbellHope/images/dummy1.jpg"/></div><br/>
	               <input type="File" id="photo" name="photo" onchange="readURL()" >
              </div>
	       	  <div class="form-group col-md-6 col-sm-6" style="float:right;width:65%;;">
			       <label class="dashlbl">Description:<span style="color:red;">*</span></label>
			       <textarea class="form-control input-sm" id="description" name="description" style="width:350px;height:170px;"></textarea>
	          </div>
      		</div>
          <div class="modal-footer "style="margin-top:39%;background-color:rgb(248,248,248);">
       		<input type="submit" class="btn btn-primary" value="Save"style="height:30px;line-height:10px;"/>
      	 </div>
       </div>
      </div>
     </div>
    </form>
    <form id="edit feedback" action="/GowbellHope/EditFeedback" method="post" enctype="multipart/form-data">
       <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
         <div class="modal-dialog" >
           <div class="modal-content">
             <div class="modal-header" style="background-color:rgb(33,115,185);">
	              <button type="button" class="close" data-dismiss="modal" aria-hidden="true" ><span class="glyphicon glyphicon-remove"  aria-hidden="true"></span></button>
	              <h4 class="modal-title custom_align" id="Heading"><span style="color:white">Edit Feedback</span></h4>
             </div>
             <div class="modal-body">
               <div class="form-group col-md-6 col-sm-6"style="width:30%;">
               <label class="dashlbl">Name's Photo:<span style="color:red;">*</span></label>
               <div class="form-control input-sm"   id="editPhoto" style="width:170px;height:170px;"><img  src="/GowbellHope/images/dummy1.jpg"/></div><br/>
               <input type="File" id="editphoto" name="editphoto" onchange="readURLEdit()" >
              </div>
              <div class="form-group col-md-6 col-sm-6" style="float:right;width:65%;">
	            <label class="dashlbl">Description:<span style="color:red;">*</span></label>
	            <textarea class="form-control input-sm" id="editDescription" name="description" style="width:350px;height:170px;"></textarea>
              </div>
             </div>
          <div class="modal-footer "style="margin-top:39%;background-color:rgb(248,248,248);">
       		<input type="submit" class="btn btn-primary" value="Save"style="height:30px;line-height:10px;"/>
          </div>
       </div>
      </div>
     </div>
    </form>
 		<div style="background-color:rgb(51,79,147);">
			<iframe  frameborder="0" scrolling="no" src="/GowbellHope/user/Footer.html" style="min-width:100%;height:70px;"></iframe>
		</div>
		<script src="/GowbellHope/useraccount/DashboardJs/jquery.min.js"></script>
		<script src="/GowbellHope/useraccount/DashboardJs/bootstrap.min.js"></script>
        <script src="/GowbellHope/useraccount/DashboardJs/metisMenu.min.js"></script>
        <script src="/GowbellHope/useraccount/DashboardJs/sb-admin-2.js"></script> 
         <!-- DataTables JavaScript -->
		  <!-- <script src="/GowbellHope/admin/TableCss&JS/datatables/js/jquery.dataTables.min.js"></script>
		  <script src="/GowbellHope/admin/TableCss&JS/datatables-plugins/dataTables.bootstrap.min.js"></script>
		  <script src="/GowbellHope/admin/TableCss&JS/datatables-responsive/dataTables.responsive.js"></script> -->
		 <!--<script>
		    $(document).ready(function() {
		        $('#dataTables-example').DataTable({
		            responsive: true
		        });
		    });
        </script> -->
		<script >
			$("#checkall").click(function(){
			    $('input:checkbox').not(this).prop('checked', this.checked);
			});
		</script>
		
 		<script type="text/javascript">
		    function checkBoxUses(Description,Photo)
		    {
		       	document.getElementById("editDescription").value=Description;
		        document.getElementById('editPhoto').innerHTML = ''; 
		        var file= Photo;
		        var src="/GowbellHope/images/feedback/"+ file ;
		        document.getElementById('editPhoto').style.backgroundImage = 'url('+src+')';
		      }
    	</script>
    	 
	    <script type="text/javascript">
		    function Add()
		    {
		    	alert("It's not possible to give feedback more than one time!");
		    }
		    function Edit()
		    {
		    	alert("Please give your feedback!");
		    }
	    </script>
	</body>
</html>

