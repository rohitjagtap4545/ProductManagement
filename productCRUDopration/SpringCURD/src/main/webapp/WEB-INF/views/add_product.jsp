<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@ include file="./base.jsp" %>
    <title>Product Add</title>
    <!-- Include your CSS or other head elements if needed -->
</head>
<body>

<div class="container mt-5 p-5 bg-success p-2 text-dark bg-opacity-10" style="width:50%;">
<h1 class="text-center mb-5">Add Product</h1>
    <form action="handle-product" method="post">
    <!-- Product Name -->
    <div class=" mb-5">
        <label for="name">Product Name</label>
        <input type="text" id="name" name="name" placeholder="Product name" class="form-control" />
    </div>

    <!-- Product Description -->
    <div class="form-group mb-5">
        <label for="description">Product Description</label>
        <textarea id="description" name="description" placeholder="Product description" class="form-control"></textarea>
    </div>

    <!-- Product Price -->
    <div class="form-group mb-5">
        <label for="price">Product Price</label>
        <input type="text" id="price" name="price" placeholder="Product price" class="form-control" />
    </div>

        <div class="container text-center">
            <a href="${pageContext.request.contextPath}" class="btn btn-primary btn-block mb-4">Back</a>
            <button type="submit" class="btn btn-primary btn-block mb-4">Add</button>
        </div>
    </form>
</div>

<!-- Include your JavaScript or other footer elements if needed -->

</body>
</html>
