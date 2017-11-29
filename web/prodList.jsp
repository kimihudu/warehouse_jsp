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
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
        <meta name="author" content="GeeksLabs">
        <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
        <link rel="shortcut icon" href="img/favicon.png">

        <title>Form Component | Creative - Bootstrap 3 Responsive Admin Template</title>

        <jsp:include page="./common/cssSection.jsp"/>
    </head>
    <body>

        <jsp:include page="./common/headerSection.jsp"/>
        <jsp:include page="./common/sideBar.jsp"/>
    <section id="main-content">
        <section class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header"><i class="fa fa-file-text-o"></i> Form elements</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                        <li><i class="icon_document_alt"></i>Product</li>
                        <li><i class="fa fa-file-text-o"></i>Product Table</li>
                    </ol>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <table class="table table-striped table-advance table-hover">
                            <thead>
                                <tr>
                                    <th>Product ID</th>
                                    <th>Product Category</th>
                                    <th>Sub Category</th>
                                    <th>Product Name</th>
                                    <th>Unit Price</th>
                                    <th>Image Product</th>
                                    <th>Edit/Delete</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${products}" var="prod">
                                    <tr>
                                        <td><c:out value="${prod.rowID}" /></td>
                                        <td><c:out value="${prod.prodCat}" /></td>
                                        <td><c:out value="${prod.subProdCat}" /></td>
                                        <td><c:out value="${prod.prodName}" /></td>
                                        <td><c:out value="${prod.unitPrice}" /></td>
                                        <td><img src="<c:out value="${prod.unitPrice}" />"></td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="btn btn-success" href="ProductController?action=edit&prodId=<c:out value="${prod.rowID}"/>"><i class="icon_check_alt2"></i></a>
                                                <a class="btn btn-danger" href="ProductController?action=delete&prodId=<c:out value="${prod.rowID}"/>"><i class="icon_close_alt2"></i></a>
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