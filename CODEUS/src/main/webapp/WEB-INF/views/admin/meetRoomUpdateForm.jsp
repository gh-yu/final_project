<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
	.profile-photo img{width: 150px; height: 150px; margin-top: 30px; margin-left: 30px;}
	.member-info{color: black; font-size: medium;}
	.col-form-label{font-weight: bolder; width: 150px;}
	.form-col{padding-left: 15px;}
	.member-info input{display: inline;}
	.profile-photo{position: relative;}
	.profile-photo label{display: inline; position: absolute; top: 155px; left: 155px;}
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
             	<div class="row page-titles mx-0">
                    <div class="col-sm-6 p-md-0">
                       <b style="color: black; font-size: large;">내 정보</b>
                   	</div>
                  <!--   <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"></li>
                            <li class="breadcrumb-item active"></li>
                        </ol>
                    </div> -->
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                           		<div class="member-info">
                                    <form>
                                   		<div class="email-left-box px-0 mb-5">
	                                        <div class="profile-photo">
	                                        	<c:if test="${ member.imgChangeName eq null }">
			                                 		<img id="profile-image" src="${contextPath}/resources/assets/images/empty-profile.png" alt="profile-image">
			                               		</c:if>
			                               		<c:if test="${ member.imgChangeName ne null }">
			                                 		<img id="profile-image" src="${contextPath}/resources/uploadFiles/${ member.imgChangeName }" alt="profile-image">
			                               		</c:if>
											    <label for="input-image">
											        <i class="fa fa-camera" style="color: black; font-size: xx-large;"></i> <!-- class="fa fa-pencil" -->
											    </label>
											    <input type="file" id="input-image" name="reloadImg" accept=".jpg,.jpeg,.png,.gif" style="display: none;" required/>
			                               	</div>
			                            </div>
			                            <br>
			                            <div class="email-right-box ml-0 ml-sm-4 ml-sm-0">
			                               	<label class="col-form-label">이름</label>${ member.mName }
			                               	<br>
			                               	<label class="col-form-label">이메일</label>${ member.email }
			                               	<br>
			                               	<label class="col-form-label">생년월일</label>
			                               	<br>
			                               	<label class="col-form-label">전화번호</label>
			                               	<input type="text" name="phone" class="form-control" style="width: 150px;" value="${ member.phone }">
			                               	<br>
			                               	<label class="col-form-label">주소</label>
			                               	<br>
			                               	<div class="form-group row">
	                                             <label class="form-col col-form-label">자기소개</label>
	                                             <div class="col-lg-6">
	                                                 <textarea name="profile" rows="3" class="form-control" style="resize: none; width: 400px;">${ member.profile }</textarea>
	                                             </div>
	                                        </div>
	                                        <label class="col-form-label">부서</label>${ member.deptName }
	                                        <br>
	                                        <label class="col-form-label">직위/직책</label>${ member.jobName }
	                                        <br><br>
                                        </div>
                                        <div align="center">
                                        	<button type="button" class="btn btn-primary" id="btnSubmit">저장</button>
	                                        <button type="reset" class="btn btn-outline-primary">취소</button>
	                                       <!--  <button type="button" class="btn btn-outline-primary">목록으로</button> -->
                                        </div>                               
                                    </form>
                                </div>
                                <script>
		                			function readImage(input) {
		                				if(input.files && input.files[0]) {
	
		                					const reader = new FileReader();
	
		                					reader.onload = function(e){
		                						const previewImage = document.getElementById("profile-image");
		                						previewImage.src = e.target.result;
		                					}
		                						
		                					reader.readAsDataURL(input.files[0]);
		                				}
		                			}
		                							
		                			const inputImage = document.getElementById("input-image");
		                			inputImage.addEventListener("change", function(e){readImage(e.target)});		
                            	</script>
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
</body>
</html>