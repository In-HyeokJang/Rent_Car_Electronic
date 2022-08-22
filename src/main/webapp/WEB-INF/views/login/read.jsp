<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="util" uri="/ELFunctions" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
  <title>회원 정보</title>
  <meta charset="utf-8">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <link rel="stylesheet" href="/css/login.css">
     <style>
                table {
                  width: 100%;
                  border-top: 1px solid #B2CCFF;
                  border-collapse: collapse;
                }
                  th, td {
                    border-bottom: 1px solid #B2CCFF;
                    padding: 10px;
        }
          tbody tr:nth-child(1) {
            background-color: #e3f2fd;
          }
     </style>
  <script type="text/javascript">
     	 function updateU(){
	         var url = "update";
             	 url += "?id=${dto.id}";

            	  location.href = url;
              }
	function del() {
		if(confirm("정말 회원을 삭제하시겠습니까?")){
			  var url = "delete";
                  url += "?id=${dto.id}";
		location.href = url;
		}
	}
     </script>

</head>
<body>
   <div class="form-block">

<h2 align="center">${dto.mname} 님의 정보</h2><br><br><br>
 <table class="table table-bordered">

 <tr>
 	<th>아이디</th>
 	<td>${dto.id}</td>
 </tr>
 <tr>
 	<th>이름</th>
 	<td>${dto.mname}</td>
 </tr>
 <tr>
 	<th>핸드폰 번호</th>
 	<td>${dto.phone}</td>
 </tr>
  <tr>
  	<th>운전면허번호</th>
  	<td>${dto.license}</td>
  </tr>
 <tr>
 	<th>이메일</th>
 	<td>${dto.email}</td>
 </tr>
 <tr>
 	<th>우편번호</th>
 	<td>${dto.zipcode}</td>
 </tr>
 <tr>
 	<th>주소</th>
 	<td>${dto.address1} ${dto.address2}</td>
 </tr>
 <tr>
 </tr>
 <tr>
 	<th>날짜</th>
 	<td>${dto.mdate}</td>
 </tr>

 </table>
 <div style="text-align: center">
 <br> <br> <br> <br>
 <button class="cre_btn" onclick="updateU()">정보 수정</button>&nbsp;&nbsp;&nbsp;&nbsp;
 <button class="cre_btn" onclick="del()">회원 삭제</button>
 <div>
  <br> <br>
 <button class="cre_btn2" onclick="location.href='/exception/admin/user/list'">회원 목록</button>
 </div>
</div>
<br>
</body>
</html>