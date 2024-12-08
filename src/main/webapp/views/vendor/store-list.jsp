<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>


<a href="${pageContext.request.contextPath }/vendor/store/add" 
   style="color: blue; font-weight: bold; text-decoration: none;">
   Add Store
</a>
<table border="1" width="100%" cellspacing="0" cellpadding="8" style="border: 1px solid #000; font-family: Arial, sans-serif; font-size: 14px;">
	<!-- Header của bảng -->
	<tr style="background-color: #4CAF50; color: white; text-align: left;">
		<th>STT</th>
		<th>Avatar</th>
		<th>Store ID</th>
		<th>Store Name</th>
		<th>Bio</th>
		<th>Action</th>
	</tr>

	<!-- Nội dung bảng -->
	<c:forEach items="${liststore}" var="cate" varStatus="STT">
		<tr style="background-color: ${STT.index % 2 == 0 ? '#f2f2f2' : '#ffffff'};">
			<td>${STT.index + 1}</td>
			<td>
				<c:choose>
					<c:when test="${cate.avatar != null && cate.avatar.length() >= 5 && cate.avatar.substring(0,5) != 'https'}">
						<c:url value="/image?fname=${cate.avatar}" var="imgUrl"></c:url>
					</c:when>
					<c:otherwise>
						<c:url value="${cate.avatar}" var="imgUrl"></c:url>
					</c:otherwise>
				</c:choose>
				<img style="max-height: 100px; max-width: 150px; border-radius: 8px;" src="${imgUrl}" alt="Avatar" />
			</td>

			<td>${cate._id}</td>
			<td>${cate.name}</td>
			<td>${cate.bio}</td>
			<td>
				<a href="<c:url value='/vendor/store/edit?id=${cate._id}'/>" style="color: blue;">Sửa</a> |
				<a href="<c:url value='/vendor/store/delete?id=${cate._id}'/>" style="color: red;">Xóa</a>
			</td>
		</tr>
	</c:forEach>
</table>
