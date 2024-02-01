<%-- 
    Document   : Left
    Created on : Jan 28, 2024, 11:01:44 AM
    Author     : This PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-sm-3">
    <div class="card bg-light mb-3">
        <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Categories</div>
        <ul class="list-group category_block">
            <c:forEach items="${listC}" var="o">
                <li class="list-group-item text-white ${tag == o.cid ? "active":""}"><a href="category?cid=${o.cid}">${o.cname}</a></li>
            </c:forEach>

        </ul>
    </div>
    <div class="card bg-light mb-3">
        <div class="card-header bg-success text-white text-uppercase">Last product</div>
        <div class="card-body">
            <img class="img-fluid" src="${p.image}" />
            <h5 class="card-title">${p.name}</h5>
            <p class="card-text">${p.title}</p>
            <p class="bloc_left_price">${p.price} $</p>
        </div>
    </div>
</div>