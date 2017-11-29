<%-- 
    Document   : prodDetails
    Created on : Nov 27, 2017, 11:07:29 AM
    Author     : GeorgyGeo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                            <li><i class="fa fa-file-text-o"></i>Product Detail</li>
                        </ol>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-7">
                        <section class="panel">
                            <header class="panel-heading">
                                Edit Product
                            </header>
                            <div class="panel-body">
                                <form role="form" method="POST" action="Home">
                                    <div class="form-group">
                                        <label>Product ID</label>
                                        <input type="input" class="form-control" id="row_id" placeholder="Product Id" value="<c:out value="${prod.rowID}" />">
                                    </div>
                                    <div class="form-group">
                                        <label>Product Category</label>
                                        <select name="product_category" class="form-control">
                                            <option value="Technology">Technology</option>
                                            <option value="Office Supplies">Office Supplies</option>
                                            <option value="Furniture">Furniture</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Sub Category</label>
                                        <input type="input" class="form-control" id="sub_catgry" placeholder="Sub-category" value="<c:out value="${prod.subProdCat}" />">
                                    </div>
                                    <div class="form-group">
                                        <label>Product Name</label>
                                        <input type="input" class="form-control" id="prod_name" placeholder="Product Name" value="<c:out value="${prod.prodName}" />">
                                    </div>
                                    <div class="form-group">
                                        <label>Unit Price</label>
                                        <input type="input" class="form-control" id="unit_price" placeholder="Unit price" value="<c:out value="${prod.unitPrice}" />">
                                    </div>
                                    <div class="form-group">
                                        <label>Product Image</label>
                                        <input type="file" class="form-control" id="prod_img" accept="image/*">
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-offset-0 colg-lg-10">
                                            <input type="submit" class="btn btn-danger" value="Submit"/>
                                        </div>
                                    </div>
                                </form>
                            </div>

                    </div>
                    <!-- page end-->
            </section>
        </section>
        <jsp:include page="./common/footerSection.jsp"/>
        <jsp:include page="./common/scriptSection.jsp"/>

    </body>
</html>
