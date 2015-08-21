<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="l" uri="/WEB-INF/finvendor.tld" %>
	<c:out value="${username}"></c:out>
	<c:if test="${not empty username}">
	
	<span class="hd-none"><a href="<%=request.getContextPath() %>/logout" style="color:#2AABAB; font-size:13px;">Logout</a></span>
	<span class="hd-none"><a href="#" style="color:#2AABAB; font-size:13px;">Welcome <c:out value="${fn:toUpperCase(username)}" /></a></span>
	</c:if>
<div class="header">
		<img src="<%=request.getContextPath() %>/resources/images/logo.png" alt="FinVendor" title="FinVendor" />
		<div class="hd-right">
			<p>
				<img src="<%=request.getContextPath() %>/resources/images/fn.png" alt="" title="" /> <i>FINANCIAL VENDOR?</i> <a class="cd-signin" href="<%=request.getContextPath()%>/#0">LIST YOUR OFFERINGS </a>
			</p>
			<ul>
				<c:choose>
						<c:when test="${not empty username}">
						
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
						</c:when>
						<c:otherwise>
							<%-- <li1 class="login"><img src="<%=request.getContextPath() %>/resources/images/lg.png" alt="" title="" /><span><a class="login-signup" href="<%=request.getContextPath()%>/#login"> LOGIN</a> </span></li> --%>
							<li class="login"><img src="<%=request.getContextPath() %>/resources/images/lg.png" alt="" title="" /><span><a class="cd-signin" href="<%=request.getContextPath()%>/#0">Login</a>/<a class="cd-signup" href="<%=request.getContextPath()%>/#0">Register</a></span></li>
							<li><span></span></li>
							<li class="contact"><img src="<%=request.getContextPath() %>/resources/images/msg.png" alt="" title="" /><span><a href="<%=request.getContextPath()%>/appurl/register">CONTACT</a></span></li> 
						</c:otherwise>
					</c:choose>
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>