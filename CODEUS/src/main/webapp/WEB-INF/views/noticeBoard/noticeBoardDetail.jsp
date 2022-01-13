<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
											<table class="table table-striped"
												style="text-align: center; border: 1px solid #dddddd">
												<tbody>
													<tr>
														<th id="adminTd" style="background color: #eeeeee; text-align: center;"> 번호</th>
														<td id="td_content"> 
															<input type="hidden" id="no" name="no" value="">
														</td>											
													</tr>
													<tr>
														<th style="background color: #eeeeee; text-align: center;"> 카테고리</th>
														<td id="td_content"> 
															<input type="hidden" id="category" name="category">
														</td>
													</tr>
													<tr>
														<th  style="background color: #eeeeee; text-align: center;"> 제목</th>
														<td id="td_content"> 
															<input type="hidden" id="title" name="title">
														</td>
													</tr>
													<tr>
														<th id="adminReplyArea" style="background color: #eeeeee; text-align: center;"> 답변</th>
														<td id="td_content_reply">
															<textarea readonly style="border: none; resize: none; width: 700px; height: 100px; text-align: center;"></textarea>
															<%-- <%= faq.getFaqReply() %> --%>
															<input type="hidden" id="reply" name="reply" value="">
														</td>
													</tr>												
												</tbody>
											</table>
											<div id="btnArea">
												<input type="button" class="btn btn-default pull" id="FAQcancel" value="목록으로" onclick="location.href='<%= request.getContextPath() %>/FAQ.bo'">
												<input type="submit" class="btn btn-primary pull-right" id="editFaqBtn" value="수정하기">
											</div>
</body>
</html>