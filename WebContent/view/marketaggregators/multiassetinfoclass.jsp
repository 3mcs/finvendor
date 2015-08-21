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
				<div class="lable_headerrayulu">
				      Asset class<span class="required">*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					   Equities<span class="check"> <input type="checkbox" name="equities" value="Equities"  id="Equities" class="input"> </span>   &nbsp;
		    		 FI<span class="check"><input type="checkbox" name="fi" value="FI"  id="FI"></span> &nbsp;
		    		 Indices <span class="check"><input type="checkbox" name="indices" value="Indices" id="Indices"></span>  &nbsp;
		    		 Derivatives<span class="check"><input type="checkbox" name="derivatives" value="Derivatives" id="Derivatives"></span> &nbsp;
		    		 FX<span class="check"><input type="checkbox" name="fx" value="FX"  id="FX"></span> &nbsp;
		    		 AI<span class="check"><input type="checkbox" name="ai" value="AI"  id="AI"></span> &nbsp;
		    		 Misc <span class="check"><input type="checkbox" name="misc" value="MISC"  id="MISC"></span> &nbsp;
		    	</div>
				</div>
				<div class="lable_header_multi">Common fields for all Asset Classes</div>
		   <div class="Row"> 
		   <div class="frm_area_common_rayulu">
		   <div>
		   <div class="left_pannel_common_multi">
				<div class="frm_area_1">
				<div class="frm_area_2">Vendor Region of Incorp</div>
					<div class="frm_area_3">
					<div class="demo_1_test">
						<select name="vendorregionofincorp"  multiple="multiple"> 
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
				<div class="demo_1_test">
					<select name="vendorcountryofincorp"  multiple="multiple">
						     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
					          <c:forEach var="countries" items="${countries}">
						          <option value="${countries.country_id}">${countries.name}</option>
						      </c:forEach>
					</select>
				 </div>
				</div>
			 </div>
			 <div class="frm_area_1">
				<div class="frm_area_2">Search Keywords</div>
				<div class="frm_area_3">
				<input id="name" class="text4" type="text" name="searchkeywordname" >
				</div>
			</div>
			 </div>
			 <div class="left_pannel_common_multitwo">
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
			  </div>
			  </div>
			 	</div>
			 	</div>
		      <div class="Row">
		      <div><br/></div>
		      <div class="ColumnCommon" id="commonarea"><div class="lable_header">Common labels</div>
		      <div><br/></div>
			      <div class="frm_area_common">
			       <div class="left_pannel_common">
						<div class="frm_area_1">
						    <div class="frm_area_2_common_tab">Security Types<span class="required">*</span></div>
						</div>
						<div class="frm_area_1">
							<div class="frm_area_2_common_tab">Data Coverage Region</div>
						</div>
						<div class="frm_area_1">
					    	<div class="frm_area_2_common_tab">Data Coverage Country</div>
						</div>
						<div class="frm_area_1">
							<div class="frm_area_2_common_tab">Data Coverage Exchange</div>
						</div>
						<div class="frm_area_1">
					    	<div class="frm_area_2_common">Data Attribute</div>
						</div>
						<div class="frm_area_1">
							<div class="frm_area_2_common">Vendor Year of Operation</div>
						</div>
						<div class="frm_area_1">
					    	<div class="frm_area_2_common">Awards</div>
						</div>
						<div class="frm_area_1">
							<div class="frm_area_2_common">Data Acquisition Cost Range</div>
						</div>
					</div>
					</div>
				 </div>
    				<div class="ColumnCommon" id="equities"><div class="lable_header">Equities</div>
    				<div><br/></div>
    				<div class="frm_area_common_tab">
			      	 <div class="left_pannel">
    				<div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
									<select name="eqsecuritytype"  id="assetClassEquiSecurityMaps" multiple="multiple">
									  	 <option selected="selected" value ="-SELECT-" > -SELECT- </option>
									     <c:forEach var="assetClassEquiSecurityMaps" items="${assetClassEquiSecurityMaps}">
										    <option value="${assetClassEquiSecurityMaps.securityType.security_type_id}">${assetClassEquiSecurityMaps.securityType.name}</option>
										  </c:forEach>
									  </select>
								 </div>
								</div>
						  </div>
						<div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
									<select name="eqdatacoverageregion" multiple="multiple">
						     			<option selected="selected" value ="-SELECT-" > -SELECT- </option>
									     <c:forEach var="regions" items="${regions}">
									    	<option value="${regions.region_id}">${regions.name}</option>
									 	 </c:forEach>
							 		</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
								<select name="eqdatacoveragecountry" multiple="multiple">
					               <option selected="selected" value ="-SELECT-" > -SELECT- </option>
								     <c:forEach var="countries" items="${countries}">
									    <option value="${countries.country_id}">${countries.name}</option>
									  </c:forEach>
						        </select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
									<select name="eqdatacoverageexchange"  multiple="multiple">
								     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
								     <c:forEach var="exchanges" items="${exchanges}">
									    <option value="${exchanges.exchange_id}">${exchanges.name}</option>
									  </c:forEach>
								  </select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<input id="eqdataattribute" class="text4_common" type="text" name="name" >
								</div>
						</div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common">
									<select name="eqvendoryearoperation">
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
								<div class="frm_area_3">
								<div class="demo_1_common">
									<select name="eqawards">
										     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
											 <c:forEach var="awards" items="${awards}">
											     <option value="${awards.award_id}">${awards.name}</option>
											 </c:forEach>
									</select>
								  </div>
								</div>
								</div>
								<div class="frm_area_1">
									<div class="frm_area_3">
									<div class="demo_1_common">
										<select name="eqacquisitioncostrange">
											     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
												 <c:forEach var="costs" items="${costs}">
												     <option value="${costs.cost_id}">${costs.range}</option>
												 </c:forEach>
										</select>
									   </div>
									  </div>
							</div>
						</div>
					  </div>
				   </div>
    				<div class="ColumnCommon" id="fi"> <div class="lable_header">Fixed Income</div>
    				<div><br/></div>
		        	<div class="frm_area_common_tab">
			      	 <div class="left_pannel">
    				<div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
									<select name="fisecuritytype"  id="assetClassFISecurityMaps" multiple="multiple">
									  	 <option selected="selected" value ="-SELECT-" > -SELECT- </option>
									     <c:forEach var="assetClassFISecurityMaps" items="${assetClassFISecurityMaps}">
										    <option value="${assetClassFISecurityMaps.securityType.security_type_id}">${assetClassFISecurityMaps.securityType.name}</option>
										  </c:forEach>
									  </select>
								 </div>
								</div>
						  </div>
						<div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
									<select name="eqdatacoverageregion" multiple="multiple">
						     			<option selected="selected" value ="-SELECT-" > -SELECT- </option>
									     <c:forEach var="regions" items="${regions}">
									    	<option value="${regions.region_id}">${regions.name}</option>
									 	 </c:forEach>
							 		</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
								<select name="eqdatacoveragecountry" multiple="multiple">
					               <option selected="selected" value ="-SELECT-" > -SELECT- </option>
								     <c:forEach var="countries" items="${countries}">
									    <option value="${countries.country_id}">${countries.name}</option>
									  </c:forEach>
						        </select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
									<select name="eqdatacoverageexchange"  multiple="multiple">
								     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
								     <c:forEach var="exchanges" items="${exchanges}">
									    <option value="${exchanges.exchange_id}">${exchanges.name}</option>
									  </c:forEach>
								  </select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<input id="name" class="text4_common" type="text" name="name" >
								</div>
						</div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common">
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
								<div class="frm_area_3">
								<div class="demo_1_common">
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
									<div class="frm_area_3">
									<div class="demo_1_common">
										<select name="acquisitioncostrange">
											     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
												 <c:forEach var="costs" items="${costs}">
												     <option value="${costs.cost_id}">${costs.range}</option>
												 </c:forEach>
										</select>
									   </div>
									  </div>
							</div>
						</div>
					  </div>
			   </div>
			   <div class="ColumnCommon" id="indices"> <div class="lable_header">Indices</div>
			   <div><br/></div>
		        	<div class="frm_area_common_tab">
			      	 <div class="left_pannel">
    				<div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
									<select name="indicessecuritytype"  id="assetClassIndicesSecurityMaps" multiple="multiple">
									  	 <option selected="selected" value ="-SELECT-" > -SELECT- </option>
									     <c:forEach var="assetClassIndicesSecurityMaps" items="${assetClassIndicesSecurityMaps}">
										    <option value="${assetClassIndicesSecurityMaps.securityType.security_type_id}">${assetClassIndicesSecurityMaps.securityType.name}</option>
										  </c:forEach>
									  </select>
								 </div>
								</div>
						  </div>
						<div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
									<select name="eqdatacoverageregion" multiple="multiple">
						     			<option selected="selected" value ="-SELECT-" > -SELECT- </option>
									     <c:forEach var="regions" items="${regions}">
									    	<option value="${regions.region_id}">${regions.name}</option>
									 	 </c:forEach>
							 		</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
								<select name="eqdatacoveragecountry" multiple="multiple">
					               <option selected="selected" value ="-SELECT-" > -SELECT- </option>
								     <c:forEach var="countries" items="${countries}">
									    <option value="${countries.country_id}">${countries.name}</option>
									  </c:forEach>
						        </select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
									<select name="eqdatacoverageexchange"  multiple="multiple">
								     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
								     <c:forEach var="exchanges" items="${exchanges}">
									    <option value="${exchanges.exchange_id}">${exchanges.name}</option>
									  </c:forEach>
								  </select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<input id="name" class="text4_common" type="text" name="name" >
								</div>
						</div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common">
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
								<div class="frm_area_3">
								<div class="demo_1_common">
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
									<div class="frm_area_3">
									<div class="demo_1_common">
										<select name="acquisitioncostrange">
											     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
												 <c:forEach var="costs" items="${costs}">
												     <option value="${costs.cost_id}">${costs.range}</option>
												 </c:forEach>
										</select>
									   </div>
									  </div>
							</div>
						</div>
					  </div>
			   </div>
			   <div class="ColumnCommon" id="derivatives"> <div class="lable_header">Derivatives</div>
			   <div><br/></div>
		        	<div class="frm_area_common_tab">
			      	 <div class="left_pannel">
    				<div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
									<select name="eqsecuritytypeId" multiple="multiple">
						     			<option selected="selected" value ="-SELECT-" > -SELECT- </option>
						     			<option value ="-SELECT-"> Common-Stocks </option>
						     			<option value ="-SELECT-"> Preferreds</option>
						     			<option value ="-SELECT-"> Warrants/Rights </option>
						     			<option value ="-SELECT-"> CFDs </option>
							 		</select>
								 </div>
								</div>
						  </div>
						<div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
									<select name="eqdatacoverageregion" multiple="multiple">
						     			<option selected="selected" value ="-SELECT-" > -SELECT- </option>
									     <c:forEach var="regions" items="${regions}">
									    	<option value="${regions.region_id}">${regions.name}</option>
									 	 </c:forEach>
							 		</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
								<select name="eqdatacoveragecountry" multiple="multiple">
					               <option selected="selected" value ="-SELECT-" > -SELECT- </option>
								     <c:forEach var="countries" items="${countries}">
									    <option value="${countries.country_id}">${countries.name}</option>
									  </c:forEach>
						        </select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
									<select name="eqdatacoverageexchange"  multiple="multiple">
								     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
								     <c:forEach var="exchanges" items="${exchanges}">
									    <option value="${exchanges.exchange_id}">${exchanges.name}</option>
									  </c:forEach>
								  </select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<input id="name" class="text4_common" type="text" name="name" >
								</div>
						</div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common">
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
								<div class="frm_area_3">
								<div class="demo_1_common">
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
									<div class="frm_area_3">
									<div class="demo_1_common">
										<select name="acquisitioncostrange">
											     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
												 <c:forEach var="costs" items="${costs}">
												     <option value="${costs.cost_id}">${costs.range}</option>
												 </c:forEach>
										</select>
									   </div>
									  </div>
							</div>
						</div>
					  </div>
			   </div>
			   
			</div>
			 <div class="Row">
		      <div><br/></div>
		      <div class="ColumnCommon" id="commonareainfo"><div class="lable_header">Common labels</div>
		      <div><br/></div>
			      <div class="frm_area_common">
			       <div class="left_pannel_common">
						<div class="frm_area_1">
						    <div class="frm_area_2_common_tab">Security Types<span class="required">*</span></div>
						</div>
						<div class="frm_area_1">
							<div class="frm_area_2_common_tab">Data Coverage Region</div>
						</div>
						<div class="frm_area_1">
					    	<div class="frm_area_2_common_tab">Data Coverage Country</div>
						</div>
						<div class="frm_area_1">
							<div class="frm_area_2_common_tab">Data Coverage Exchange</div>
						</div>
						<div class="frm_area_1">
					    	<div class="frm_area_2_common">Data Attribute</div>
						</div>
						<div class="frm_area_1">
							<div class="frm_area_2_common">Vendor Year of Operation</div>
						</div>
						<div class="frm_area_1">
					    	<div class="frm_area_2_common">Awards</div>
						</div>
						<div class="frm_area_1">
							<div class="frm_area_2_common">Data Acquisition Cost Range</div>
						</div>
					</div>
					</div>
				 </div>
    			 <div class="ColumnCommon" id="fx"><div class="lable_header">FX</div>
    				<div><br/></div>
    				<div class="frm_area_common_tab">
			      	 <div class="left_pannel">
    				<div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
									<select name="eqsecuritytypeId" multiple="multiple">
						     			<option selected="selected" value ="-SELECT-" > -SELECT- </option>
						     			<option value ="-SELECT-"> Common-Stocks </option>
						     			<option value ="-SELECT-"> Preferreds</option>
						     			<option value ="-SELECT-"> Warrants/Rights </option>
						     			<option value ="-SELECT-"> CFDs </option>
							 		</select>
								 </div>
								</div>
						  </div>
						<div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
									<select name="eqdatacoverageregion"  onchange="loadCountryListAssetInfo(this.value);" multiple="multiple">
						     			<option selected="selected" value ="-SELECT-" > -SELECT- </option>
									     <c:forEach var="regions" items="${regions}">
									    	<option value="${regions.region_id}">${regions.name}</option>
									 	 </c:forEach>
							 		</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
								<select name="eqdatacoveragecountry" id="regionCountryMapsinfoAsset" onchange="loadExchangeAssetList(this.value);" multiple="multiple">
								     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
								     <c:forEach var="regionCountryMapsinfoAsset" items="${regionCountryMapsinfoAsset}">
									    <option value="${regionCountryMapsinfoAsset.country.country_id}">${regionCountryMapsinfoAsset.country.name}</option>
									  </c:forEach>
								</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
									<select name="eqdatacoverageexchange"   id="countryExchangeMapsAsset" multiple="multiple">
					     			<option selected="selected" value ="-SELECT-" > -SELECT- </option>
								     <c:forEach var="countryExchangeMapsAsset" items="${countryExchangeMapsAsset}">
									    <option value="${countryExchangeMapsAsset.exchange.exchange_id}">${countryExchangeMapsAsset.exchange.name}</option>
									  </c:forEach>
					  				</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<input id="eqdataattribute" class="text4_common" type="text" name="name" >
								</div>
						</div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common">
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
								<div class="frm_area_3">
								<div class="demo_1_common">
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
									<div class="frm_area_3">
									<div class="demo_1_common">
										<select name="acquisitioncostrange">
											     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
												 <c:forEach var="costs" items="${costs}">
												     <option value="${costs.cost_id}">${costs.range}</option>
												 </c:forEach>
										</select>
									   </div>
									  </div>
							</div>
						</div>
					  </div>
				   </div>
    				<div class="ColumnCommon" id="ai"> <div class="lable_header">AI</div>
    				<div><br/></div>
		        	<div class="frm_area_common_tab">
			      	 <div class="left_pannel">
    				<div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
									<select name="eqsecuritytypeId" multiple="multiple">
						     			<option selected="selected" value ="-SELECT-" > -SELECT- </option>
						     			<option value ="-SELECT-"> Common-Stocks </option>
						     			<option value ="-SELECT-"> Preferreds</option>
						     			<option value ="-SELECT-"> Warrants/Rights </option>
						     			<option value ="-SELECT-"> CFDs </option>
							 		</select>
								 </div>
								</div>
						  </div>
						<div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
									<select name="eqdatacoverageregion"  onchange="loadCountryListAssetInfo(this.value);" multiple="multiple">
						     			<option selected="selected" value ="-SELECT-" > -SELECT- </option>
									     <c:forEach var="regions" items="${regions}">
									    	<option value="${regions.region_id}">${regions.name}</option>
									 	 </c:forEach>
							 		</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
								<select name="eqdatacoveragecountry" id="regionCountryMapsinfoAsset" onchange="loadExchangeAssetList(this.value);" multiple="multiple">
								     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
								     <c:forEach var="regionCountryMapsinfoAsset" items="${regionCountryMapsinfoAsset}">
									    <option value="${regionCountryMapsinfoAsset.country.country_id}">${regionCountryMapsinfoAsset.country.name}</option>
									  </c:forEach>
								</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
									<select name="eqdatacoverageexchange"   id="countryExchangeMapsAsset" multiple="multiple">
					     			<option selected="selected" value ="-SELECT-" > -SELECT- </option>
								     <c:forEach var="countryExchangeMapsAsset" items="${countryExchangeMapsAsset}">
									    <option value="${countryExchangeMapsAsset.exchange.exchange_id}">${countryExchangeMapsAsset.exchange.name}</option>
									  </c:forEach>
					  				</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<input id="name" class="text4_common" type="text" name="name" >
								</div>
						</div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common">
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
								<div class="frm_area_3">
								<div class="demo_1_common">
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
									<div class="frm_area_3">
									<div class="demo_1_common">
										<select name="acquisitioncostrange">
											     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
												 <c:forEach var="costs" items="${costs}">
												     <option value="${costs.cost_id}">${costs.range}</option>
												 </c:forEach>
										</select>
									   </div>
									  </div>
							</div>
						</div>
					  </div>
			   </div>
			   <div class="ColumnCommon" id="misc"> <div class="lable_header">MISC</div>
			   <div><br/></div>
		        	<div class="frm_area_common_tab">
			      	 <div class="left_pannel">
    				<div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
									<select name="eqsecuritytypeId" multiple="multiple">
						     			<option selected="selected" value ="-SELECT-" > -SELECT- </option>
						     			<option value ="-SELECT-"> Common-Stocks </option>
						     			<option value ="-SELECT-"> Preferreds</option>
						     			<option value ="-SELECT-"> Warrants/Rights </option>
						     			<option value ="-SELECT-"> CFDs </option>
							 		</select>
								 </div>
								</div>
						  </div>
						<div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
									<select name="eqdatacoverageregion"  onchange="loadCountryListAssetInfo(this.value);" multiple="multiple">
						     			<option selected="selected" value ="-SELECT-" > -SELECT- </option>
									     <c:forEach var="regions" items="${regions}">
									    	<option value="${regions.region_id}">${regions.name}</option>
									 	 </c:forEach>
							 		</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
								<select name="eqdatacoveragecountry" id="regionCountryMapsinfoAsset" onchange="loadExchangeAssetList(this.value);" multiple="multiple">
								     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
								     <c:forEach var="regionCountryMapsinfoAsset" items="${regionCountryMapsinfoAsset}">
									    <option value="${regionCountryMapsinfoAsset.country.country_id}">${regionCountryMapsinfoAsset.country.name}</option>
									  </c:forEach>
								</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common_test">
									<select name="eqdatacoverageexchange"   id="countryExchangeMapsAsset" multiple="multiple">
					     			<option selected="selected" value ="-SELECT-" > -SELECT- </option>
								     <c:forEach var="countryExchangeMapsAsset" items="${countryExchangeMapsAsset}">
									    <option value="${countryExchangeMapsAsset.exchange.exchange_id}">${countryExchangeMapsAsset.exchange.name}</option>
									  </c:forEach>
					  				</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<input id="name" class="text4_common" type="text" name="name" >
								</div>
						</div>
						  <div class="frm_area_1">
								<div class="frm_area_3">
								<div class="demo_1_common">
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
								<div class="frm_area_3">
								<div class="demo_1_common">
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
									<div class="frm_area_3">
									<div class="demo_1_common">
										<select name="acquisitioncostrange">
											     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
												 <c:forEach var="costs" items="${costs}">
												     <option value="${costs.cost_id}">${costs.range}</option>
												 </c:forEach>
										</select>
									   </div>
									  </div>
							</div>
						</div>
					  </div>
			   </div>
			</div>
			<%--  <div class="Row">
    				<div class="Column" id="indices"><h1 style="padding: 1px 2px 3px 152px; color: #2BAFAF;">Indices</h1>
			        	<div><br/></div>
						<div class="frm_area_1_singleline">
							<div class="frm_area_2">Data Coverage Region</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
									<select name="datacoverageregion"  onchange="loadCountryListAssetInfo(this.value);" class="seleray">
						     			<option selected="selected" value ="-SELECT-" > -SELECT- </option>
									     <c:forEach var="regions" items="${regions}">
									    	<option value="${regions.region_id}">${regions.name}</option>
									 	 </c:forEach>
							 		</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1_singleline">
							<div class="frm_area_2">Data Coverage Country</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
								<select name="datacoveragecountry" id="regionCountryMapsinfoAsset" onchange="loadExchangeAssetList(this.value);" class="seleray">
								     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
								     <c:forEach var="regionCountryMapsinfoAsset" items="${regionCountryMapsinfoAsset}">
									    <option value="${regionCountryMapsinfoAsset.country.country_id}">${regionCountryMapsinfoAsset.country.name}</option>
									  </c:forEach>
								</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1_singleline">
							<div class="frm_area_2">Data Coverage Exchange</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
									<select name="datacoverageexchange"   id="countryExchangeMapsAsset" class="seleray">
					     			<option selected="selected" value ="-SELECT-" > -SELECT- </option>
								     <c:forEach var="countryExchangeMapsAsset" items="${countryExchangeMapsAsset}">
									    <option value="${countryExchangeMapsAsset.exchange.exchange_id}">${countryExchangeMapsAsset.exchange.name}</option>
									  </c:forEach>
					  				</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1_singleline">
							<div class="frm_area_2">Data Attribute</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
									 <input id="name" type="text" name="name" class="selerayulu">
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1_singleline">
							<div class="frm_area_2">Vendor Year of Operation</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
									<select name="vendoryearoperation" class="seleray">
									     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
									     <option>Date (1970)</option>
									     <option>Last one week</option>
									     <option>Last one month</option>
									     <option>Last one year</option>
								     </select>
								</div>
								</div>
							</div>
							<div class="frm_area_1_singleline">
								<div class="frm_area_2">Awards</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
									<select name="awards" class="seleray">
										     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
											 <c:forEach var="awards" items="${awards}">
											     <option value="${awards.award_id}">${awards.name}</option>
											 </c:forEach>
									</select>
								  </div>
								</div>
								</div>
								<div class="frm_area_1_singleline">
									<div class="frm_area_2">Data Acquisition Cost Range</div>
									<div class="frm_area_3_tab">
									<div class="demo_1">
										<select name="acquisitioncostrange" class="seleray">
											     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
												 <c:forEach var="costs" items="${costs}">
												     <option value="${costs.cost_id}">${costs.range}</option>
												 </c:forEach>
										</select>
									   </div>
									  </div>
							</div>
				   </div>
    				<div class="Column" id="derivatives"><h1 style="padding: 1px 2px 3px 152px; color: #2BAFAF;">Derivatives</h1>
		        	<div><br/></div>
						<div class="frm_area_1_singleline">
							<div class="frm_area_2">Data Coverage Region</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
									<select name="datacoverageregion"  onchange="loadCountryListAssetInfo(this.value);" class="seleray">
						     			<option selected="selected" value ="-SELECT-" > -SELECT- </option>
									     <c:forEach var="regions" items="${regions}">
									    	<option value="${regions.region_id}">${regions.name}</option>
									 	 </c:forEach>
							 		</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1_singleline">
							<div class="frm_area_2">Data Coverage Country</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
								<select name="datacoveragecountry" id="regionCountryMapsinfoAsset" onchange="loadExchangeAssetList(this.value);" class="seleray">
								     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
								     <c:forEach var="regionCountryMapsinfoAsset" items="${regionCountryMapsinfoAsset}">
									    <option value="${regionCountryMapsinfoAsset.country.country_id}">${regionCountryMapsinfoAsset.country.name}</option>
									  </c:forEach>
								</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1_singleline">
							<div class="frm_area_2">Data Coverage Exchange</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
									<select name="datacoverageexchange"   id="countryExchangeMapsAsset" class="seleray">
					     			<option selected="selected" value ="-SELECT-" > -SELECT- </option>
								     <c:forEach var="countryExchangeMapsAsset" items="${countryExchangeMapsAsset}">
									    <option value="${countryExchangeMapsAsset.exchange.exchange_id}">${countryExchangeMapsAsset.exchange.name}</option>
									  </c:forEach>
					  				</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1_singleline">
							<div class="frm_area_2">Data Attribute</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
									 <input id="name" type="text" name="name" class="selerayulu">
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1_singleline">
							<div class="frm_area_2">Vendor Year of Operation</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
									<select name="vendoryearoperation" class="seleray">
									     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
									     <option>Date (1970)</option>
									     <option>Last one week</option>
									     <option>Last one month</option>
									     <option>Last one year</option>
								     </select>
								</div>
								</div>
							</div>
							<div class="frm_area_1_singleline">
								<div class="frm_area_2">Awards</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
									<select name="awards" class="seleray">
										     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
											 <c:forEach var="awards" items="${awards}">
											     <option value="${awards.award_id}">${awards.name}</option>
											 </c:forEach>
									</select>
								  </div>
								</div>
								</div>
								<div class="frm_area_1_singleline">
									<div class="frm_area_2">Data Acquisition Cost Range</div>
									<div class="frm_area_3_tab">
									<div class="demo_1">
										<select name="acquisitioncostrange" class="seleray">
											     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
												 <c:forEach var="costs" items="${costs}">
												     <option value="${costs.cost_id}">${costs.range}</option>
												 </c:forEach>
										</select>
									   </div>
									  </div>
						</div>
				   </div>
			</div>
			<div class="Row">
    				<div class="Column" id="fx"><h1 style="padding: 1px 2px 3px 152px; color: #2BAFAF;">FX</h1>
			        	<div><br/></div>
						<div class="frm_area_1_singleline">
							<div class="frm_area_2">Data Coverage Region</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
									<select name="datacoverageregion"  onchange="loadCountryListAssetInfo(this.value);" class="seleray">
						     			<option selected="selected" value ="-SELECT-" > -SELECT- </option>
									     <c:forEach var="regions" items="${regions}">
									    	<option value="${regions.region_id}">${regions.name}</option>
									 	 </c:forEach>
							 		</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1_singleline">
							<div class="frm_area_2">Data Coverage Country</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
								<select name="datacoveragecountry" id="regionCountryMapsinfoAsset" onchange="loadExchangeAssetList(this.value);" class="seleray">
								     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
								     <c:forEach var="regionCountryMapsinfoAsset" items="${regionCountryMapsinfoAsset}">
									    <option value="${regionCountryMapsinfoAsset.country.country_id}">${regionCountryMapsinfoAsset.country.name}</option>
									  </c:forEach>
								</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1_singleline">
							<div class="frm_area_2">Data Coverage Exchange</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
									<select name="datacoverageexchange"   id="countryExchangeMapsAsset" class="seleray">
					     			<option selected="selected" value ="-SELECT-" > -SELECT- </option>
								     <c:forEach var="countryExchangeMapsAsset" items="${countryExchangeMapsAsset}">
									    <option value="${countryExchangeMapsAsset.exchange.exchange_id}">${countryExchangeMapsAsset.exchange.name}</option>
									  </c:forEach>
					  				</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1_singleline">
							<div class="frm_area_2">Data Attribute</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
									 <input id="name" type="text" name="name" class="selerayulu">
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1_singleline">
							<div class="frm_area_2">Vendor Year of Operation</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
									<select name="vendoryearoperation" class="seleray">
									     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
									     <option>Date (1970)</option>
									     <option>Last one week</option>
									     <option>Last one month</option>
									     <option>Last one year</option>
								     </select>
								</div>
								</div>
							</div>
							<div class="frm_area_1_singleline">
								<div class="frm_area_2">Awards</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
									<select name="awards" class="seleray">
										     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
											 <c:forEach var="awards" items="${awards}">
											     <option value="${awards.award_id}">${awards.name}</option>
											 </c:forEach>
									</select>
								  </div>
								</div>
								</div>
								<div class="frm_area_1_singleline">
									<div class="frm_area_2">Data Acquisition Cost Range</div>
									<div class="frm_area_3_tab">
									<div class="demo_1">
										<select name="acquisitioncostrange" class="seleray">
											     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
												 <c:forEach var="costs" items="${costs}">
												     <option value="${costs.cost_id}">${costs.range}</option>
												 </c:forEach>
										</select>
									   </div>
									  </div>
							</div>
				   </div>
    				<div class="Column" id="ai"><h1 style="padding: 1px 2px 3px 152px; color: #2BAFAF;">AI</h1>
		        	<div><br/></div>
						<div class="frm_area_1_singleline">
							<div class="frm_area_2">Data Coverage Region</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
									<select name="datacoverageregion"  onchange="loadCountryListAssetInfo(this.value);" class="seleray">
						     			<option selected="selected" value ="-SELECT-" > -SELECT- </option>
									     <c:forEach var="regions" items="${regions}">
									    	<option value="${regions.region_id}">${regions.name}</option>
									 	 </c:forEach>
							 		</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1_singleline">
							<div class="frm_area_2">Data Coverage Country</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
								<select name="datacoveragecountry" id="regionCountryMapsinfoAsset" onchange="loadExchangeAssetList(this.value);" class="seleray">
								     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
								     <c:forEach var="regionCountryMapsinfoAsset" items="${regionCountryMapsinfoAsset}">
									    <option value="${regionCountryMapsinfoAsset.country.country_id}">${regionCountryMapsinfoAsset.country.name}</option>
									  </c:forEach>
								</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1_singleline">
							<div class="frm_area_2">Data Coverage Exchange</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
									<select name="datacoverageexchange"   id="countryExchangeMapsAsset" class="seleray">
					     			<option selected="selected" value ="-SELECT-" > -SELECT- </option>
								     <c:forEach var="countryExchangeMapsAsset" items="${countryExchangeMapsAsset}">
									    <option value="${countryExchangeMapsAsset.exchange.exchange_id}">${countryExchangeMapsAsset.exchange.name}</option>
									  </c:forEach>
					  				</select>
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1_singleline">
							<div class="frm_area_2">Data Attribute</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
									 <input id="name" type="text" name="name" class="selerayulu">
								 </div>
								</div>
						  </div>
						  <div class="frm_area_1_singleline">
							<div class="frm_area_2">Vendor Year of Operation</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
									<select name="vendoryearoperation" class="seleray">
									     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
									     <option>Date (1970)</option>
									     <option>Last one week</option>
									     <option>Last one month</option>
									     <option>Last one year</option>
								     </select>
								</div>
								</div>
							</div>
							<div class="frm_area_1_singleline">
								<div class="frm_area_2">Awards</div>
								<div class="frm_area_3_tab">
								<div class="demo_1">
									<select name="awards" class="seleray">
										     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
											 <c:forEach var="awards" items="${awards}">
											     <option value="${awards.award_id}">${awards.name}</option>
											 </c:forEach>
									</select>
								  </div>
								</div>
								</div>
								<div class="frm_area_1_singleline">
									<div class="frm_area_2">Data Acquisition Cost Range</div>
									<div class="frm_area_3_tab">
									<div class="demo_1">
										<select name="acquisitioncostrange" class="seleray">
											     <option selected="selected" value ="-SELECT-" > -SELECT- </option>
												 <c:forEach var="costs" items="${costs}">
												     <option value="${costs.cost_id}">${costs.range}</option>
												 </c:forEach>
										</select>
									   </div>
									  </div>
						</div>
				   </div>
			</div> --%>
 			 <div class="se"><input type="submit" value="Search" class="input"></div>
			<div class="sea"> <input type="submit" value="Clear Search" class="input"> </div>
			<div class="clear"></div>
			<div class="frm_area_2">Add this Search to Your Saved Searches</div>
			<div class="frm_area_3">
			<div class="sr_frm">
			<input id="name" class="text2" type="text" name="name" align="left">
			</div>
			<div class="save"><a href="#">SAVE</a></div>
			</div>
</body>
</html>