<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored="false" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <%@ include file="./base.jsp" %>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>Insert title here</title>
</head>
<body>
<div class="container mt-5">
<h1 class="text-center mb-5">Product App</h1>
<table class="table table-hover  table-bordered">
  <thead>
              
    <tr class="table-dark">
      <th scope="col">Id</th>
      <th scope="col">Product Name</th>
      <th scope="col">Product Description</th>
      <th scope="col">Product Price</th>
       <th scope="col">Action</th>
    </tr>
    
  </thead>
  <tbody>
  <c:forEach items="${products}" var="p">   
    <tr>
      <th scope="row">${p.id }</th>
      <td>${p.name }</td>
      <td>${p.description }</td>
      <td><i class="fa-solid fa-indian-rupee-sign"></i>${p.price}</td>
      <td class="flex">
      <a href="delete/${p.id}"><i class="fa-solid fa-trash text-danger"></i></a>
      <a href="update/${p.id}"><i class="fas fa-edit"></i></a>
      </td>
    </tr>
</c:forEach>
     
  </tbody>
</table>
<div class="container text-center">
            <a href="add-product" class="btn btn-outline-success">Add product</a>
 </div>
</div>
</body>
</html>