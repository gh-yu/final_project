<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<style>
	#searchForm button{background: none; border: none;}
	.disabled a:hover{background: white; color: white}
	.searchArea input{display: inline;  width: 150px;}
	.searchArea select{display: inline;  width: 100px;}
	.searchArea select, .searchArea input{font-size: small;}
	.writeFormBtn{color: #696969; font-size: 14px; font-weight: bold;}
</style>
</head>
<body>

    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">	

		<c:import url="../common/menubar.jsp"/>
    
        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title" style="font-weight: bold; font-size: large;">공지사항</h3>
                            </div>
                            <div class="card-body">
                            	<c:if test="${loginUser.managerYn == 'Y' }">
                            		<div id="btnArea">
                            			<a class="writeFormBtn" href="nbinsertView.nb"><i class="bi bi-pencil"></i> 글쓰기</a>
                            		</div>
                            	</c:if>
	                                <div class="table-responsive">
	                                    <table class="table table-hover table-responsive-sm" style="color: black; text-align: center;">
	                                        <thead>
	                                            <tr>
	                                                <th scope="col" width="100px">이름</th>
	                                                <th scope="col" width="120px">직위</th>
	                                                <th scope="col" width="150px">부서</th>
	                                                <th scope="col" width="120px">아이디</th>
	                                                <th scope="col" width="180px">이메일</th>
	                                                <th scope="col" width="130px">입사일</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody>
	                                        	<c:if test="${ empty nbList && searchValue ne null }">
	                                        		<tr>
			                                        	<td colspan="9">검색 결과가 없습니다.</td>
		                                         	</tr>
	                                        	</c:if>
	                                        	<c:if test="${ empty nbList && searchValue eq null }">
	                                        		<tr>
			                                        	<td colspan="9">등록된 글이 없습니다.</td>
		                                         	</tr>
	                                        	</c:if>
	                                         	<c:forEach var="nb" items="${ nbList }">
		                                            <tr>
		                                            	<td><input type="checkbox" class="checkM" name="mId" value="${ m.mId }"></td>
		                                                <td>${ nb.bNum }</td>
		                                                <c:url var="noticeBoarddetail" value="noticeBoardDetail.nb">
		                                                    <c:param name="bNum" value="${ nb.bNum }"/>
		                                                    <c:param name="page" value="${ pi.currentPage }"/>
		                                                    <c:if test="${ searchValue ne null }"> <!-- null이 아니면 검색을 했다는 뜻 -->
																<c:param name="searchValue" value="${ searchValue }"/>
															</c:if>	
		                                                </c:url>
		                                                <td><a href="${ noticeBoardDetail }">${ nb.bTitle }</a></td>
		                                                <td></td>
		                                                <td></td>
		                                                <td></td>
		                                                <td></td>
		                                                <td>
		                                                </td>
	                                            	</tr>
	                                            </c:forEach>
	                                        </tbody>
	                                    </table>
	                                </div>
                            </div>
                        
                       		<script>
								// 수정 또는 삭제 성공시 success 알럿창 띄우기
	                			$(function(){
	                				if ('${message}' != '') {
	                					alert('삭제되었습니다.');
	                					<c:remove var="message" scope="request"/>
		                				history.replaceState({}, null, location.pathname);
	                				}
	                			});
                       			
                       			// sweet alert customize
				        		var alert = function(msg, title, icon) {
				        			Swal.fire({
				        				position: 'top', // top : 상단 중앙에 띄우기
				        				background: '#292B30', // 알럿창 배경색
					       				color: 'white', // 글자색
				        				title : title, // 제목(큰 글씨)
				        				text : msg, // 내용(작은 글씨)
				        				icon: icon, // info, error 등 icon type
				        				timer : 2000, // 자동 종료 타이머
				        				customClass : 'sweet-size', 
				        				showConfirmButton : false // ok버튼 표시 여부
				        			});
				        		}
                       		</script> 
                        
                            <!--------------- 페이징 영역 시작 ---------------->
                            <div id="paging" style="margin-left: auto; margin-right: auto;">
                            	<nav>
                                	<ul class="pagination pagination-xs pagination-circle">
                                		<!-- 이전 -->
                                		<c:if test="${ pi.currentPage <= 1 }">
	                                  		<li class="page-item page-indicator disabled">
	                                        	<a class="page-link">
	                                            	<i class="icon-arrow-left"></i></a>                                     
	                                  		</li>
                                  		</c:if>
                                  		<c:if test="${ pi.currentPage > 1 }">
                                  			<c:url var="before" value="${ loc }">
												<c:param name="page" value="${ pi.currentPage - 1 }"/>
												<c:if test="${ searchValue ne null }"> <!-- null이 아니면 검색을 했다는 뜻 -->
													<c:param name="searchValue" value="${ searchValue }"/>
												</c:if>												
											</c:url>
	                                  		<li class="page-item page-indicator">
	                                        	<a class="page-link" href="${ before }">
	                                            	<i class="icon-arrow-left"></i></a>
	                                        </li>  
                                        </c:if> 
                                        
                                        <!-- 숫자 -->
                                        <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
	                                        <c:if test="${ p eq pi.currentPage }">
		                                        <li class="page-item active"><a class="page-link">${ p }</a></li>
	                                        </c:if>
	                                        <c:if test="${ p ne pi.currentPage }">
	                                        	<c:url var="pagination" value="${ loc }">
	                                        		<c:param name="page" value="${ p }"/>
	                                        		<c:if test="${ searchValue ne null }"> 
														<c:param name="searchValue" value="${ searchValue }"/>
													</c:if>	
	                                        	</c:url>
	                                       		<li class="page-item"><a class="page-link" href="${ pagination }">${ p }</a></li>
	                                        </c:if>
                                        </c:forEach>
                                        
                                        <!-- 다음 -->
                                        <c:if test="${ pi.currentPage >= pi.maxPage }">
	                                        <li class="page-item page-indicator disabled">
	                                            <a class="page-link">
	                                                <i class="icon-arrow-right"></i></a>
	                                        </li>
                                        </c:if>
                                         <c:if test="${ pi.currentPage < pi.maxPage }">
                                         	<c:url var="after" value="${ loc }">
                                        		<c:param name="page" value="${ pi.currentPage + 1 }"/>
	                                        	<c:if test="${ searchValue ne null }"> 
													<c:param name="searchValue" value="${ searchValue }"/>
												</c:if>	                                       		
                                         	</c:url>
	                                        <li class="page-item page-indicator">
	                                            <a class="page-link" href="${ after }">
	                                                <i class="icon-arrow-right"></i></a>
	                                        </li>
                                        </c:if>                                       
                                    </ul>
                                </nav>
                            </div>
                            <!--------------- 페이징 영역 끝 ---------------->
                            
                            <!------------- 글 검색 -------------->
                            <div>
	                            <div class="searchArea" align="center">
					                <form id="searchForm" action="${ contextPath }/noticeBoardList.nb" method="get">
					                    <select class="form-control" id="searchCondition" name="searchCondition" >
											<option value="title">제목</option>
											<option value="content">내용</option>
											<option value="writer">작성자</option>
										</select>
					                    <input type="search" id="searchValue" class="form-control" name="searchValue" placeholder="검색" required autocomplete="off">
					                    <button><i class="mdi mdi-magnify"></i></button>
					                </form>
				                </div>
				                <script type="text/javascript">
									function searchBoard(){
										var searchCondition = $("#searchCondition").val();
										var searchValue = $("#searchValue").val();
										
										location.href="search.bo?searchCondition="+searchCondition+"&searchValue="+searchValue;
									}
								</script>
								<br><br>
							</div>
				          	<!------------- 글 검색 끝-------------->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--**********************************
            Content body end
        ***********************************-->

        <!--**********************************
            Footer start
        ***********************************-->
        <div class="footer">
            <div class="copyright">
                <p>Copyright © Designed &amp; Developed by <a href="${contextPath}/home.do" target="_blank">CODEUS</a> 2021</p>
            </div>
        </div>
        <!--**********************************
            Footer end
        ***********************************-->      
          
    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->
    
   <!--**********************************
        Scripts
    ***********************************-->
</body>

</html>