<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page import="com.finvendor.util.RequestConstans"%>
<c:set var="zerovalue" value="<%=RequestConstans.ConstantValues.ZERO_VALUE %>"> </c:set>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>finvendor</title>
<%-- <link href="<%=request.getContextPath() %>/resources/singleasset/css/style.css" type="text/css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/singleasset/js/jquery-latest.min.js"></script> --%>
    <link href="<%=request.getContextPath() %>/resources/singleasset/css/style.css" type="text/css" rel="stylesheet" />
    <link href="<%=request.getContextPath() %>/resources/myprofile/plugins/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath() %>/resources/myprofile/plugins/bootstrap/css/bootstrap-responsive.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath() %>/resources/myprofile/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="<%=request.getContextPath() %>/resources/myprofile/plugins/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	<link href="<%=request.getContextPath() %>/resources/myprofile/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.css" rel="stylesheet" type="text/css"/>
	<link href="<%=request.getContextPath() %>/resources/myprofile/css/reset.css" rel="stylesheet" type="text/css"/>
	<link href="<%=request.getContextPath() %>/resources/myprofile/css/style-metro.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath() %>/resources/myprofile/css/style-II.css" rel="stylesheet" type="text/css"/>
    
    <link href="<%=request.getContextPath() %>/resources/css/style.css" rel="stylesheet" type="text/css"/>
    <!-- Date Picker CSS Starts -->
    <link href="<%=request.getContextPath() %>/resources/myprofile/datepick/jsDatePick_ltr.min.css" rel="stylesheet" type="text/css"/>
    <!-- Date Picker CSS Ends -->
    <!-- File Upload CSSS -->
</head>
<body>
<div class="top_header">
	 <jsp:include page="common/dashboardheader.jsp"></jsp:include>
</div>
<div class="wrapper">
	<div class="text_area"><div class="text_arw"> <a href="<%=request.getContextPath()%>/<%=RequestConstans.MarketAggregators.MARKETAGGREGATORS%>">Market Data Vendors (Aggregators) Directory</a> </div><div class="arw"> <img src="<%=request.getContextPath() %>/resources/singleasset/images/arw.png"  width="22" height="16" /></div> <div class="text_arw">Result</div></div>
	<div class="right_nav_area_1">
	<div class="right_nav_1">
	 <ul>
	 <li><a href="#">INDEX</a></li>
	 </ul>
	</div>
	</div>
	<div class="portlet-body">
		<table class="table table-striped table-bordered table-hover table-full-width" id="sample_1">
			<thead style="background-color: #7BCCA5; color:#FFF;">
					<tr>
						<th style="width: 180px; padding: 0px 0px 29px 0px;">Vendor Name</th>
						<th>Corp<br/>Action <br/>Covered?</th>
						<th>Exchange <br/>Coverage</th>
						<th>Country<br/>Coverage</th>
						<th>Feed Type</th>
						<th>No. of<br/>Data Attribiutes<br/>Covered</th>
						<th>Cost</th>
						<th>Sample <br/>Data</th>
					</tr>
				</thead>
				<tbody>
				<c:choose>
		          <c:when test="${not empty assetClassDataInfoList}">
		          <c:forEach var="assetClassDataInfoList" items="${assetClassDataInfoList}">
				    <tr>
						<td><c:if test="${assetClassDataInfoList.company == 'JP Morgan Fin Corp'}">
								<img src="<%=request.getContextPath() %>/resources/images/JPMorgan.jpg" width="35%" align="left"></img>
								</c:if>
								<c:if test="${assetClassDataInfoList.company == 'Barclays Inc'}">
								<img src="<%=request.getContextPath() %>/resources/images/Barclays.jpg" width="35%" align="left"></img>
								</c:if>
								<c:if test="${assetClassDataInfoList.company == 'AXA Fin Corp'}">
								<img src="<%=request.getContextPath() %>/resources/images/AXA.jpg" width="35%" align="left"></img>
								</c:if>
								<c:if test="${assetClassDataInfoList.company == 'America Fin Corp'}">
								<img src="<%=request.getContextPath() %>/resources/images/America.jpg" width="35%" align="left"></img>
								</c:if>
								<c:if test="${assetClassDataInfoList.company == 'Elite Fin Corp'}">
								<img src="<%=request.getContextPath() %>/resources/images/Elite.jpg" width="35%" align="left"></img>
								</c:if> <span> ${assetClassDataInfoList.company}</span> </td>
						<td>Yes</td>
						<td>${assetClassDataInfoList.exchange_id}</td>
						<td>${assetClassDataInfoList.country_id}</td>
						<td>Eod<br/>Real Time<br/>Historical</td>
						<td>10</td>
						<td>${assetClassDataInfoList.cost_range}</td>
						<td>Link</td>
					</tr>
					</c:forEach>
					</c:when>
					<c:otherwise>
				    <br/><br/>
				        <div><br/>
				      		<h2 align="center" ><span style="color: #FF2B2B; font-size:18px; font-family:open_sansregular;">
				      		No records were found that match the specified search criteria</span></h2>
				      </div>
					 </c:otherwise>
					</c:choose>
				</tbody>
		</table>
	</div>
		<!-- <div class="pannel_area">
					<div class="pannel_top vandor_name_back">Vendor Name</div>
					<div class="pannel_top">Corp<br/>Action <br/>Covered?</div>
					<div class="pannel_top">Exchange <br/>Coverage</div>
					<div class="pannel_top">Country<br/>Coverage</div>
					<div class="pannel_top">Distribution <br/>Method</div>
					<div class="pannel_top">Feed Type</div>
					<div class="pannel_top">No. of<br/>Data Attribiutes<br/>Covered</div>
					<div class="pannel_top">Cost</div>
					<div class="pannel_top">Sample <br/>Data</div>
		</div>
				<div><br/></div>
				<div><br/></div>
				<div><br/></div> -->
			<%-- 	<c:choose>
		          <c:when test="${not empty assetClassDataInfoList}">
				<div class="pannel_text">
					<c:forEach var="assetClassDataInfoList" items="${assetClassDataInfoList}">
					<div>
						<div class="pannel_top_1">
								<c:if test="${assetClassDataInfoList.company == 'JP Morgan Fin Corp'}">
								<img src="<%=request.getContextPath() %>/resources/images/JPMorgan.jpg" width="95%" align="left"></img>
								</c:if>
								<c:if test="${assetClassDataInfoList.company == 'Barclays Inc'}">
								<img src="<%=request.getContextPath() %>/resources/images/Barclays.jpg" width="95%" align="left"></img>
								</c:if>
								<c:if test="${assetClassDataInfoList.company == 'AXA Fin Corp'}">
								<img src="<%=request.getContextPath() %>/resources/images/AXA.jpg" width="95%" align="left"></img>
								</c:if>
								<c:if test="${assetClassDataInfoList.company == 'America Fin Corp'}">
								<img src="<%=request.getContextPath() %>/resources/images/America.jpg" width="95%" align="left"></img>
								</c:if>
								<c:if test="${assetClassDataInfoList.company == 'Elite Fin Corp'}">
								<img src="<%=request.getContextPath() %>/resources/images/Elite.jpg" width="95%" align="left"></img>
								</c:if>
								<br/><br/> ${assetClassDataInfoList.company}
							</div>
							<div class="pannel_top_2"> Y</div>
							<div class="pannel_top_1">${assetClassDataInfoList.exchange_id}</div>
							<div class="pannel_top_2">${assetClassDataInfoList.country_id}</div>
							<div class="pannel_top_1">${assetClassDataInfoList.distribution_mode_name}</div>
							<div class="pannel_top_2">Eod<br/>Real Time<br/>Historical</div>
							<div class="pannel_top_1">10</div>
							<div class="pannel_top_2">${assetClassDataInfoList.cost_range}</div>
							<div class="pannel_top_1">Link Data</div>
					</div> 
					<div><br></br><br></br><br></br></div>
					
					<tr>
					   
					</tr>
					</c:forEach>
		        	</div>
			<div class="clear"></div>
			<div class="mar_num ">
				<div class="right_nav_1">
				 <ul>
				 	<li><a href="#"> < </a></li>
				 	<li><a href="#">1</a></li>
				  	<li><a href="#">2</a></li>
				   	<li><a href="#">3</a></li>
				    <li><a href="#">4</a></li>
				    <li><a href="#">5</a></li>
				    <li><a href="#"> > </a></li>
				 </ul>
				</div>
			</div>
   </c:when>
    <c:otherwise>
    <br/><br/>
        <div><br/>
      		<h2 align="center" ><span style="color: #FF2B2B; font-size:18px; font-family:open_sansregular;">
      		No records were found that match the specified search criteria</span></h2>
      </div>
	 </c:otherwise>
  </c:choose>  --%>
  
  
  
</div>

<div class="footer_area">
	 <jsp:include page="common/dashboardfooter.jsp"></jsp:include>
</div>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/singleasset/js/script.js"></script>
</body>
</html>
