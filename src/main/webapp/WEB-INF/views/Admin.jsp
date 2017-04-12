<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/admin.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/admin.js" /></script>

</head>
<body>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
	<br>
	<br>
	<br>
	<br>
<div id="fullscreen_bg" class="fullscreen_bg"/>
<div class="container">
    <div class="row">
        <div class="col-lg-5 col-md-12 col-sm-8 col-xs-9 bhoechie-tab-container">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 bhoechie-tab-menu">
              <ul class="list-group">
                <a href="#" class="list-group-item active">
                  <br/><br/><i class="glyphicon glyphicon-home"></i> Home<br/><br/>
                  </a>
                <a href="#" class="list-group-item ">
                  <br/><br/><i class="glyphicon glyphicon-user"></i> Users<br/><br/>
                </a>
                <a href="#" class="list-group-item">
                  <br/><br/><h4 class="glyphicon glyphicon-hourglass"></h4> Study<br/><br/>
                </a>
              </ul>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9 bhoechie-tab">
                <!-- flight section -->
                <div class="bhoechie-tab-content active">
                    <center>
                      <h1 class="glyphicon glyphicon-wrench" style="font-size:14em;color:#6C3483"></h1>
                      <h2 style="margin-top: 0;color:#00001a">Welcome</h2>
                      <h3 style="margin-top: 0;color:#00001a">Administrator HomePage</h3>
                    </center>
                </div>
                <!-- train section -->
                <div class="bhoechie-tab-content">
                    <center>
                      <h1 class="glyphicon glyphicon-user" style="font-size:12em;color:#6C3483"></h1>
                      <h2 style="margin-top: 0;color:#00001a"><a href="display_user" class="btn btn-sm btn-primary btn-block" role="button">Manage Users</a></h2>
                      <h3 style="margin-top: 0;color:#00001a">User Settings</h3>
                    </center>
                </div>
    
                <!-- hotel search -->
                <div class="bhoechie-tab-content">
                    <center>
                      <h1 class="glyphicon glyphicon-hourglass" style="font-size:12em;color:#6C3483"></h1>
                      <h2 style="margin-top: 0;color:#00001a"><a href="display_study" class="btn btn-sm btn-primary" role="button">Manage Study</a></h2>
                      <h3 style="margin-top: 0;color:#00001a">Study Settings</h3>
                    </center>
                </div>
            </div>
        </div>
  </div>
</div>
</body>
</html>