<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="h-100">
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>CODEUS 로그인 </title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="./resources/assets/images/favicon.png">
    <link href="./resources/assets/css/style.css" rel="stylesheet">
	<%-- <script src="${contextPath}/resources/js/jquery-3.6.0.min.js"></script> --%>
	<style>
		
	</style>  
</head>
<body class="h-100">

	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
	
    <!--**********************************
        Scripts
    ***********************************-->
    <!-- Required vendors -->
	 <script src="./resources/assets/vendor/global/global.min.js"></script>
	 <script src="./resources/resources/assets/js/quixnav-init.js"></script>
	 <script src="./resources/resources/assets/js/custom.min.js"></script>   
	 
	<div class="authincation h-100">
        <div class="container-fluid h-100">
            <div class="row justify-content-center h-100 align-items-center">
                <div class="col-md-6">
                    <div class="authincation-content">
                        <div class="row no-gutters">
                            <div class="col-xl-12">
                                <div class="auth-form">
            							<a href="${contextPath}" class="brand-logo">
                							<img class="logo-abbr" src="${contextPath}/resources/assets/images/logo2.png" alt="" style="border-radius: 100%; width: 95px; height: 65px; text-align : center;">		
               								<b class="brand-title" style="font-size: x-large;">CODEUS</b>
            							</a>
                                    <form action="login.me" method="post">
                                        <div class="form-group">
                                            <label><strong>아이디</strong></label>
                                            <input type="text" name="mId" class="form-control" placeholder="아이디를 입력하세요">
                                        </div>
                                        <div class="form-group">
                                            <label><strong>비밀번호</strong></label>
                                            <input type="password" name="mPwd" class="form-control" placeholder="비밀번호를 입력하세요">
                                        </div>
                                        <div class="form-row d-flex justify-content-between mt-4 mb-2">
                                        	
                                        	<div class="form-group">
                                                <p><a href="idSearchView.me">아이디를 잊으셨나요?</a></p>
                                                <a href="pwdSearchView.me">비밀번호를 잊으셨나요?</a>
                                            </div>
                                        </div>
                                        <div class="text-center">
                                            <button name="loginBtn" class="btn btn-primary btn-block">로그인</button>
                                        </div>
                                    </form>
                                    <div class="new-account mt-3">
                                        <p>아직 회원이 아니신가요? <a class="text-primary" href="joinMemberView.me">회원가입</a></p>
                                    </div>
                              	</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>