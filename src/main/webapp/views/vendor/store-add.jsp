<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<form action="${pageContext.request.contextPath}/vendor/store/insert" method="post" enctype="multipart/form-data">
  <label for="fname">Store name:</label><br>
  <input type="text" id="storename" name="storename"><br>
  <label for="lname">Link Avatar:</label><br>
  <input type="text" id="images" name="images">
  <label for="lname">Upload Image:</label><br>
  <input type="file" id="images1" name="images1">
  
 
   <input type="submit" value="Insert">
</form>