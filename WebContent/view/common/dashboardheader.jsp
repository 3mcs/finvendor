<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.finvendor.util.RequestConstans"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="l" uri="/WEB-INF/finvendor.tld" %>
<c:set var="consumerinviteanrfpmarketdataneeds" value="<%=RequestConstans.Consumer.CONSUMER_INVITE_RFP_MARKET_DATA_NEEDS %>"> </c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<div class="wrapper">
	<div class="logo"><img src="<%=request.getContextPath() %>/resources/singleasset/images/logo.png" width="100%" /></div>
	<div class="area">
	<form class="demo">
	<span class="seclect">
	   <div class="text_area_1"> Welcome, <c:out value="${fn:toUpperCase(username)}" />  </div> <img src="<%=request.getContextPath() %>/resources/singleasset/images/user.png" width="48" height="48" /></span>
		   <select class="left" onchange="userCheck(this.value)">
			<option value="settings">Settings</option>
			<option value="logout">Logout </option>
		  </select>  
		  <%-- <a class="left" href="<%=request.getContextPath() %>/logout" style=" font-family: Raleway,sans-serif; font-size: 13px;">Logout</a> --%>
	  </form>
	</div>
	<div class="area_1">
	<div class="ic"><%-- <img src="<%=request.getContextPath() %>/resources/singleasset/images/fn.png" width="19" height="19" /> --%></div>
	<div class="ic_text"><span><a href="#"></a></span> 
	</div>
	<div class="ic"> <img src="<%=request.getContextPath() %>/resources/singleasset/images/msg.png" width="20" height="13" /></div>
	<div class="ic_text">CONTACT</div>
	</div>
	<div class="menu">
	<div id='cssmenu'>
	<ul>
	   <li><a href='#'>Solutions <div class="ar"><img src="<%=request.getContextPath() %>/resources/singleasset/images/downArrow.png" width="9" height="5" /></div></a>
		   <ul>
		     <li><a  href="<%=request.getContextPath()%>/<%=RequestConstans.MarketAggregators.MARKETAGGREGATORS%>">Market Data Vendors (Aggregators) Directory</a></li>
			 <li><a href="#">Trading Application Vendors Directory</a></li>
			 <li><a href="#">Financial Analytics Application Vendors Directory</a></li>
			 <li><a href="#">Financial Research Report Providers Directory</a></li>
			 <li> <a href="#" >Advanced Financial Vendors Directory</a></li>    
		   </ul>
	   </li>
	   <li><a href='#'> Services <div class="ar"><img src="<%=request.getContextPath()%>/resources/singleasset/images/downArrow.png" width="9" height="5" /></div></a>
		   <ul>
		      <li><a href="#">Data Aggregator Due diligence</a></li>
			  <li ><a href="#">Trading Application providers due diligence</a></li>
			  <li ><a href="#" >Analytics Application providers due diligence</a></li>
			  <li ><a href="#">Research Report Providers due diligence</a></li>
			  <li ><a href="#">IT Consulting</a></li>   
		   </ul>
      </li>
	   <li><a href='#'>Resources <div class="ar"><img src="<%=request.getContextPath() %>/resources/singleasset/images/downArrow.png" width="9" height="5" /></div></a>
		   <ul>
		         <li><a href="#Brochures" >Brochures</a></li>
				 <li><a href="#" >Whitepapers</a></li>
				 <li><a href="#">Blogs</a></li>
				 <li><a href="#">Case Studies</a></li>
				 <li><a href="#" >Spotlights</a></li>
		    </ul>
	   </li>
	   <li><a href="<%=request.getContextPath()%>/<%=RequestConstans.Vendor.VENDOR_RFP_INBOX%>?RaYUnA=${l:encrypt(username)}">RFP Inbox <div class="ar"><img src="<%=request.getContextPath() %>/resources/singleasset/images/downArrow.png" width="9" height="5" /></div></a>
	   </li>
	</ul>
	</div>
	</div>
	<!--  Vendor Dashboard info--- -->
	<c:if test="${not empty myprofiletab }">
	 <div class="text_area"><div class="text_arw"> <a href="<%=request.getContextPath()%>/<%=RequestConstans.Vendor.VENDOR_MY_PROFILE%>?RaYUnA=${l:encrypt(username)}">My Profile</a> </div><div class="arw"> <img src="<%=request.getContextPath() %>/resources/singleasset/images/arw.png"  width="22" height="16" /></div> <div class="text_arw">Information</div></div>
	</c:if>
	<c:if test="${not empty myofferingstab }">
	 <div class="text_area"><div class="text_arw"> <a href="<%=request.getContextPath()%>/<%=RequestConstans.Vendor.VENDOR_MY_OFFERINGS%>?RaYUnA=${l:encrypt(username)}">My Offerings</a> </div><div class="arw"> <img src="<%=request.getContextPath() %>/resources/singleasset/images/arw.png"  width="22" height="16" /></div> <div class="text_arw">Information</div></div>
	</c:if>
	<c:if test="${not empty RFPInbox}">
	 <div class="text_area"><div class="text_arw"> <a href="<%=request.getContextPath()%>/<%=RequestConstans.Vendor.VENDOR_RFP_INBOX%>?RaYUnA=${l:encrypt(username)}">RFP Inbox</a> </div><div class="arw"> <img src="<%=request.getContextPath() %>/resources/singleasset/images/arw.png"  width="22" height="16" /></div> <div class="text_arw">Information</div></div>
	</c:if>
	
	<!-- Consumer Dashboard info--- -->
	
	<c:if test="${not empty consumerMyProfiletab }">
	 <div class="text_area"><div class="text_arw"> <a href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_MY_PROFILE%>?RaYVeMu=${l:encrypt(username)}">My Profile</a> </div><div class="arw"> <img src="<%=request.getContextPath() %>/resources/singleasset/images/arw.png"  width="22" height="16" /></div> <div class="text_arw">Information</div></div>
	</c:if>
	
	<c:if test="${not empty consumerMyOfferingstab }">
	 <div class="text_area"><div class="text_arw"> <a href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_MY_OFFERINGS%>?RaYVeMu=${l:encrypt(username)}">My Offerings</a> </div><div class="arw"> <img src="<%=request.getContextPath() %>/resources/singleasset/images/arw.png"  width="22" height="16" /></div> <div class="text_arw">Information</div></div>
	</c:if>
	<c:if test="${not empty consumerInviteAnRFP }">
	 <div class="text_area"><div class="text_arw"> <a href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_INVITE_AN_RFP%>?RaYVeMu=${l:encrypt(username)}" onclick="consumerInviteRFPModes('${consumerinviteanrfpmarketdataneeds}');">Invite An RFP</a> </div><div class="arw"> <img src="<%=request.getContextPath() %>/resources/singleasset/images/arw.png"  width="22" height="16" /></div> <div class="text_arw">Information</div></div>
	</c:if>
	<div class="right_nav_area">
		  <div class="right_nav">  
		 <ul>
		 <!-- Vendor Dashboard tab's -->
		  <c:if test="${not empty myprofiletab }">
		   <li><a class="active" href="<%=request.getContextPath()%>/<%=RequestConstans.Vendor.VENDOR_MY_PROFILE%>?RaYUnA=${l:encrypt(username)}">My Profile</a></li>
		   <li><a class="#" href="<%=request.getContextPath()%>/<%=RequestConstans.Vendor.VENDOR_MY_OFFERINGS%>?RaYUnA=${l:encrypt(username)}">My Offerings</a></li>
		   <li><a class="#" href="#">My Stats</a></li>
		   <li><a class="#" href="#">My Blog</a></li>
		   </c:if>
		    <c:if test="${not empty myofferingstab }">
		   <li><a class="#" href="<%=request.getContextPath()%>/<%=RequestConstans.Vendor.VENDOR_MY_PROFILE%>?RaYUnA=${l:encrypt(username)}">My Profile</a></li>
		   <li><a class="active" href="<%=request.getContextPath()%>/<%=RequestConstans.Vendor.VENDOR_MY_OFFERINGS%>?RaYUnA=${l:encrypt(username)}">My Offerings</a></li>
		   <li><a class="#" href="#">My Stats</a></li>
		   <li><a class="#" href="#">My Blog</a></li>
		   </c:if>
		   <c:if test="${not empty RFPInbox}">
			   <li><a class="#" href="<%=request.getContextPath()%>/<%=RequestConstans.Vendor.VENDOR_MY_PROFILE%>?RaYUnA=${l:encrypt(username)}">My Profile</a></li>
			   <li><a class="#" href="<%=request.getContextPath()%>/<%=RequestConstans.Vendor.VENDOR_MY_OFFERINGS%>?RaYUnA=${l:encrypt(username)}">My Offerings</a></li>
		 	   <li><a class="active" href="<%=request.getContextPath()%>/<%=RequestConstans.Vendor.VENDOR_RFP_INBOX%>?RaYUnA=${l:encrypt(username)}">RFP Inbox</a></li>
			</c:if>
			
			<!-- Consumer Dashboard tab's -->
			
			<c:if test="${not empty consumerMyProfiletab }">
			   <li><a class="active" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_MY_PROFILE%>?RaYVeMu=${l:encrypt(username)}">My profile</a></li>
			   <li><a class="#" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_MY_OFFERINGS%>?RaYVeMu=${l:encrypt(username)}">My Subscription</a></li>
			   <li><a class="#" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_INVITE_AN_RFP%>?RaYVeMu=${l:encrypt(username)}">Invite an RFP</a></li>
			   <li><a class="#" href="#">Search vendors</a></li>
			   <li><a class="#" href="#">Newsletters & Alerts</a></li>
			   <li><a class="#" href="#">My Blog</a></li>
			   <li><a class="#" href="#">My History</a></li>
			   <li><a class="#" href="#">My Statistics</a></li>
			   <li><a class="#" href="#">Invite Your team</a></li>
		   </c:if>
			<c:if test="${not empty consumerMyOfferingstab }">
			   <li><a class="#" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_MY_PROFILE%>?RaYVeMu=${l:encrypt(username)}">My profile</a></li>
			   <li><a class="active" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_MY_OFFERINGS%>?RaYVeMu=${l:encrypt(username)}">My Subscription</a></li>
			   <li><a class="#" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_INVITE_AN_RFP%>?RaYVeMu=${l:encrypt(username)}">Invite an RFP</a></li>
			   <li><a class="#" href="#">Search vendors</a></li>
			   <li><a class="#" href="#">Newsletters & Alerts</a></li>
			   <li><a class="#" href="#">My Blog</a></li>
			   <li><a class="#" href="#">My History</a></li>
			   <li><a class="#" href="#">My Statistics</a></li>
			   <li><a class="#" href="#">Invite Your team</a></li>
		   </c:if>
		   <c:if test="${not empty consumerInviteAnRFP }">
			   <li><a class="#" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_MY_PROFILE%>?RaYVeMu=${l:encrypt(username)}">My profile</a></li>
			   <li><a class="#" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_MY_OFFERINGS%>?RaYVeMu=${l:encrypt(username)}">My Subscription</a></li>
			   <li><a class="active" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_INVITE_AN_RFP%>?RaYVeMu=${l:encrypt(username)}">Invite an RFP</a></li>
			   <li><a class="#" href="#">Search vendors</a></li>
			   <li><a class="#" href="#">Newsletters & Alerts</a></li>
			   <li><a class="#" href="#">My Blog</a></li>
			   <li><a class="#" href="#">My History</a></li>
			   <li><a class="#" href="#">My Statistics</a></li>
			   <li><a class="#" href="#">Invite Your team</a></li>
		   </c:if>
		   <c:if test="${not empty consumerInviteAnRFP && not empty consumermarketdataneedsInviteAnRFP }">
		   <br/><br/>
			   <li><a class="active" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_MARKET_DATANEEDS_INVITE_AN_RFP%>?RaYVeMu=${l:encrypt(username)}">Market Data Needs</a></li>
			   <li><a class="#" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_TRADING_APPLICATION_NEEDS_INVITE_AN_RFP%>?RaYVeMu=${l:encrypt(username)}">Trading Application Needs</a></li>
			   <li><a class="#" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_ANALYTICS_APPLICATION_NEEDS_INVITE_AN_RFP%>?RaYVeMu=${l:encrypt(username)}" onclick="consumerInviteRFPModes('${consumerinviteanrfpmarketdataneeds}');">Analytics Application Needs</a></li>
			   <li><a class="#" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_RESEARCG_REPORT_NEEDS_INVITE_AN_RFP%>?RaYVeMu=${l:encrypt(username)}" onclick="consumerInviteRFPModes('${consumerinviteanrfpmarketdataneeds}');">Research Report Needs</a></li>
		   </c:if>
		   
		   <c:if test="${not empty consumerInviteAnRFP && not empty consumertradingapplicationInviteAnRFP }">
		   <br/><br/>
			   <li><a class="#" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_MARKET_DATANEEDS_INVITE_AN_RFP%>?RaYVeMu=${l:encrypt(username)}">Market Data Needs</a></li>
			   <li><a class="active" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_TRADING_APPLICATION_NEEDS_INVITE_AN_RFP%>?RaYVeMu=${l:encrypt(username)}">Trading Application Needs</a></li>
			   <li><a class="#" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_ANALYTICS_APPLICATION_NEEDS_INVITE_AN_RFP%>?RaYVeMu=${l:encrypt(username)}" onclick="consumerInviteRFPModes('${consumerinviteanrfpmarketdataneeds}');">Analytics Application Needs</a></li>
			   <li><a class="#" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_RESEARCG_REPORT_NEEDS_INVITE_AN_RFP%>?RaYVeMu=${l:encrypt(username)}" onclick="consumerInviteRFPModes('${consumerinviteanrfpmarketdataneeds}');">Research Report Needs</a></li>
		   </c:if>
		   
		   <c:if test="${not empty consumerInviteAnRFP && not empty consumeranalyticsapplicationInviteAnRFP }">
		   <br/><br/>
			   <li><a class="#" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_MARKET_DATANEEDS_INVITE_AN_RFP%>?RaYVeMu=${l:encrypt(username)}">Market Data Needs</a></li>
			   <li><a class="#" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_TRADING_APPLICATION_NEEDS_INVITE_AN_RFP%>?RaYVeMu=${l:encrypt(username)}">Trading Application Needs</a></li>
			   <li><a class="active" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_ANALYTICS_APPLICATION_NEEDS_INVITE_AN_RFP%>?RaYVeMu=${l:encrypt(username)}" onclick="consumerInviteRFPModes('${consumerinviteanrfpmarketdataneeds}');">Analytics Application Needs</a></li>
			   <li><a class="#" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_RESEARCG_REPORT_NEEDS_INVITE_AN_RFP%>?RaYVeMu=${l:encrypt(username)}" onclick="consumerInviteRFPModes('${consumerinviteanrfpmarketdataneeds}');">Research Report Needs</a></li>
		   </c:if>
		   
		   <c:if test="${not empty consumerInviteAnRFP && not empty consumerresearchreportInviteAnRFP }">
		   <br/><br/>
			   <li><a class="#" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_MARKET_DATANEEDS_INVITE_AN_RFP%>?RaYVeMu=${l:encrypt(username)}">Market Data Needs</a></li>
			   <li><a class="#" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_TRADING_APPLICATION_NEEDS_INVITE_AN_RFP%>?RaYVeMu=${l:encrypt(username)}">Trading Application Needs</a></li>
			   <li><a class="#" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_ANALYTICS_APPLICATION_NEEDS_INVITE_AN_RFP%>?RaYVeMu=${l:encrypt(username)}" onclick="consumerInviteRFPModes('${consumerinviteanrfpmarketdataneeds}');">Analytics Application Needs</a></li>
			   <li><a class="active" href="<%=request.getContextPath()%>/<%=RequestConstans.Consumer.CONSUMER_RESEARCG_REPORT_NEEDS_INVITE_AN_RFP%>?RaYVeMu=${l:encrypt(username)}" onclick="consumerInviteRFPModes('${consumerinviteanrfpmarketdataneeds}');">Research Report Needs</a></li>
		   </c:if>
		   
		 </ul>
		  </div> 
	</div>
	</div>
	<script type="text/javascript">
  function userCheck(checktype){
		 if(checktype.match('logout') && checktype != ''){
			 window.location.href  = "<%= request.getContextPath()%>/<%=RequestConstans.Login.LOGOUT%>";
		 }else{
			 window.location.href  = "<%= request.getContextPath()%>/<%=RequestConstans.Login.FORGET%>"; 
		 }
	} 
	</script>
</body>
</html>