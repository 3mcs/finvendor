<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<option value=""></option>
	<c:forEach var="regionCountryMapsinfoMulti" items="${regionCountryMapsinfoMulti}" varStatus="rowStatus">
		<option value="${regionCountryMapsinfoMulti.country.country_id}">${regionCountryMapsinfoMulti.country.name}</option>
 	</c:forEach>
</body>
</html>