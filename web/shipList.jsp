<%-- 
    Document   : shipList
    Created on : 29-Nov-2017, 10:03:47 AM
    Author     : kimiboo
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
        <title>Show All Shipping</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
        <meta name="author" content="GeeksLabs">
        <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
        <link rel="shortcut icon" href="img/favicon.png">

        <title>Shipping List</title>
        <jsp:include page="./common/cssSection.jsp"/>
    </head>
    <body>
        <jsp:include page="./common/headerSection.jsp"/>
        <jsp:include page="./common/sideBar.jsp"/>
        <section id="main-content">
            <section class="wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-file-text-o"></i> Ship List</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                            <li><i class="icon_document_alt"></i>Shipping</li>
                            <li><i class="fa fa-file-text-o"></i>Shipping List</li>
                        </ol>
                    </div>
                </div>
               <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <table class="table table-striped table-advance table-hover">
                            <thead>
                                <tr>
                                        <th>Customer Name</th>
                                        <th>Order ID</th>
                                        <th>Order Date</th>
                                        <th>Shipping Date</th>
                                        <th>Quantity</th>
                                        <th>Unit Price</th>
                                        <th>Shipping Cost</th>
                                        <th>Sales</th>
                                        <th>Province</th>
                                         <th>Edit/Delete</th>
                                    </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${shipList}" var="ship">
                                    <tr>
                                        <td><c:out value="${ship.cusName}" /></td>
                                        <td><c:out value="${ship.orderID}" /></td>
                                        <td><c:out value="${ship.orderDate}" /></td>
                                        <td><c:out value="${ship.shipDate}" /></td>
                                        <td><c:out value="${ship.orderQuan}" /></td>
                                        <td><c:out value="${ship.unitPrice}" /></td>
                                        <td><c:out value="${ship.shipCost}" /></td>
                                        <td><c:out value="${ship.sale}" /></td>
                                        <td><c:out value="${ship.province}" /></td>
                     
                                        <td>
                                            <div class="btn-group">
                                                <a class="btn btn-success" href="ProductController?action=edit&prodId=<c:out value="${ship.orderID}"/>"><i class="icon_check_alt2"></i></a>
                                                <a class="btn btn-danger" href="ProductController?action=delete&prodId=<c:out value="${ship.orderID}"/>"><i class="icon_close_alt2"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </section>
                </div>
                <div id="page-selection"></div>
            </div>
            <!-- page end-->
        </section>
    </section>
    <jsp:include page="./common/footerSection.jsp"/>
    <jsp:include page="./common/scriptSection.jsp"/>
</body>
</html>