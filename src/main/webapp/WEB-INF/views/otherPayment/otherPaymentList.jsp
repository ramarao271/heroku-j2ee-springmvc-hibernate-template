<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:url value="/resources/css/global.css" var="stylecss" />
<link href="${stylecss}" rel="stylesheet" />
<c:url value="/resources/js/global.js" var="confirmjs" />
<script type="text/javascript" src="${confirmjs}"></script>
<title>All Products</title>
<script type="text/javascript">
	function load() {
		var msg = '<c:if test="${!empty message}"><c:out value="${message}" /></c:if>';
		if (msg != "")
			alert(msg);
	}
</script>
<c:url value="/resources/img/b_delete.png" var="deleteImg" />
<c:url value="/resources/img/b_edit.png" var="editImg" />
<c:url value="/resources/img/b_add.png" var="addImg" />
<c:url value="/resources/img/add-small.png" var="variantImg" />

</head>
<body onload="load()">
	<h3>Other Payments List</h3>
	<c:if test="${!empty otherPayments}">
		<table align="left" border="1" cellpadding="0" cellspacing="0">
			<tr>
				<th>SP No</th>
				<th>Date</th>
				<th>Company</th>
				<th>Total Amount</th>
				<th>Actions</th>
			</tr>
			<c:forEach items="${otherPayments}" var="otherPayment">
				<tr>
					<td><c:out value="${otherPayment.otherPaymentId}" /></td>
					<td><fmt:formatDate pattern="MM-dd-yyyy"
							value="${otherPayment.otherPaymentDate}" /></td>
					<td><c:out value="${otherPayment.workerBean.workerName}" /></td>
					<td><c:out value="${otherPayment.totalCost}" /></td>
					<td align="center"><a
						href="editOtherPayment.html?otherPaymentId=${otherPayment.otherPaymentId}"><img src="${editImg}" /></a>
						| <a
						href="deleteOtherPayment.html?otherPaymentId=${otherPayment.otherPaymentId}"
						onclick="return checkDelete()"><img src="${deleteImg}" /></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>

</body>
</html>