<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<!-- [if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> -->
<meta name="viewport"
	content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
<meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE" />
<title>FinVendor</title>
<link href="<%=request.getContextPath() %>/resources/css/style.css" rel="stylesheet" />
<link href="<%=request.getContextPath() %>/resources/css/reset.css" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/jquery.bxslider.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/superfish.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/tabs.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/formsearch.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/newsingleasset/css/main.css" />
 <script type="text/javascript">
	function ons() {
		//window.alert('ccc');
	}
</script>
</head>
<body class="container">
	<div class="container">
	    <jsp:include page="common/header.jsp"></jsp:include>
	</div>
 <jsp:include page="common/menu.jsp"></jsp:include>
<div class="portlet-body form">
<div class="container">
<div><br></div>
<div class="text_area_1"><div class="text_arw">Solutions</div><div class="arw"> <img src="<%=request.getContextPath() %>/resources/newsingleasset/images/arw.png"  width="22" height="16" /></div> <div class="text_arw"> Market Data Aggregators</div></div>
<div class="search_e">
			<div class="search_radio">
			  <label class="radio">
			    <input type="radio" name="radios" checked value="savedsearch" id="savesearch">
			    <span class="outer"><span class="inner"></span></span></label>
			</div>
			<div class="search_radio_text">Search Using Saved Searches</div>
		</div>
		<div><br></div>
	<div class="login-wrap-pop-tag-aggregator">
		   <div class="login-form-content" id="savedsearchform">
		       <div class="login-form" align="left">
				 <div class="label">Saved Searches</div>
				     <select name="savedsearch" class="input" style="width: 24.5%">
				     	 <option value ="-SELECT-" selected="selected"> -SELECT- </option>
				     	 <option>Saved Searches1</option>
				     	 <option>Saved Searches2</option>
					     <option>Saved Searches3</option>
					     <option>Saved Searches4</option>
					     <option>Saved Searches5</option>
				     </select>
				     <div class="clearfix"></div>
    	 		 </div>
    	 		 <div><br></div>
    	 		 <div class="login-ft" style="padding:0px 210px">
						<p>
							<input type="submit" value="Search" class="login" />
						</p>
						<p>
							<input type="reset" value="Clear Search" class="login" />
						</p>
						<div class="clearfix"></div>
					</div>
		   </div>
		</div>
		<div class="search_e">
			<div class="search_radio">
			<label class="radio">
			    <input id="singleform" type="radio" name="radios" checked>
			    <span class="outer"><span class="inner"></span></span></label>
			</div>
			<div class="search_radio_text">Single Asset Class Vendor Search</div>
		</div>
		<div class="search_e">
			<div class="search_radio">
				<label class="radio">
				    <input id="multiform" type="radio" name="radios" checked>
				    <span class="outer"><span class="inner"></span></span>
			    </label>
			</div>
			<div class="search_radio_text">Multi Asset Class Vendor Search</div>
		</div>
		<div><br></div>
		<div><br></div>
		  <div class="login-wrap-pop-tag-aggregator">
	    <div class="login-form-content" id="searchsingleform">
	    <form action="<%=request.getContextPath() %>/singleassetsearchresult" method="post">
	        <jsp:include page="marketaggregators/singleassetinfoclass.jsp"></jsp:include>
		</form>
		</div>
		</div>
		<div class="login-wrap-pop-tag-aggregator">
		 <div class="login-form-content" id="searchmultiform">
		 <form action="<%=request.getContextPath() %>/multiassetsearchresult" method="post">
			 <jsp:include page="marketaggregators/multiassetinfoclass.jsp"></jsp:include>
         </form>
		</div> 
	</div>  
</div>
<div><br/></div>
<div><br/></div>
</div>

<div class="container">
		<jsp:include page="common/newfooter.jsp"></jsp:include>
</div>
</body>
</html>