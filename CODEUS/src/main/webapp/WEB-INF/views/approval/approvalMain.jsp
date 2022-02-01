<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>main page-dashboard</title>
</head>

<style>
	/* 출퇴근 관련 css */
	#comTimeBtn, #offTimeBtn, #addAnnualLeave{
		 border-radius: 25px;
		 width: 100px;
		 height: 40px;
		 background: none;
	 }
	 
	 .afterPush{
	 	border: 1px solid gray; color: gray;  
	 }
	 
	 .beforePush{
		 border: 1px solid #593BDB; color: #593BDB;
	 }
 	
 	#clock{
 		font-size: x-large;
 		color: black;
 	}
 	
 	#today{
 		color: darkgray;
 	}
 	
 	.profile-photo img{
 		width: 170px; 
 		height: 170px;
 		border-radius: 100%;
 	}
 	
 	#myName{
 		color: black;
 		font-size: large;
 		font-weight: bold;
 	}
 	
 
 	/* 공지사항 관련 css */
 	.table tbody{font-size: 14px;}
	.table a{color: black;}
 	#noticeBoardArea{color: black;}
 	.pin {font-size: large; color: orange;}
 
 	
 	/* 캘린더 관련 css */
 	body.stop-dragging
	{
	  -ms-user-select: none; 
	  -moz-user-select: -moz-none;
	  -khtml-user-select: none;
	  -webkit-user-select: none;
	  user-select: none;
	  height:10px;
	}

	
	.container{
		background-color: white;
		margin: 0 auto;
		margin-top: 2%;
/* 		width: 50px; */
	}
</style>

<body class='stop-dragging'>

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
            
				<!------------- 프로필 ------------->
                <div class="row">
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-body">
                            	<div id="memberProfile">
                            		<br>
									<div class="profile-photo" align="center">
		                                <c:if test="${ loginUser.imgChangeName eq null }">
				                        	<img src="${contextPath}/resources/assets/images/empty-profile.png" alt="profile-image">
				                        </c:if>
				                        <c:if test="${ loginUser.imgChangeName ne null }">
				                            <img src="${contextPath}/resources/uploadFiles/${ loginUser.imgChangeName }" alt="profile-image">
				                        </c:if>
				                    </div>
				                    <br>
				                    <div id="myName" align="center">${ loginUser.mName } ${ loginUser.jobName }</div>
				                    <div id="myDept" align="center">${ loginUser.deptName }</div>
                            	</div>
                            	<br>
                                <div id="btnArea" align="center">
                                	<button class="btn btn-primary" data-toggle="modal" data-target="#selectDocForm">새 결재 진행</button>
                        		</div>
					              
	                            <!-- 새 결재 진행 form 넘어가기 전 양식 선택 Modal -->
	                            <div class="modal fade" id="selectDocForm">
	                            	<div class="modal-dialog modal-dialog-centered" role="document">
	                                	<div class="modal-content">
	                                    	<div class="modal-header">
	                                        	<h5 class="modal-title">결재 양식 선택</h5>
	                                            <button type="button" class="close" data-dismiss="modal"><span>&times;</span>
	                                            </button>
	                                        </div>
	                                        <div class="modal-body" style="color: black;">
	                                        	<label class="col-form-label">양식 : </label>
	                                        	<select class="form-control" style="width: 200px; display: inline;">
	                                        		<option value="1">업무 기안</option>
	                                        		<option value="4">휴가 신청서</option>
	                                        	</select>
	                                        </div>
	                                        <div class="modal-footer">
	                                            <button type="button" class="btn btn-primary" id="newDocBtn">선택</button>
	                                            <button type="button" class="btn btn-light" data-dismiss="modal">취소</button>
	                                        </div>
	                                    </div>
	                            	</div>
	                          	</div>
                        		
                        		<script>
                        			$('#newDocBtn').on('click', function(){
                        				formNum = $('#selectDocForm').find('select').val();
                        				console.log(formNum);
                        				location.href = 'newdocument.ap?form=form' + formNum;
                        			});	
                        			
                        		</script>
                            </div>
                            
                            <!---- 결재상태 ----->
                            <div class="card-body" id="approvalStatus">
									
							</div>
                        </div>
                    </div>
                    <script>
					</script>
					<!------------- 프로필 끝  ------------->
					
                    <div class="col-lg-8">
                        <div class="card">
                            <div class="card-body">
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4">
                    	<div class="card">
                            <!---- 결재상태  및 이동 버튼 ----->
                            <div class="card-body" id="approvalStatus">
								<div class="table-responsive">
                                    <table class="table student-data-table m-t-20">
                                        <thead>
                                            <tr>
                                                <th>Expense Type</th>
                                                <th>Amount</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>

                                                <td>
                                                    $2000
                                                </td>
                                                <td>
                                                    <span class="badge badge-primary">Paid</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
							</div>
                        </div>
                    </div>
                   	<!-------------   ------------->
                    <div class="col-lg-8">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title"></h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="noticeBoardArea" class="table student-data-table m-t-20">
                                        <thead>
                                        	<tr style="font-size: large;">
	                                           <th scope="col" width="70px">번호</th>
	                                           <th scope="col" width="300px">제목</th>
	                                           <th scope="col" width="200px">작성자</th>
	                                           <th scope="col" width="120px">작성일</th>
	                                           <th scope="col" width="100px">조회수</th>
	                                        </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
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

    <!--**********************************
        Scripts
    ***********************************-->
	 <!--**********************************
        Calendar Scripts
    ***********************************-->
   

</body>
</html>