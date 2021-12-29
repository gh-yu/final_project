<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Member Management</title>
</head>
<style>
	.btn{background: #6495ED; border-color: #6495ED;}
	#searchForm select{width: 130px; margin-right: 5px;}
	#searchForm button{background: none; border: none;}
	.disabled a:hover{background: white; color: white}
</style>
<body>

    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">	

		<c:import url="../common/menubar_admin.jsp"/>
    
        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">
            <div class="container-fluid">
                <div class="row page-titles mx-0">
                    <div class="col-sm-6 p-md-0">
                        <div class="welcome-text">
	                        <c:set var="normal" value="0"/>
	                        <c:set var="pause" value="0"/>
	                        <c:forEach var="m" items="${ mList }">
                        		<c:if test="${ m.status eq 0 }">
                        			<c:set var="normal" value="${ normal + 1 }"/>
                        		</c:if>
                        		<c:if test="${ m.status eq 1 }">
                        			<c:set var="normal" value="${ pause + 1 }"/>
                        		</c:if>
                      		</c:forEach>
                        	<span style="color: black; margin-right: 100px;"><b>사원 수</b></span>
                        	<span style="color: black; margin-right: 50px;"><b>${ memberCount[0] }</b>명(정상)</span>
                        	<span style="color: black;"> 중지: <span> ${ memberCount[1] }</span>명</span>
                        </div>
                   	</div>
                    <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">조직 관리</li>
                            <li class="breadcrumb-item active"><a href="javascript:void(0)">사원 관리</a></li>
                        </ol>
                    </div>
                </div>
                <!-- row -->

                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Member List</h4>
                            </div>
                            <div class="card-body">
				                <div style="float: right;">
					                <form id="searchForm" action="${ contextPath }/admin/msearch.ad" method="get">
					                	<select id="selectDept" name="selectDept"> <!-- change시 value != ''일때 form submit하기 -->
					                    	<option value="">부서</option>  
					                    	<c:forEach var="d" items="${ dList }">
					                    		<c:if test="${ selectDept ne d.deptId }">
					                    			<option value="${ d.deptId }">${ d.deptName }</option>
					                    		</c:if>
					                    		<c:if test="${ selectDept eq d.deptId }">
					                    			<option value="${ d.deptId }" selected>${ d.deptName }</option>
					                    		</c:if>
					                    	</c:forEach>
					                    </select>
					                    <select id="selectJob" name="selectJob">
					                    	<option value="">직위/직책</option>
					                    	<c:forEach var="j" items="${ jList }">
					                    		<c:if test="${ selectJob ne j.jobId }">
					                    			<option value="${ j.jobId }">${ j.jobName }</option>
					                    		</c:if>
					                    		<c:if test="${ selectJob eq j.jobId }">
					                    			<option value="${ j.jobId }" selected>${ j.jobName }</option>
					                    		</c:if>
					                    	</c:forEach>
					                    </select>
					                    <input type="search" name="searchValue" style="width: 150px;" placeholder="사원 이름">
					                    <button><i class="mdi mdi-magnify"></i></button>
					                </form>
					                <script>
					                    $('#selectDept').on('change', function(){
					                    	var selectDept = $(this).val();
					                    	if(selectDept != '부서') {
					                    		$('#searchForm').submit();
					                    	}
					                    });
					                    		
					                    $('#selectJob').on('change', function(){
					                    	var selectJob = $(this).val();
					                    	if(selectJob != '직위/직책') {
					                    		$('#searchForm').submit();
					                    	}
					                    });
					                </script>
				                </div>
				             	<form id="deleteForm" action="${ contextPath }/admin/mdelete.ad" method="get" onsubmit="return validate();">
	                            	<div style="margin-bottom: 10px;">
					                    <button class="btn btn-dark">계정 삭제</button>
					                    <!-- 계정 상태 변경하는 모달창 부르는 버튼도 -->
					                </div>
	                                <div class="table-responsive">
	                                    <table class="table table-bordered verticle-middle table-responsive-sm" style="color: black; text-align: center;">
	                                        <thead>
	                                            <tr>
	                                                <th scope="col" width="30px"><input type="checkbox" id="checkAll"></th>
	                                                <th scope="col" width="120px">이름</th>
	                                                <th scope="col" width="120px">직위/직책</th>
	                                                <th scope="col" width="120px">부서</th>
	                                                <th scope="col" width="120px">아이디</th>
	                                                <th scope="col" width="200px">이메일</th>
	                                                <th scope="col" width="100px">입사일</th>
	                                                <th scope="col" width="100px">계정상태</th>
	                                                <th scope="col" width="50px">상세</th>
	                                                <c:set var="loopFlag" value="false"/>
	                                                <c:forEach var="m" items="${ mList }">
	                                                	<c:if test="${ not loopFlag }">
			                                               	<c:if test="${ m.status eq 2 }">  <!-- 가입 대기 상태일 때 -->
			                                               		<th scope="col" width="150px">가입 승인</th>
			                                               		<c:set var="loopFlag" value="true"/>
			                                              	</c:if> 
	                                                	</c:if>
	                                                </c:forEach>
	                                            </tr>
	                                        </thead>
	                                        <tbody>
	                                        	<c:if test="${ empty mList && searchValue ne null }">
	                                        		<tr>
			                                        	<td colspan="9">검색 결과가 없습니다.</td>
		                                         	</tr>
	                                        	</c:if>
	                                        	<c:if test="${ empty mList && searchValue eq null }">
	                                        		<tr>
			                                        	<td colspan="9">등록된 사원이 없습니다.</td>
		                                         	</tr>
	                                        	</c:if>
	                                         	<c:forEach var="m" items="${ mList }">
		                                            <tr>
		                                            	<td><input type="checkbox" name="mId" value="${ m.mId }"></td>
		                                                <td>${ m.mName }</td>
		                                                <td>${ m.jobName }</td>
		                                                <td>${ m.deptName }</td>
		                                                <td>${ m.mId }</td>
		                                                <td>${ m.email }</td>
		                                                <td>${ m.enrollDate }</td>
		                                                <td>
			                                                <c:if test="${ m.status eq 0 }">
			                                                	정상
			                                                </c:if>
			                                                <c:if test="${ m.status eq 1 }">
			                                                	중지
			                                                </c:if>
			                                                <c:if test="${ m.status eq 2 }">
			                                                	승인 대기
			                                                </c:if>		                                                		                                                	
		                                                </td>
		                                                <td>
		                                                    <span>
		                                                        <a href="javascript:void()" class="mr-4" data-toggle="tooltip"
		                                                            data-placement="top" title="Edit" style="padding-left: 30%;"><i
		                                                                class="fa fa-search color-muted"></i></a>
		<!--                                                         <a href="javascript:void()" data-toggle="tooltip"
		                                                            data-placement="top" title="Close"><i
		                                                                class="fa fa-close color-danger"></i></a> -->
		                                                    </span>
		                                                </td>
		                                                <c:if test="${ m.status eq 2 }"> <!-- 가입 대기 상태일 때 -->
		                                               		<td>
				                                                <div class="btn-group"> <!-- ajax로 처리  -->
								                                    <button id="approveBtn" type="button" class="btn btn-primary in" style="background: #6495ED; border: #6495ED;">승인</button>
								                                    <button id="deleteBtn" type="button" class="btn btn-primary out" style="background: #CD5C5C; border: #CD5C5C;">취소</button> 
								                                </div>
							                                </td>
	                                              		</c:if>
	                                              		<c:if test="${ loopFlag && m.status ne 2 }">
	                                              			<td></td>
	                                              		</c:if>
	                                            	</tr>
	                                            </c:forEach>
	                                        </tbody>
	                                    </table>
	                                </div>
                                </form>
                            </div>
                        
                            <!-- 페이징 영역 시작 -->
                            <div style="margin-left: auto; margin-right: auto;">
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
												<c:if test="${ selectDept ne null || selectJob ne null || searchValue ne null }"> <!-- null이 아니면 검색을 했다는 뜻 -->
													<c:param name="selectDept" value="${ selectDept }"/>
													<c:param name="selectJob" value="${ selectJob }"/>
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
	                                        		<c:if test="${ selectDept ne null || selectJob ne null || searchValue ne null }"> 
														<c:param name="selectDept" value="${ selectDept }"/>
														<c:param name="selectJob" value="${ selectJob }"/>
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
	                                        	<c:if test="${ selectDept ne null || selectJob ne null || searchValue ne null }"> 
													<c:param name="selectDept" value="${ selectDept }"/>
													<c:param name="selectJob" value="${ selectJob }"/>
														c:param name="searchValue" value="${ searchValue }"/>
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
                            <!-- 페이징 영역 끝 -->
                            
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
                <p>Copyright © Designed &amp; Developed by <a href="#" target="_blank">CODEUS</a> 2021</p>
            </div>
        </div>
        <!--**********************************
            Footer end
        ***********************************-->      
          
    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->
    
</body>

</html>