<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>.topnav { 
 	font-size: 0.8em;
  color: #000;
 	background-color: #FFCF29;
 	border: 1px #00009C solid;
 	padding: 0.5em;
}
</style>
<script type="text/javascript" src="js/autoBreadcrumbs.js"></script>
</head>
<body>

<div class="inner-breadcrumb">
  <div class="container">
  
    <ul>
      <li><a href="#">Home</a></li>
      <li class="li-spr">/</li>
      <li><a href="#">About</a></li>
      <li class="li-spr">/</li>
      <li>Vision Statement</li>
    </ul>
    <div class="clearfix"></div>
  </div>
</div>
<div class="container">
<div class="inner-left-wrap">

     <div class="tabs">
    <ul class="tab-links">
        <li class="active"><a href="#tab1">MY ACCOUNT</a></li>
        <li><a href="#tab2">MY LISTINGS</a></li>
        <li><a href="#tab3">MY STATS</a></li>
        <li><a href="#tab4">ANALYTICS</a></li>
    </ul>
 
    <div class="tab-content">
        <div id="tab1" class="tab active">
            <h1 style="font-size:20px">Account Summary!</h1>
            <p>
            <sec:authorize access="hasRole('ROLE_VENDOR')">
            <sec:authentication property="principal" />
            
            </sec:authorize>
            
            
            </p>
        </div>
 
        <div id="tab2" class="tab">
            <p>Tab #2 content goes here!</p>
            <p>Donec pulvinar neque sed semper lacinia. Curabitur lacinia ullamcorper nibh; quis imperdiet velit eleifend ac. Donec blandit mauris eget aliquet lacinia! Donec pulvinar massa interdum risus ornare mollis. In hac habitasse platea dictumst. Ut euismod tempus hendrerit. Morbi ut adipiscing nisi. Etiam rutrum sodales gravida! Aliquam tellus orci, iaculis vel.</p>
        </div>
 
        <div id="tab3" class="tab">
            <p>Tab #3 content goes here!</p>
            <p>Donec pulvinar neque sed semper lacinia. Curabitur lacinia ullamcorper nibh; quis imperdiet velit eleifend ac. Donec blandit mauris eget aliquet lacinia! Donec pulvinar massa interdum ri.</p>
        </div>
 
        <div id="tab4" class="tab">
            <p>Tab #4 content goes here!</p>
            <p>Donec pulvinar neque sed semper lacinia. Curabitur lacinia ullamcorper nibh; quis imperdiet velit eleifend ac. Donec blandit mauris eget aliquet lacinia! Donec pulvinar massa interdum risus ornare mollis. In hac habitasse platea dictumst. Ut euismod tempus hendrerit. Morbi ut adipiscing nisi. Etiam rutrum sodales gravida! Aliquam tellus orci, iaculis vel.</p>
        </div>
    </div>
</div>
     </div>
    <div class="clearfix"></div>
</div>

</body>
</html>