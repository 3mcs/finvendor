<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <div class="Row">
   <div class="ColumnCommonSingle">
	<div class="lable_headerrayulu_single">Asset Class Details</div>
	<div class="frm_area_common_singlerayulu"> 
	<div class="left_pannel_single">        
				<div class="frm_area_1">
				<div class="frm_area_2">Asset Class<span class="required">*</span></div>
					<div class="frm_area_3">
					<div class="demo_1">
						<select name="assetclass" onchange="loadSecurityTypes(this.value);">
						     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
						     <c:forEach var="assetClasses" items="${assetClasses}">
						    	<option value="${assetClasses.asset_class_id}">${assetClasses.description}</option>
						 	 </c:forEach>
						 </select>
					 </div>
					</div>
				</div>
				<div class="frm_area_1">
				<div class="frm_area_2_commonrayulu">Security type<span class="required">*</span></div>
					<div class="frm_area_3">
					<div class="demo_1_common_test_single">
						<select name="securitytype"  id="assetClassSecurityMaps" multiple="multiple">
					  	 <option selected="selected" value ="-SELECT-" > -SELECT- </option>
					     <c:forEach var="assetClassSecurityMaps" items="${assetClassSecurityMaps}">
						    <option value="${assetClassSecurityMaps.securityType.security_type_id}">${assetClassSecurityMaps.securityType.name}</option>
						  </c:forEach>
					  </select>
					</div>
					</div>
				</div>
			<div class="frm_area_1">
			<div class="frm_area_2">Data Attribute</div>
			<div class="frm_area_3">
			<input id="name" class="text4" type="text" name="name" >
			</div>
			</div>
			<div class="frm_area_1">
				<div class="frm_area_2_commonrayulu">Data Coverage Region</div>
					<div class="frm_area_3">
					<div class="demo_1_common_test_single">
					<!-- <input  class="text4" type="text" name="datacoverageregion" onblur="getRegionValues(this.value);" list="regionsNames"> -->
						 <select name="datacoverageregion"  onchange="loadCountryList(this.value);" multiple="multiple">
				     	 <option selected="selected" value ="-SELECT-" > -SELECT- </option>
					     <c:forEach var="regions" items="${regions}">
					    	<option value="${regions.region_id}">${regions.name}</option>
					 	 </c:forEach>
				 		</select>  
					</div>
					</div>
				</div>
			<%-- <div class="frm_area_1">
			<div class="frm_area_2_commonrayulu">Data Coverage Country</div>
			<div class="frm_area_3">
			<div class="demo_1_common_test_single">
				<select name="datacoveragecountry" id="regionCountryMaps" onchange="loadExchangeList(this.value);" multiple="multiple">
					     <option value ="-SELECT-"> -SELECT- </option>
					     <c:forEach var="regionCountryMaps" items="${regionCountryMaps}">
						    <option value="${regionCountryMaps.country.country_id}">${regionCountryMaps.country.name}</option>
						  </c:forEach>
			   </select>
			 </div>
			</div>
			</div> --%>
			<div class="frm_area_1">
			<div class="frm_area_2_commonrayulu">Data Coverage Country</div>
			<div class="frm_area_3">
			<div class="demo_1_common_test_single">
				<select name="datacoveragecountry" multiple="multiple">
					      <option selected="selected" value ="-SELECT-" > -SELECT- </option>
					     <c:forEach var="countries" items="${countries}">
						    <option value="${countries.country_id}">${countries.name}</option>
						  </c:forEach>
			   </select>
			 </div>
			</div>
			</div>
			<div class="frm_area_1">
			<div class="frm_area_2_commonrayulu">Data Coverage Exchange</div>
			<div class="frm_area_3">
			<div class="demo_1_common_test_single">
				<select name="datacoverageexchange"  multiple="multiple">
					      <option selected="selected" value ="-SELECT-" > -SELECT- </option>
					     <c:forEach var="exchanges" items="${exchanges}">
						    <option value="${exchanges.exchange_id}">${exchanges.name}</option>
						  </c:forEach>
					  </select>
			</div>
			</div>
			</div> 
			<%-- <div class="frm_area_1">
			<div class="frm_area_2_commonrayulu">Data Coverage Exchange</div>
			<div class="frm_area_3">
			<div class="demo_1_common_test_single">
				<select name="datacoverageexchange"   id="countryExchangeMaps" multiple="multiple">
					     <option value ="-SELECT-"> -SELECT- </option>
					     <c:forEach var="countryExchangeMaps" items="${countryExchangeMaps}">
						    <option value="${countryExchangeMaps.exchange.exchange_id}">${countryExchangeMaps.exchange.name}</option>
						  </c:forEach>
					  </select>
			</div>
			</div>
			</div>  --%>
			</div>
			</div>
			</div>
			<div class="ColumnCommonSingletwo">
			<div class="lable_headerrayulu_single">Vendor Details</div>
			<div class="frm_area_common_single">
			<div class="left_pannel_single">
			<div class="clear"></div>
			<div class="frm_area_1">
			<div class="frm_area_2">Vendor Region of Incorp</div>
			<div class="frm_area_3">
			<div class="demo_1_common_test_single">
			   <select name="vendorregionofincorp"   multiple="multiple">
			     	 <option selected="selected" value ="-SELECT-" > -SELECT- </option>
				     <c:forEach var="regionslist" items="${regionslist}">
				    	<option value="${regionslist.region_id}">${regionslist.name}</option>
				 	 </c:forEach>
			 	</select>
			</div>
			</div>
			</div>
			<div class="frm_area_1">
			<div class="frm_area_2">Vendor Country of Incorp</div>
			<div class="frm_area_3">
			<div class="demo_1_common_test_single">
				<select name="vendorcountryofincorp" id="regionCountryMapsinfo" multiple="multiple">
					      <option selected="selected" value ="-SELECT-" > -SELECT- </option>
					     <c:forEach var="countries" items="${countries}">
						    <option value="${countries.country_id}">${countries.name}</option>
						  </c:forEach>
				</select>
			 </div>
			</div>
			</div>
			<div class="frm_area_1">
					<div class="frm_area_2">Vendor Profile Freshness</div>
						<div class="frm_area_3">
						<div class="demo_1">
							<select name="vendorprofilefreshness">
							      <option selected="selected" value ="-SELECT-" > -SELECT- </option>
							     <option>today</option>
							     <option>Last one week</option>
							     <option>Last one month</option>
							     <option>Last one year</option>
					     	</select>
						 </div>
						</div>
			</div>
			<div class="frm_area_1">
				<div class="frm_area_2">Vendor Year of Operation</div>
					<div class="frm_area_3">
					<div class="demo_1">
						<select name="vendoryearoperation">
						      <option selected="selected" value ="-SELECT-" > -SELECT- </option>
						     <option>Date (1970)</option>
						     <option>Last one week</option>
						     <option>Last one month</option>
						     <option>Last one year</option>
					     </select>
					</div>
					</div>
				</div>
			<div class="frm_area_1">
			<div class="frm_area_2">Vendor Support Coverage Time</div>
			<div class="frm_area_3">
			<div class="demo_1">
				<select name="vendorsupporttime">
					      <option selected="selected" value ="-SELECT-" > -SELECT- </option>
							<c:forEach var="supports" items="${supports}">
						    	<option value="${supports.support_id}">${supports.name}</option>
						 	</c:forEach>
				</select>
			 </div>
			</div>
			</div>
			<div class="frm_area_1">
			<div class="frm_area_2">Vendor Support Coverage Region</div>
			<div class="frm_area_3">
			<div class="demo_1">
				<select name="vendorsupportregion">
					      <option selected="selected" value ="-SELECT-" > -SELECT- </option>
						     <c:forEach var="regions" items="${regions}">
						    	<option value="${regions.region_id}">${regions.name}</option>
						 	 </c:forEach>
				</select>
			 </div>
			</div>
			</div>
			<div class="frm_area_1">
				<div class="frm_area_2">Search Keywords</div>
				<div class="frm_area_3">
				<input id="name" class="text4" type="text" name="name" >
				</div>
			</div>
			<div class="frm_area_1">
			<div class="frm_area_2">Awards</div>
			<div class="frm_area_3">
			<div class="demo_1">
				<select name="awards">
					      <option selected="selected" value ="-SELECT-" > -SELECT- </option>
						 <c:forEach var="awards" items="${awards}">
						     <option value="${awards.award_id}">${awards.name}</option>
						 </c:forEach>
				</select>
			  </div>
			</div>
			</div>
			<div class="frm_area_1">
			<div class="frm_area_2">Data Acquisition Cost Range</div>
			<div class="frm_area_3">
			<div class="demo_1">
				<select name="acquisitioncostrange">
					      <option selected="selected" value ="-SELECT-" > -SELECT- </option>
						 <c:forEach var="costs" items="${costs}">
						     <option value="${costs.cost_id}">${costs.range}</option>
						 </c:forEach>
				</select>
			   </div>
			  </div>
			</div>
			<div class="clear"></div>
			</div>
			</div>
			</div>
			</div>
	   
		<div class="se"> 
		  <input type="submit" value="Search" class="input">  
		</div>
		<div class="sea"> <input type="reset" value="Clear Search" class="input"> </div>
		<div class="clear"></div>
		<div class="frm_area_4">Add this Search to Your Saved Searches</div>
		<div class="frm_area_3">
		<div class="sr_frm">
		<input id="name" class="text2" type="text" name="name" align="left">
		</div>
		<div class="save"><a href="#">SAVE</a></div>
		</div>
</body>
</html>