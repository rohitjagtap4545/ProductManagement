<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@ include file="./base.jsp" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <title>Product Add</title>
    <!-- Include your CSS or other head elements if needed -->
</head>
<body>


<div class="container mt-5 p-5 bg-success p-2 text-dark bg-opacity-10" style="width:50%;">
<h1 class="text-center">UPDATE FORM</h1>
    <form action="${pageContext.request.contextPath}/handle-product" method="post">
    <input type="hidden" name="id" value="${product.id}">
    <!-- Product Name -->
    <div class=" mb-5">
        <label for="name">Product Name</label>
        <input type="text" id="name" name="name" class="form-control" placeholder="Product name" value="${product.name}" >
    </div>

    <!-- Product Description -->
    <div class="form-group mb-5">
        <label for="description">Product Description</label>
        <textarea id="description" name="description" placeholder="Product description" class="form-control">${product.description}</textarea>
    </div>

    <!-- Product Price -->
    <div class="form-group mb-5">
        <label for="price">Product Price</label>
        <input type="text" id="price" name="price" class="form-control" placeholder="Product price" value="${product.price}">
    </div>

        <div class="container text-center">
            <a href="${pageContext.request.contextPath}" class="btn btn-primary btn-block mb-4">Back</a>
            <button type="submit" class="btn btn-primary btn-block mb-4">Update</button>
        </div>
    </form>
</div>

<!-- Include your JavaScript or other footer elements if needed -->

</body>
</html>
