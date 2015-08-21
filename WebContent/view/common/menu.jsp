<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.finvendor.util.RequestConstans"%>
<script>
	function setTarget(name) {
		window.alert(name);
		url = "demo.jsp";
		target = "divTarget";
		//use timeout coz mousehover fires several times
	}
</script>
<div class="nav-srch">
		<div class="container">
			<div class="nav-srch-cnt">
				<ul class="sf-menu" id="example">
					<li><img src="<%=request.getContextPath() %>/resources/images/hm.png" alt="" title="" /></li>
					<li><a href="#">SOLUTIONS</a>
						<ul>
							<li><a href="<%=request.getContextPath()%>/<%=RequestConstans.MarketAggregators.MARKETAGGREGATORS%>">Market Data Vendors (Aggregators) Directory</a></li>
							<li><a href="#tav">Trading Application Vendors Directory</a></li>
							<li><a href="#faa">Financial Analytics Application Vendors Directory</a></li>
							<li><a href="#frrp">Financial Research Report Providers Directory</a></li>
							<li><a href="#afv" onclick="setTarget('Advanced Financial Vendors Directory')">Advanced Financial Vendors Directory</a></li>
						</ul>
					</li>
					<li><a href="#">SERVICES</a>
						<ul>
							<li><a href="#dadd" onclick="setTarget('Data Aggregator Due diligence')">Data Aggregator Due diligence</a></li>
							<li><a href="#tapdd" onclick="setTarget('Trading Application providers due diligence')">Trading Application providers due diligence</a></li>
							<li><a href="#aapdd" onclick="setTarget('Analytics Application providers due diligence')">Analytics Application providers due diligence</a></li>
							<li><a href="#rrpdd" onclick="setTarget('Research report Providers due diligence')">Research Report Providers due diligence</a></li>
							<li><a href="#itc" onclick="setTarget('IT Consulting')">IT Consulting</a></li>
						</ul>
					</li>
					<li><a href="#">RESOURCES</a>
						<ul>
							<li><a href="#Brochures" onclick="setTarget('Brochures')">Brochures</a></li>
							<li><a href="#Whitepapers" onclick="setTarget('Whitepapers')">Whitepapers</a></li>
							<li><a href="#Blogs" onclick="setTarget('Blogs')">Blogs</a></li>
							<li><a href="#Casestudies" onclick="setTarget('Case Studies')">Case Studies</a></li>
							<li><a href="#Spotlights" onclick="setTarget('Spotlights')">Spotlights</a></li>
						</ul>
				  </li>
				</ul>
				<input name="" type="text" class="srch" value="Search">
				<div class="clearfix"></div>
			</div>
		</div>
	</div>