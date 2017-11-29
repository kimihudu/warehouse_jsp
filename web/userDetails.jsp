<%-- 
    Document   : userDetails
    Created on : 29-Nov-2017, 9:44:35 AM
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
        <title>Show All User</title>
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
                            <li><i class="icon_document_alt"></i>User</li>
                            <li><i class="fa fa-file-text-o"></i>User Details</li>
                        </ol>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-7">
                        <section class="panel">
                            <header class="panel-heading">
                                User Details
                            </header>
                            <div class="panel-body">
                                <form role="form" method="POST" action="Home">
                                    
                                    <div class="form-group">
                                        <label>User Name</label>
                                        <input type="input" class="form-control" id="user_name" placeholder="User Full Name" value="<c:out value="${user.name}" />">
                                    </div>
                                    <div class="form-group">
                                        <label>Email ID</label>
                                        <input type="input" class="form-control" id="user_email" placeholder="Valid Email ID" value="<c:out value="${user.email}" />">
                                    </div>
                                    <div class="form-group">
                                        <label>Type</label>
                                        <input type="input" class="form-control" id="user_type" placeholder="Type" value="<c:out value="${user.type}" />">
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

