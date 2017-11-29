<%-- 
    Document   : listUser
    Created on : Nov 27, 2017, 11:29:09 AM
    Author     : GeorgyGeo
--%>

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

        <!-- Bootstrap CSS -->    
        <link href="./template/css/bootstrap.min.css" rel="stylesheet">
        <!-- bootstrap theme -->
        <link href="./template/css/bootstrap-theme.css" rel="stylesheet">
        <!--external css-->
        <!-- font icon -->
        <link href="./template/css/elegant-icons-style.css" rel="stylesheet" />
        <link href="./template/css/font-awesome.min.css" rel="stylesheet" />
        <!-- date picker -->

        <!-- color picker -->

        <!-- Custom styles -->
        <link href="./template/css/style.css" rel="stylesheet">
        <link href="./template/css/style-responsive.css" rel="stylesheet" />
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
                            <li><i class="fa fa-file-text-o"></i>User List</li>
                        </ol>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <section class="panel">
                            <!-- <header class="panel-heading" >
                                Product Table
                            </header> -->

                            <table class="table table-striped table-advance table-hover">
                                <thead>
                                    <tr>
                                        <th>User ID</th>
                                        <th>User Name</th>
                                        <th>Email ID</th>
                                        <th>Type</th>
                                        <th>Edit/Delete</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${users}" var="user">
                                    <tr>
                                        <td><c:out value="${user.id}" /></td>
                                    <td><c:out value="${user.name}" /></td>
                                    <td><c:out value="${user.email}" /></td>
                                    <td><c:out value="${user.type}" /></td>
                                    <td>
                                        <div class="btn-group">
                                            <a class="btn btn-success" href="UserController?action=edit&userId=<c:out value='${user.id}'/>"><i class="icon_check_alt2"></i></a>
                                            <a class="btn btn-danger" href="UserController?action=delete&userId=<c:out value='${user.id}'/>"><i class="icon_close_alt2"></i></a>
                                            
        
                                        </div>
                                    </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </section>
                    </div>
                </div>
                <!-- page end-->
            </section>
        </section>
        <jsp:include page="./common/footerSection.jsp"/>
        <jsp:include page="./common/scriptSection.jsp"/>

    </body>
</html>
