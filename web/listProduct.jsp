<%-- 
    Document   : listProduct
    Created on : Nov 23, 2017, 10:16:12 PM
    Author     : GeorgyGeo
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Show All products</title>
</head>
<body>
    <table border=1>
        <thead>
            <tr>
                <th>prod ID</th>
                <th>category</th>
                <th>sub category</th>
                <th>prod name</th>
                <th colspan=2>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${products}" var="prod">
                <tr>
                    <td><c:out value="${prod.rowID}" /></td>
                    <td><c:out value="${prod.prodCat}" /></td>
                    <td><c:out value="${prod.subProdCat}" /></td>
                    <td><c:out value="${prod.prodName}" /></td>
                    <td><a href="ProductController?action=edit&prodId=<c:out value="${prod.rowID}"/>">Update</a></td>
                    <td><a href="ProductController?action=delete&prodId=<c:out value="${prod.rowID}"/>">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <p><a href="ProductController?action=insert">Add User</a></p>
</body>
</html>