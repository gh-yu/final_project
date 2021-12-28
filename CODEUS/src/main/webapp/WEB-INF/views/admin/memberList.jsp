<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Member Management</title>
    <!-- Datatable -->
  <%--   <link href="${contextPath}/resources/assets/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet"> --%>
</head>
<style>
	.btn{background: #6495ED; border-color: #6495ED;}
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
                        	<span style="color: black; margin-right: 100px;"><b>사원 수</b></span>
                        	<span style="color: black; margin-right: 50px;"><b>10</b>명(재직중)</span>
                        	<span style="color: black;"> 퇴사: <span> 6</span>명</span>
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
				                    <select>
				                    	<option>fff</option>
				                    </select>
				                    <input type="search">
				                </div>
                            	<div style="margin-bottom: 10px;">
				                    <button type="button" class="btn btn-dark">퇴사 처리</button> <!-- 입사대기 상태일시는 취소로, 아닐시에는 퇴사로 보이게 -->
				                </div>
                                <div class="table-responsive">
                                    <table class="table table-bordered verticle-middle table-responsive-sm" style="color: black; text-align: center;">
                                        <thead>
                                            <tr>
                                                <th style="width: 30px;" scope="col"><input type="checkbox" value=""></th>
                                                <th scope="col">이름</th>
                                                <th scope="col">직위/직책</th>
                                                <th scope="col">부서</th>
                                                <th scope="col">아이디</th>
                                                <th scope="col">이메일</th>
                                                <th scope="col">입사일</th>
                                                <th scope="col">입사일</th>
                                                <th scope="col">시원상태</th>
                                                <th scope="col" style="width: 30px;">상세</th>
                                                <!-- c:if 입사대기 상태일 때만 -->
                                                <th scope="col">입사 처리</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                         	<c:forEach begin="1" end="11" var="i">
                                            <tr>
                                            	<td><input type="checkbox" value=""></td>
                                                <td>Tiger Nixon${i}</td>
                                                <td>System Architect</td>
                                                <td>Edinburgh</td>
                                                <td>61</td>
                                                <td>2011/04/25</td>
                                                <td>$320,800</td>
                                                <td>재직중</td>
                                                <td>dd</td>
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
                                                <td>
                                                <!-- 입사대기일 시에만 보이게 c:if -->
                                                 <div class="btn-group">
				                                    <button type="button" class="btn btn-primary in" style="background: #6495ED; border: #6495ED;">승인</button>
				                                    <button type="button" class="btn btn-primary out" style="background: #CD5C5C; border: #CD5C5C;">취소</button> 
				                                </div>
				                                </td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="card-body">
                            	<div>
				                    <button type="button" class="btn btn-dark">퇴사 처리</button> <!-- 입사대기 상태일시는 취소로, 아닐시에는 퇴사로 보이게 -->
				                </div>
				                <br>
                                <div class="table-responsive">
                                    <table id="example" class="display" style="min-width: 845px;">
                                        <thead>
                                            <tr>
                                            	<td><input type="checkbox" value=""></td>
                                                <th>이름</th>
                                                <th>직위/직책</th>
                                                <th>부서</th>
                                                <th>생년월일</th>
                                                <th>입사일</th>
                                                <th>사원상태</th>
                                                <th>상세</th>
                                                <th>입사 처리</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<c:forEach begin="1" end="11" var="i">
                                            <tr>
                                            	<td><input type="checkbox" value=""></td>
                                                <td>Tiger Nixon${i}</td>
                                                <td>System Architect</td>
                                                <td>Edinburgh</td>
                                                <td>61</td>
                                                <td>2011/04/25</td>
                                                <td>$320,800</td>
                                                <td>재직중</td>
                                                <td>
                                                <td>
                                                    <span>
                                                        <a href="javascript:void()" class="mr-4" data-toggle="tooltip"
                                                            data-placement="top" title="Edit"><i
                                                                class="fa fa-search color-muted"></i></a>
<!--                                                         <a href="javascript:void()" data-toggle="tooltip"
                                                            data-placement="top" title="Close"><i
                                                                class="fa fa-close color-danger"></i></a> -->
                                                    </span>
                                                </td>
                                                <td>
                                                <!-- 입사대기일 시에만 보이게 c:if -->
                                                 <div class="btn-group">
				                                    <button type="button" class="btn btn-primary in" style="background: #6495ED; border: #6495ED;">승인</button>
				                                    <button type="button" class="btn btn-primary out" style="background: #CD5C5C; border: #CD5C5C;">취소</button> 
				                                </div>
				                                </td>
                                            </tr>
                                            </c:forEach>
                                            
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Name</th>
                                                <th>Position</th>
                                                <th>Office</th>
                                                <th>Age</th>
                                                <th>Start date</th>
                                                <th>Salary</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
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
    
    <!-- Datatable -->
 <%--    <script src="${contextPath}/resources/assets/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="${contextPath}/resources/assets/js/plugins-init/datatables.init.js"></script> --%>

</body>

</html>