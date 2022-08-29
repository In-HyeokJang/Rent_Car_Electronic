<%@ page contentType="text/html; charset=UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ page import="java.util.*,com.rentcar.login.*" %>
			<c:set var="root" value="${pageContext.request.contextPath }" />
			<!DOCTYPE html>
			<html>

			<head>
				<title>회원 목록</title>
				<meta charset="utf-8">
				<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
                        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
				<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
				<script type="text/javascript">
					function read(id) {
						var url = "read";
						url += "?id=" + id;
						location.href = url;
					}
				</script>
				<style>
					.layout {
						display: flex;
						justify-content: center
					}
				</style>
			</head>

			<body>
				<div class="layout">
				<div>
					<br>
					<div class="form-block_2">
						<h2 align="center">회원 목록</h2><br><br>
						<br>
						<form class="form-inline" method="post" action="list">
							
								<div class="form-group">
									<div class="box">
										<select name="col" class="select">
											<option value="mname" <c:if test="${col=='mname' }">selected</c:if>
												>이름</option>
											<option value="id" <c:if test="${col=='id' }">selected</c:if>
												>아이디</option>
										</select>
										<input type="text" class="form-control" name="word" required="required"
											value="${word}">&nbsp;&nbsp;
										<button class="cre_btn">검색</button>
									</div>
								</div>
						</form>
					</div>

					<div class="form-block">
						<br>
						<c:choose>
							<c:when test="${empty list}">
								<div class='well well-lg'> 등록된 회원이 없습니다. </div>
							</c:when>
							<c:otherwise>
								<c:forEach var="dto" items="${list}">
									<table class="table">
										<tr>
											<th class="col-sm-2">아이디</th>
											<td class="col-sm-8"><a href="javascript:read('${dto.id}')">${dto.id}</a>
											</td>
										</tr>
										<tr>
											<th class="col-sm-2">이름</th>
											<td class="col-sm-8">${dto.mname}</td>
										</tr>
										<tr>
											<th class="col-sm-2">핸드폰 번호</th>
											<td class="col-sm-8">${dto.phone}</td>
										</tr>
										<tr>
											<th class="col-sm-2">이메일</th>
											<td class="col-sm-8">${dto.email}</td>
										</tr>
									</table>
								</c:forEach>
							</c:otherwise>
						</c:choose>
						<br><br><br>
						${paging}
					</div>
				</div>
				</div>
			</body>

			</html>