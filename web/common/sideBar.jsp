<%-- 
    Document   : sideBar
    Created on : Nov 27, 2017, 9:29:31 AM
    Author     : GeorgyGeo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--sidebar start-->
<aside>
    <div id="sidebar"  class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu">                
            <li class="active">
                <a class="" href="index.html">
                    <i class="icon_house_alt"></i>
                    <span>Warehouse</span>
                </a>
            <li class="sub-menu">
                <a href="javascript:;" class="">
                    <i class="icon_document_alt"></i>
                    <span>Product</span>
                    <span class="menu-arrow arrow_carrot-right"></span>
                </a>
                <ul class="sub">
                    <li><a class="" href="./Home?action=prodList">Product List</a></li>
                    <li><a class="" href="./Home?action=edit">Product Detail</a></li>
                </ul>
            </li>       
            <li class="sub-menu">
                <a href="javascript:;" class="">
                    <i class="icon_desktop"></i>
                    <span>Shipping</span>
                    <span class="menu-arrow arrow_carrot-right"></span>
                </a>
                <ul class="sub">
                    <li><a class="" href="./Home?action=shipList">Shipping List</a></li>
                    <li><a class="" href="./Home?action=editShip">Shipping Detail</a></li>
                    <!-- <li><a class="" href="grids.html">Grids</a></li> -->
                </ul>
            </li> 
            <li class="sub-menu">
                <a href="javascript:;" class="">
                    <i class="icon_documents_alt"></i>
                    <span>User</span>
                    <span class="menu-arrow arrow_carrot-right"></span>
                </a>
                <ul class="sub">                          
                    <li><a class="" href="./UserController?action=userList">List Users</a></li>
                    <!--<li><a class="" href="./UserController?action="><span>Login Page</span></a></li>-->
                    <li><a class="" href="./UserController?action=edit">Add New User</a></li>
                    <!--<li><a class="" href="404.html">404 Error</a></li> -->
                </ul>
            </li>

        </ul>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->