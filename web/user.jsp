<%-- 
    Document   : user
    Created on : Nov 21, 2017, 4:53:18 PM
    Author     : GeorgyGeo
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
        <link type="text/css"
              href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
        <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
        <title>Add new user</title>
    </head>
    <body>
        <script>//
//            $(function () {
//                $('input[name=dob]').datepicker();
//            });
//        </script>

        <form method="POST" action='UserController' name="frmAddUser">
            Name : <input type="text" name="name"
                value="<c:out value="${user.name}" />" /> <br /> 
            Email : <input type="text" name="email"
                           value="<c:out value="${user.email}" />" /> <br />
            type : <input type="text" name="type"
                           value="<c:out value="${user.type}" />" /> <br />
            <input type="submit" value="Submit" />
        </form>
    </body>
</html>