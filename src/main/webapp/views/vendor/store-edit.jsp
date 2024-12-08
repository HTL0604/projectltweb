<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<form action="${pageContext.request.contextPath }/vendor/store/update" method="post" enctype="multipart/form-data">
	<input type="number" id="storeid" name="storeid" value="${cate._id}" hidden="hidden">

	<label for="storename">Store Name:</label><br>
	 <input type="text"id="storename" name="storename" value="${cate.name }"><br> 
	 <label for="bio">Store bio:</label><br>
	  <input type="text"id="bio" name="bio" value="${cate.bio }"><br> 
	  <label for="slug">Store slug:</label><br>
	   <input type="text"id="slug" name="slug" value="${cate.slug }"><br> 
	 <label for="images">Avatar:</label><br> 
				<c:choose>
					<c:when test="${cate.avatar != null && cate.avatar.length() >= 5 && cate.avatar.substring(0,5) != 'https'}">
						<c:url value="/image?fname=${cate.avatar}" var="imgUrl"></c:url>
					</c:when>
					<c:otherwise>
						<c:url value="${cate.avatar}" var="imgUrl"></c:url>
					</c:otherwise>
				</c:choose>
				<img id="imagess" style="max-height: 150px; max-width: 200px;" src="${imgUrl}" />	
	 <input type="file" onchange="chooseFile(this)" id="images"name="images" value="${cate.avatar}"><br>
     <br> <input type="submit" value="Update">
</form>