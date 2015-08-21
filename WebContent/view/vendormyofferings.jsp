<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@page import="com.finvendor.util.RequestConstans"%>
<c:set var="personaldetails" value="<%=RequestConstans.Vendor.PERSONALDETAILS %>"> </c:set>
<c:set var="supportcoverage" value="<%=RequestConstans.Vendor.SUPPORTCOVERAGE %>"> </c:set>
<c:set var="supportdetails" value="<%=RequestConstans.Vendor.SUPPORTDETAILS %>"> </c:set>
<c:set var="awarddetails" value="<%=RequestConstans.Vendor.AWARDDETAILS %>"> </c:set>
<c:set var="datadistribution" value="<%=RequestConstans.Vendor.DATADISTRIBUTION %>"> </c:set>
<c:set var="databuyers" value="<%=RequestConstans.Vendor.SEARCHDATABUYERS %>"> </c:set>
<c:set var="myrfp" value="<%=RequestConstans.Vendor.MYRFP %>"> </c:set>

<!DOCTYPE html>
<head>
    <meta charset="utf-8" />
	<title>finvendor</title>
    <link href="<%=request.getContextPath() %>/resources/singleasset/css/style.css" type="text/css" rel="stylesheet" />
    <link href="<%=request.getContextPath() %>/resources/myprofile/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="<%=request.getContextPath() %>/resources/myprofile/plugins/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	<link href="<%=request.getContextPath() %>/resources/myprofile/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.css" rel="stylesheet" type="text/css"/>
	<link href="<%=request.getContextPath() %>/resources/myprofile/css/reset.css" rel="stylesheet" type="text/css"/>
	<link href="<%=request.getContextPath() %>/resources/myprofile/css/style-metro.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath() %>/resources/myprofile/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath() %>/resources/myprofile/css/style-II.css" rel="stylesheet" type="text/css"/>
    <!-- Date Picker CSS Starts -->
    <link href="<%=request.getContextPath() %>/resources/myprofile/datepick/jsDatePick_ltr.min.css" rel="stylesheet" type="text/css"/>
    <!-- Date Picker CSS Ends -->
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body>
	<div class="top_header">
			<jsp:include page="common/dashboardheader.jsp" ></jsp:include>
		</div>
		<div><br/></div>
		<div class="wrapper">
		<div class="Rowtable">
			<div class="ColumnCommonmyprofile" id="changeray"> <div class="lable_header" id="interdivray"> <a id="anchoray" href="#tab1" class="lable_header" data-toggle="tab"  onclick="activeMode('${personaldetails}');">As Data Aggregator vendor</a> </div></div>
			<div class="ColumnCommonmyprofile"> <div class="lable_header">  <a href="#tab2" class="lable_header" data-toggle="tab" onclick="activeMode('${supportcoverage}');">As Trading Application vendor</a> </div> </div>
			<div class="ColumnCommonmyprofile"> <div class="lable_header">  <a href="#tab3" class="lable_header" data-toggle="tab" onclick="activeMode('${supportcoverage}');">As Analytics Application vendor</a> </div> </div>
			<div class="ColumnCommonmyprofile"> <div class="lable_header">  <a href="#tab4" class="lable_header" data-toggle="tab" onclick="activeMode('${supportcoverage}');">As Research Reporting vendor</a> </div> </div>
		</div>
		</div>
    <div class="wrapper">  
        <div class="row-fluid">
					<div class="span12">
          <div class="row-fluid service-box">
			<div class="row-fluid">
						<div class="span12">
						<div class="portlet box blue" id="form_wizard_1">
							<div class="portlet-title">
							</div>
							<div class="portlet-body form">
								<form action="#" class="form-horizontal" id="submit_form" method="post">
									<div class="form-wizard">
										<div class="Rowtable">
										<div class="ColumnCommonmyofferings" id="changeoffer"> <div class="lable_header" id="interdivoffer"> <a id="anchooffer" href="#tab1" class="lable_header" data-toggle="tab"  onclick="activeModeVendorMyofferings('${vendormyofferingsdatacoverage}');">Data Coverage</a> </div></div>
										<div class="ColumnCommonmyofferings" id="changeoffer1"> <div class="lable_header" id="interdivoffer1">  <a id="anchooffer1" href="#tab2" class="lable_header" data-toggle="tab" onclick="activeModeVendorMyofferings('${vendormyofferingsdatadistribution}');">Data Distribution</a> </div> </div>
										</div>
										<div class="tab-content" style="background-color: white;">
										<div class="tab-pane active" id="tab1">
												<div><br/> </div>
												<div class="Rowtableinfoval">
												<!--   <div class="ColumnCommonmyprofile"><div class="lable_header">Data Coverage</div></div>  
												<div class="ColumnCommon"> 
													<label class="control-label-fileupload">File Upload (excel or csv)<span class="required">*</span></label>
													<div class="controlsfileupload">
														 <input type="text" id="orgname" value="C:\FinVendorUpload\SupportDetails_FV.CSV" class="m-wrap largefileuploadreadonly" readonly="readonly"  /> 
													</div>
													<div class="controlsfileuploadreadonly">
														 <input type="file" id="fileUploadmyoffercoverage" placeholder="Company Logo" name="fileUpload" class="m-wrap largefileupload" style="margin: -47px 0px 3px 503px;"/>
													</div>
												</div>
												<div class="ColumnCommonray">
												<a class="fileupmyoffercoverage"> <span class="lable_header_add">Upload</span></a>
												</div> -->
												<div class="image-upload" style="margin-left: 252px;">
												    <label for="fileUploadmyoffercoverage" class="control-label-fileupload" >File Upload (excel or csv)<span class="required">*</span> 
												        &nbsp;&nbsp;&nbsp;<img src="<%=request.getContextPath() %>/resources/myprofile/format/csv.png" style="padding:0px 0px 4px 0px;"/><span style="line-height: 120%;">/</span><img src="<%=request.getContextPath() %>/resources/myprofile/format/xls.png" style="padding:0px 0px 4px 0px;" /> &nbsp;&nbsp;&nbsp;&nbsp; 
												    </label>
												    <input id="fileUploadmyoffercoverage" type="file" type="hidden"/>
												</div>
												<div class="ColumnCommonray">
												<a class="fileupmyoffercoverage"><span class="lable_headeractions"><img src="<%=request.getContextPath() %>/resources/myprofile/format/attachment.png"/>Attachment</span></a>
												</div>
												</div>
												<div><br/> </div>
												 <div class="Row">
													<div class="ColumnCommonvendortab3">
													<div class="control-group">
														<label class="control-label">Support Coverage Region<span class="required">*</span></label>
														<div class="controls">
															<select name="supportcoverageregion" multiple="multiple" id="supportcoverageregion">
														     	<option value ="-SELECT-"> -SELECT- </option>
															     <c:forEach var="regions" items="${regions}">
															    	<option value="${regions.name}">${regions.name}</option>
															 	 </c:forEach>
														 	</select> 
														</div>
													</div>
													<div class="control-group">
														<label class="control-label">Support Coverage Country<span class="required">*</span></label>
														<div class="controls">
															<select name="supportcoveragecountry" multiple="multiple" id="supportcoveragecountry">
															     <option value ="-SELECT-"> -SELECT- </option>
															     <c:forEach var="countries" items="${countries}">
																    <option value="${countries.name}">${countries.name}</option>
																  </c:forEach>
													   		</select>
														</div>
													</div>
													</div>
													<div class="ColumnCommonvendorpagetab3">
													<div class="control-group">
														<label class="control-label">Vendor Support Timings<span class="required">*</span></label>
														<div class="controls">
															<select name="vendorsupporttime" multiple="multiple" id="vendorsupporttime">
															     <option value ="-SELECT-"> -SELECT- </option>
																	<c:forEach var="supports" items="${supports}">
																    	<option value="${supports.name}">${supports.name}</option>
																 	</c:forEach>
														</select>
														</div>
													</div>
													<div class="control-group">
														<label class="control-label">Phone Number<span class="required">*</span></label>
														<div class="controls">
															<input type="text" id="phonenumber" placeholder="Phone Number" name="phonenumber" class="m-wrap largeval"/>
														</div>
													</div>
													</div>
													 <div class="ColumnCommonvendorpretab3">
													<div class="control-group">
														<label class="control-label">Email<span class="required">*</span></label>
														<div class="controls">
															<input type="text" id="email" placeholder="Email" name="email" class="m-wrap largeval"/>
														</div>
													</div>
													</div> 
												</div>
												<div class="control-group">
														<div class="controls">
														<div class="se" style="  margin: 0px 0px 0px 232px;">
													 	  <a class="addtotablesupport"> <span class="lable_header_add">Add More </span></a> 
													 	</div>
														</div>
													</div> 
												<div class="portlet-body">
												<table class="table table-striped table-bordered table-hover table-full-width" id="samplesupport">
													<thead style="background-color: #7BCCA5;">
														<tr>
															<th>Support Coverage Region</th>
															<th>Support Coverage Country</th>
															<th>Vendor Support Timings</th>
											                <th>Phone Number</th>
															<th>Email</th>
															<th>Actions</th>
														</tr>
													</thead>
													<tbody>
													</tbody>
												</table>
												<input type="hidden" id="jsontablesupport" name="jsontablesupport"/>
											</div>
									<div><br/></div>
									<div class="form-actions clearfix">
										<div class="se">
										<input type="submit" value="Update" class="btn"/>
										<input type="reset" value="Reset" class="btn" />
										<a  href="#tab2" class="btn button-next" data-toggle="tab" class="step" onclick="activeModeVendorMyofferings('${vendormyofferingsdatadistribution}');">Continue</a>
									</div>
									</div>
											</div>
											
												<div class="tab-pane" id="tab2">
												<div><br/> </div>
												<div class="Rowtableinfoval">
												<!-- <div class="ColumnCommon"> 
													<label class="control-label-fileupload">File Upload (excel or csv)<span class="required">*</span></label>
													<div class="controlsfileupload">
														 <input type="text" id="orgname" value="C:\FinVendorUplo\DataDistribution_FV.CSV" class="m-wrap largefileuploadreadonly" readonly="readonly"  /> 
													</div>
													<div class="controlsfileuploadreadonly">
														 <input type="file" id="fileUploadmyofferdistribution" placeholder="Company Logo" name="fileUploadmyofferdistribution" class="m-wrap largefileupload" style="margin: -47px 0px 3px 503px;"/>
													</div>
												</div>
												<div class="ColumnCommonray">
												<a class="fileupmyofferdistribution"> <span class="lable_header_add">Upload</span></a>
												</div> -->
												<div class="image-upload" style="margin-left: 252px;">
												    <label for="fileUploadmyofferdistribution" class="control-label-fileupload" >File Upload (excel or csv)<span class="required">*</span> 
												        &nbsp;&nbsp;&nbsp;<img src="<%=request.getContextPath() %>/resources/myprofile/format/csv.png" style="padding:0px 0px 4px 0px;"/><span style="line-height: 120%;">/</span><img src="<%=request.getContextPath() %>/resources/myprofile/format/xls.png" style="padding:0px 0px 4px 0px;" /> &nbsp;&nbsp;&nbsp;&nbsp; 
												    </label>
												    <input id="fileUploadmyofferdistribution" type="file" type="hidden"/>
												</div>
												<div class="ColumnCommonray">
												<a class="fileupmyofferdistribution"><span class="lable_headeractions"><img src="<%=request.getContextPath() %>/resources/myprofile/format/attachment.png"/>Attachment</span></a>
												</div>
												</div>
												<div><br/> </div>
												 <div class="Row">
													<div class="ColumnCommonvendordist">
													<div class="control-group">
														<label class="control-label">Asset Class<span class="required">*</span></label>
														<div class="controls">
															<select name="datadistassetclass" onchange="loadSecurityDistriTypes(this.value);" id="datadistassetclass">
															     <option value ="-SELECT-"> -SELECT- </option>
															     <c:forEach var="assetClasses" items="${assetClasses}">
															    	<option value="${assetClasses.description}">${assetClasses.description}</option>
															 	 </c:forEach>
															 </select>
														</div>
													</div>
													<div class="control-group">
														<label class="control-label">Security type<span class="required">*</span></label>
														<div class="controls">
															<select name="datadissecuritytype"  id="assetClassVendorSecurityDistriMaps" multiple="multiple">
															  	 <option value ="-SELECT-"> -SELECT- </option>
															     <c:forEach var="assetClassVendorSecurityMaps" items="${assetClassVendorSecurityDistriMaps}">
																    <option value="${assetClassVendorSecurityMaps.securityType.name}">${assetClassVendorSecurityMaps.securityType.name}</option>
																  </c:forEach>
															 </select>
														</div>
													</div>
													<div class="control-group">
														<label class="control-label">File-name<span class="required">*</span></label>
														<div class="controls">
															<input type="text" id="filename" placeholder="File-name" name="filename" class="m-wrap largeval"/>
														</div>
													</div>
													<div class="control-group">
														<label class="control-label">File-Brief-Desc<span class="required">*</span></label>
														<div class="controls">
															<input type="text" id="filebriefdesc" placeholder="File-Brief-Desc" name="filebriefdesc" class="m-wrap largeval"/>
														</div>
													</div>
													</div>
													<div class="ColumnCommonvendorpage">
													<div class="control-group">
														<label class="control-label">Feed Type<span class="required">*</span></label>
														<div class="controls">
															<select name="feedtype"  id="feedtype">
															<option value ="-SELECT-"> -SELECT- </option>
															     <option value ="EOD"> EOD </option>
															     <option value ="REAL-TIME"> REAL-TIME </option>
															     <option value ="HISTORICAL-EOD">HISTORICAL-EOD</option>
														</select>
														</div>
													</div>
													<div class="control-group">
														<label class="control-label">Feed Sub-type<span class="required">*</span></label>
														<div class="controls">
															<select name="feedsubtype"  id="feedsubtype">
																<option value ="-SELECT-"> -SELECT- </option>
															     <option value ="Full Universe Data Feed"> Full Universe Data Feed </option>
															     <option value ="Delta Data Feed"> Delta Data Feed </option>
														</select>
														</div>
													</div>
													<div class="control-group">
														<label class="control-label">Distribution Method<span class="required">*</span></label>
														<div class="controls">
															<select name="distributionmethod"  id="distributionmethod">
																<option value ="-SELECT-"> -SELECT- </option>
															     <option value ="Web"> Web </option>
															     <option value ="FTP"> FTP </option>
															     <option value ="FTP"> Email </option>
															     <option value ="Others"> Others </option>
														</select>
														</div>
													</div>
													<div class="control-group">
														<label class="control-label">Frequency<span class="required">*</span></label>
														<div class="controls">
															<select name="frequency"  id="frequency">
																<option value ="-SELECT-"> -SELECT- </option>
															     <option value ="intra-day"> intra-day </option>
															     <option value ="Daily"> Daily </option>
															     <option value ="Weekly"> Weekly </option>
															     <option value ="Semi-Monthly"> Semi-Monthly </option>
															     <option value ="Monthly"> Monthly </option>
															     <option value ="Yearly"> Yearly </option>
														</select>
														</div>
													</div>
													</div>
													 <div class="ColumnCommonvendorpre">
													 <div class="control-group">
														<label class="control-label">Coverage Region<span class="required">*</span></label>
														<div class="controls">
															<select name="coverageregion" multiple="multiple" id="coverageregion">
														     	<option value ="-SELECT-"> -SELECT- </option>
															     <c:forEach var="regions" items="${regions}">
															    	<option value="${regions.name}">${regions.name}</option>
															 	 </c:forEach>
														 	</select> 
														</div>
													</div>
													<div class="control-group">
														<label class="control-label">Coverage Country<span class="required">*</span></label>
														<div class="controls">
															<select name="coveragecountry" multiple="multiple" id="coveragecountry">
															     <option value ="-SELECT-"> -SELECT- </option>
															     <c:forEach var="countries" items="${countries}">
																    <option value="${countries.name}">${countries.name}</option>
																  </c:forEach>
													   		</select>
														</div>
													</div>
													 <div class="control-group">
														<label class="control-label">Coverage Exchange<span class="required">*</span></label>
														<div class="controls">
															<select name="coverageexchange"  multiple="multiple" id="coverageexchange">
														     <option value ="-SELECT-"> -SELECT- </option>
														     <c:forEach var="exchanges" items="${exchanges}">
															    <option value="${exchanges.name}">${exchanges.name}</option>
															  </c:forEach>
														  </select>
														</div>
													</div>
													 
													</div> 
												</div>
												<div class="control-group">
														<div class="controls">
														<div class="se" style="  margin: 0px 0px 0px 232px;">
													 	  <a class="addtotabledistribution"> <span class="lable_header_add">Add More </span></a> 
													 	</div>
														</div>
													</div> 
												<div class="portlet-body">
												<table class="table table-striped table-bordered table-hover table-full-width" id="sampledistribution">
													<thead style="background-color: #7BCCA5;">
														<tr>
															<th>Asset Class</th>
															<th>Security type</th>
															<th>File Name</th>
											                <th>File Brief Desc</th>
															<th>Feed Type</th>
															<th>Feed Sub-type</th>
															<th>Distribution Method</th>
															<th>Frequency</th>
															<th>Coverage Region</th>
															<th>Coverage Country</th>
															<th>Coverage Exchange</th>
															<th>Actions</th>
														</tr>
													</thead>
													<tbody>
													</tbody>
												</table>
												<input type="hidden" id="jsontabledistribution" name="jsontabledistribution"/>
											</div>
									<div><br/></div>
									<div class="form-actions clearfix">
										<div class="se">
										<a  href="#tab1" class="btn button-previous" data-toggle="tab" class="step" onclick="activeModeVendorMyofferings('${vendormyofferingsdatacoverage}');">Back</a>
										<input type="submit" value="Update" class="btn"/>
										<input type="reset" value="Reset" class="btn" />
									</div>
									</div>
									</div>
									
										</div>
								</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				</div>
				</div>
    </div>
    </div>
    <!-- END CONTAINER -->
    <div class="footer_area">
	  <jsp:include page="common/dashboardfooter.jsp" ></jsp:include>
	</div>
</body>
</html>
