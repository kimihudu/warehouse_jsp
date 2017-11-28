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
                    <li><a class="" href="table_product.html">Product Table</a></li>
                    <li><a class="" href="add_product.html">Add Product</a></li>                          
                    <li><a class="" href="edit_product.html">Edit Product</a></li>
                </ul>
            </li>       
            <li class="sub-menu">
                <a href="javascript:;" class="">
                    <i class="icon_desktop"></i>
                    <span>Shipping</span>
                    <span class="menu-arrow arrow_carrot-right"></span>
                </a>
                <ul class="sub">
                    <li><a class="" href="table_shipping.html">Shipping Table</a></li>
                    <li><a class="" href="add_shipping.html">Add Shipping</a></li>
                    <!-- <li><a class="" href="grids.html">Grids</a></li> -->
                </ul>
            </li> 
            <li class="sub-menu">
                <a href="javascript:;" class="">
                    <i class="icon_documents_alt"></i>
                    <span>Admin Profile</span>
                    <span class="menu-arrow arrow_carrot-right"></span>
                </a>
                <ul class="sub">                          
                    <li><a class="" href="profile.html">Profile</a></li>
                    <li><a class="" href="login.html"><span>Login Page</span></a></li>
                    <li><a class="" href="add_admin.html">Add New</a></li>
                    <!--<li><a class="" href="404.html">404 Error</a></li> -->
                </ul>
            </li>

        </ul>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->