<%-- 
    Document   : shipDetails
    Created on : 29-Nov-2017, 10:04:24 AM
    Author     : kimiboo
--%>

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
        <title>Show All Shipping</title>
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
                            <li><i class="icon_document_alt"></i>Shipping</li>
                            <li><i class="fa fa-file-text-o"></i>Shipping Detail</li>
                        </ol>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-7">
                        <section class="panel">
                            <header class="panel-heading">
                                Shipping Detail
                            </header>
                            <div class="panel-body">
                                <form role="form" method="POST" action="Home">
                                    <div class="form-group">
                                         <label>Customer Name</label>
                                         <input type="input" class="form-control" id="cust_name" placeholder="Customer Name" value="<c:out value="${prod.cusName}"/> ">
                                    </div>
                                    <div class="form-group">
                                         <label>Order ID</label>
                                         <input type="input" class="form-control" id="order_id" placeholder="Order Id" value="<c:out value="${prod.orderID}"/> ">
                                    </div>
                                    <div class="form-group">
                                         <label>Order Date</label>
                                         <input type="input" class="form-control" id="order_date" placeholder="yyyy-mm-dd" value="<c:out value="${prod.orderDate}"/> ">
                                    </div>
                                    <div class="form-group">
                                         <label>Shipping Date</label>
                                         <input type="input" class="form-control" id="shipping_date" placeholder="yyyy-mm-dd" value="<c:out value="${prod.shipDate}"/> ">
                                    </div>
                                    <div class="form-group">
                                         <label>Quantity</label>
                                         <input type="input" class="form-control" id="quantity" placeholder="Quantity" value="<c:out value="${prod.orderQuan}"/> ">
                                    </div>
                                    <div class="form-group">
                                         <label>Unit Price</label>
                                         <input type="input" class="form-control" id="unit_price" placeholder="Unit price" value="<c:out value="${prod.unitPrice}"/> ">
                                    </div>
                                    <div class="form-group">
                                         <label>Shipping Cost</label>
                                         <input type="input" class="form-control" id="shipping_cost" placeholder="shipping cost" value="<c:out value="${prod.shipCost}"/> ">
                                    </div>
                                    <div class="form-group">
                                         <label>Sales</label>
                                         <input type="input" class="form-control" id="sales" placeholder="Total sales" value="<c:out value="${prod.sale}"/> ">
                                    </div>
                                    <div class="form-group">
                                         <label>Province</label>
                                         <input type="input" class="form-control" id="province" placeholder="Ontario" value="<c:out value="${prod.province}"/> ">
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

