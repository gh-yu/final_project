<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="h-100">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>비밀번호 찾기</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${ contextPath }/resources/assets/images/favicon.png">
    <link href="${ contextPath }/resources/assets/css/style.css" rel="stylesheet">
    <script src="${ contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<style>
	.button{display: inline;}
	.display, .pwdUpdate{display: none;}
</style>
</head>

<body class="h-100">
	
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>

    <div class="authincation h-100">
        <div class="container-fluid h-100">
            <div class="row justify-content-center h-100 align-items-center">
                <div class="col-md-6">
                    <div class="authincation-content">
                        <div class="row no-gutters">
                            <div class="col-xl-12">
                                <div class="auth-form">
                                <div align="center">
                                	<a href="${contextPath}" class="brand-logo" >
                						<img class="logo-abbr" src="${contextPath}/resources/assets/images/mainlogo.png" style="width: 250px; height: 120px;">		
            						</a>
                                </div>
                                    <div class="beforePwdUpdate"> 
                                        <div class="form-group">
                                            <label><strong>아이디</strong></label>
                                            <input type="text" id="mId" name="mId" class="form-control"><br>
                                            <label><strong>이름</strong></label>
                                            <input type="text" id="mName" name="mName" class="form-control"><br>
                                            <label><strong>이메일</strong></label>
                                            <input type="email" id="email" name="email" class="form-control">
                                            <div class="display"><span id="emailGuidev" class="text-danger" style="font-size: small;">이메일 형식으로 입력해 주세요.</span><br></div>
                                            <span style="font-size: small;">※회회원가입시 입력했던 이메일을 입력해 주세요. 비밀번호 변경을 위한 인증 코드가 발송됩니다.</span><br><br>
                                            <!-- <input type="hidden" id="authCode" name="authCode"> -->
                                        </div>
                                        <div STYLE='font-size: x-large; font-weight: bolder;'class="button">
                                            <button id="pwdSearch" type="button" class="btn btn-primary btn-block">찾기</button>
                                            <button type="button" class="btn btn-primary btn-block" onclick="location.href='${contextPath}'">취소</button>
                                        </div>
                                    </div>
                                    
                                    <div class="pwdUpdate"> 
	                                    <form id="pwdSearchForm" action="pwdSearch.me" method="post">
	                                    	<label><strong>인증 코드</strong></label>
	                                    	<input type="text" id="authCode" name="authCode">
	                                    	<label><strong>새 비밀번호</strong></label>
	                                    	<input type="password" id="mPwd" name="mPwd">
	                                    	<label><strong>새 비밀번호 확인</strong></label>
	                                    	<input type="password" id="mPwdCheck" name="mPwdCheck">
	                                    	
		                                    <div STYLE='font-size: x-large; font-weight: bolder;'class="button">
	                                            <button id="pwdUpdate" type="button" class="btn btn-primary btn-block">비밀번호 수정</button>
	                                            <button type="button" class="btn btn-primary btn-block" onclick="location.href='${contextPath}'">취소</button>
	                                        </div>
	                                    </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
    	
    	// 이메일 정규식
    
		// 찾기 버튼 클릭시 이메일로 인증 코드 발송    
		let authCode = "";
		$('#pwdSearch').on('click', function() {
			let mId = $('#mId').val();
			let email = $('#email').val();
			let mName = $('#mName').val();
			
			$.ajax({
				url: 'sendMail.me',
				data: {email:email, mName:mName},
				success: function(data){
					console.log(data);
					if (data.length > 0 && data != "fail") {
						console.log(data)
						//$('#authCode').val(data.trim());
						authCode = data.trim();
						//$('#pwdSearchForm').submit();
					} else {
						alert('유효한 이메일을 입력해주세요.');
					}
				},
				error: function(data){
					console.log(data);
					alert('유효한 이메일을 입력해주세요.');
				}
			});
		});
		
        // 비밀번호 정규식, 비밀번호 확인 일치 여부
        
        // form 제출 전 입력사항 확인
        // 인증코드 동일 여부 검증
         		
        // 메일 발송 전 없는 회원일시 메시지 가지고 리턴, 일치하는 회원정보가 없습니다. 또는 해당 사용자가 존재하지 않습니다.
		$(function(){
            if ('${msg}' != '') {
                var msg = '${msg}';
                if (msg == '1') {
                    msg = '관리자에 의해 중지된 계정입니다.'
                } else if(msg == '2') {
                    msg = '관리자의 가입 승인이 필요합니다.'
                } else {
                    msg = '아이디 또는 비밀번호가 잘못 입력 되었습니다. 아이디와 비밀번호를 정확히 입력해 주세요.'
                }
                 alert(msg)
                <c:remove var="msg" scope="request"/>
                history.replaceState({}, null, '${ contextPath }/');
            }
            

            var alert = function(msg, title, icon) {
                Swal.fire({
                	// position: 'top',
                    background: 'white',
                    color: 'black',
                    title : title,
                    text : msg,
                    icon: icon,
                    // timer : 1500,
                    customClass : 'sweet-size',
                    showConfirmButton : true
                });
            }
		});
		
		
    </script>
        
	    <!-- Required vendors -->
	    <script src="${ contextPath }/resources/assets/vendor/global/global.min.js"></script>
	    <script src="${ contextPath }/resources/assets/js/quixnav-init.js"></script>
	    <script src="${ contextPath }/resources/assets/js/custom.min.js"></script>   
	    
	    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>  
    
</body>

</html>