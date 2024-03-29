<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기안서 작성</title>
<style>
	a:hover{cursor: pointer;}
	.card-body{color: black;}
	.button:hover{cursor: pointer;}
	.approvalLine{height: 70px;}
	#approvalSign td{background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle; width: 269px;}
</style>
	<!-- summernote CSS
		============================================ -->
	<link rel="stylesheet" href="${contextPath}/resources/assets/vendor/summernote/summernote-lite.css">

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
                    <div class="col 12">
	                	<div class="card">
	                        <div class="card-header">
                                <h3 class="card-title" style="font-weight: bold; font-size: large;"><!-- ${doc.formName} --></h3>
                            </div>
                            
	                        <div class="card-body">
		                        <div id="commonDoc" class="docForm" style="display: inline-block;">
		                        <span style="font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"><!-- default copy start --><span style="font-family: &quot;맑은 고딕&quot;; font-size: 10pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> 
  
										<table style="border: 0px solid rgb(0, 0, 0); width: 800px; margin-top: 1px; border-collapse: collapse;"><!-- Header --> 
										   <colgroup> 
										    <col width="310"> 
										    <col width="490"> 
										   </colgroup> 
										   
											<tbody>
												<tr>
													<td style="background: rgb(255, 255, 255); padding: 0px !important; border: 0px currentColor; border-image: none; height: 70px; text-align: center; color: black; font-size: 36px; font-weight: bold; vertical-align: top;" colspan="2" class="dext_table_border_t dext_table_border_r dext_table_border_b dext_table_border_l">
														업&nbsp;&nbsp;무&nbsp;&nbsp;기&nbsp;&nbsp;안
													</td>
												</tr>
												<tr>
													<td style="background: white; padding: 0px !important; border: currentColor; text-align: left; color: black; font-size: 12px; font-weight: normal; vertical-align: top;">
														
										<table style="border: 1px solid rgb(0, 0, 0); margin-top: 1px; border-collapse: collapse; width: 318px;"><!-- User --> 
										      <colgroup> 
										       <col width="90"> 
										       <col width="120"> 
										      </colgroup> 
										      
											<tbody>
												<tr>
													<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">
														
																	 문서번호 
													</td>
													<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle; width: 269px;">
														<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="0" data-dsl="{{label:docNo}}" data-wrapper="" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="" data-autotype=""><span class="comp_item" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">문서번호</span><span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="0" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
													</td>
												</tr>
												<tr style="height: 32px;">
													<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">
														
										 						부&nbsp;&nbsp;&nbsp;서
													</td>
													<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; height: 18px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle; width: 269px;">
														<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="1" data-dsl="{{label:draftDept}}" data-wrapper="" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="" data-autotype=""><span class="comp_item" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">기안부서</span><span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
													</td>
												</tr>
												<tr>
													<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">
														
																	기&nbsp;안&nbsp;일
													</td>
													<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle; width: 269px;">
														<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="2" data-dsl="{{label:draftDate}}" data-wrapper="" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="" data-autotype=""><span class="comp_item" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">기안일</span><span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
													</td>
												</tr>
												<tr>
													<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">
														
																		기 안 자
													</td>
													<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle; width: 269px;">
														<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="3" data-dsl="{{label:draftUser}}" data-wrapper="" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="" data-autotype=""><span class="comp_item" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;">기안자</span><span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
													</td>
												</tr>
												<tr>
													<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">
														
																			시행일자
													</td>
													<td style="background: rgb(255, 255, 255); padding: 5px; border: 1px solid black; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle; width: 269px;">
														<span unselectable="on" contenteditable="false" class="comp_wrap" data-cid="4" data-dsl="{{calendar}}" data-wrapper="" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;" data-value="" data-autotype=""><input class="ipt_editor ipt_editor_date" type="text"><span contenteditable="false" class="comp_active" style="display: none; font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <span class="Active_dot1" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot2" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> <span class="Active_dot3" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span><span class="Active_dot4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"></span> </span> <span contenteditable="false" class="comp_hover" data-content-protect-cover="true" data-origin="4" style="font-family: &quot;malgun gothic&quot;, dotum, arial, tahoma; font-size: 9pt; line-height: normal; margin-top: 0px; margin-bottom: 0px;"> <a contenteditable="false" class="ic_prototype ic_prototype_trash" data-content-protect-cover="true" data-component-delete-button="true"></a> </span> </span><br>
													</td>
												</tr>
											</tbody>
										</table>
										
													</td>
													<td>
															<table id="approvalSign" style="border: 1px solid rgb(0, 0, 0);  float: right;  margin-top: 1px; border-collapse: collapse; max-width: 400px; height: 145px;"><!-- User --> 
															      <colgroup> 
															       <col width="90"> 
															       <col width="120"> 
															      </colgroup> 
															     <thead>
															     	<tr>
															     		<td>
																			신청
																		</td>
																		<td>
																			승인
																		</td>
																	</tr>
															     </thead>
																<tbody>
																	<tr  style="height: 40px;">
																		<td>
																				dddd
																		</td>
																		<td>
																		</td>
																		
																	</tr>
																	<tr style="height: 40px;">
																		<td>
																		</td>
																		<td>
																		</td>
																	</tr>
																	<tr  style="height: 40px;"> 
																		<td>
																		</td>
																		<td>
																		</td>
																	</tr>
																</tbody>
															</table>
<!-- 															<table class="table table-bordered" style="float: right; max-width: 400px; color: black; border: 1px solid black;"> -->
<!-- 																<thead> -->
<!-- 																	<tr> -->
<!-- 																		<th width="100px">신청</th> -->
<%-- 																		<c:if test="${not empty elecapprvo.midapprvo}"> --%>
<!-- 																			<th width="100px">승인</th> -->
<!-- 																			<th width="100px">승인</th> -->
<%-- 																		</c:if> --%>
<!-- 																		<th width="100px">승인</th> -->
<!-- 																	</tr> -->
<!-- 																</thead> -->
<!-- 																<tbody> -->
<!-- 																	<tr> -->
<!-- 																		<th>ㅇㅇㅇ 사원</th> -->
<%-- 																		<c:if test="${not empty elecapprvo.midapprvo}"> --%>
<!-- 																			<th>ㅇㅇㅇ</th> -->
<!-- 																			<th>ㅇㅇㅇ</th> -->
<%-- 																		</c:if> --%>
<!-- 																		<th>ㅇㅇㅇ</th> -->
<!-- 																	</tr> -->
<!-- 																	<tr> -->
<!-- 																		<th></th> -->
<%-- 																		<c:if test="${not empty elecapprvo.midapprvo}"> --%>
<!-- 																			<th>반대 뱃지</th> -->
<!-- 																			<th>합의 뱃지</th> -->
<%-- 																		</c:if> --%>
<!-- 																		<th>승인 뱃지</th> 승인 또는 반려 -->
<!-- 																	</tr> -->
<!-- 																	<tr> -->
<!-- 																		<th>2002.11.11</th> -->
<%-- 																		<c:if test="${not empty elecapprvo.midapprvo}"> --%>
<!-- 																			<th></th> -->
<!-- 																			<th></th> -->
<%-- 																		</c:if> --%>
<!-- 																		<th></th> -->
<!-- 																	</tr> -->
<!-- 																</tbody> -->
<!-- 															</table> -->
													</td>
												</tr>
											</tbody>
										</table>
										 
										 
										<table style="border: 2px solid; width: 800px; margin-top: 10px; border-collapse: collapse; height: 385px;"><colgroup> 
										   <col width="140"> 
										   <col width="660"> 
										  </colgroup> 
										  
											<tbody>
												<tr>
													<td style="background: rgb(221, 221, 221); padding: 5px; border: 1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;">
														
																				제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목
													</td>
													<td style="background: rgb(255, 255, 255); padding: 5px;border:1px solid black; height: 18px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;">
														<input type="text" style="width: 700px;" maxlength="50">													
													</td>
												</tr>
												<tr>
													<td style="background: rgb(221, 221, 221); padding: 5px;border:1px solid black; height: 18px; text-align: center; color: rgb(0, 0, 0); font-size: 12px; font-weight: bold; vertical-align: middle;" colspan="2">
														
																	상&nbsp;&nbsp;세&nbsp;&nbsp;내&nbsp;&nbsp;용
													</td>
												</tr>
												<tr>
													<td style="background: rgb(255, 255, 255); padding: 5px;border:1px solid black; height: 18px; text-align: left; color: rgb(0, 0, 0); font-size: 12px; font-weight: normal; vertical-align: middle;" colspan="2">
															<textarea id="summernote" name="bContent"></textarea>
													</td>
												</tr>
												
												<tr>
														<!-------------- 파일 첨부 영역 시작 -------------->
														<td> 
															<div class="uploadArea" align="center">
																<span style="margin-bottom: 10px;">
																	&nbsp;파일 첨부 
																	<!-- 파일 첨부 관련 안내문구 Popover -->
																	<a data-container="body" data-toggle="popover" data-placement="top" data-content="100MB 이하의 파일로 최대 2개를첨부할 수 있습니다.">
																	<i class="bi bi-question-circle-fill" style="color: gray;"></i></a> 
																</span>
															</div>
														</td>
														<td> 
															<div id="fileUploadArea" style="border: 1px dotted lightgray; max-width: 800px; min-height: 70px;">
																<div id="uploadBtnArea" align="center" style="margin-top: 10px;">
																	<a class="badge badge-light" id="uploadFileBtn">
																		<label class="button" for="input-file" style="height: 10px;"><i class="bi bi-upload"></i> &nbsp;파일 등록</label>
																	</a>
																	<input type="file" multiple="multiple" id="input-file" accept="" style="display: none;"/>
																</div>
																<div id="fileArea" style="margin-left: 10px;"> <!-- 파일 미리보기 영역  -->
																</div>
															</div>
														</td>
														<!-------------- 파일 첨부 영역 끝 -------------->
													</tr>
													
<!-- 													<tr> -->
<!-- 														<td>상단 고정</td> -->
<!-- 														<td> -->
<!-- 															<input type="checkbox" name="pin" value="Y">   -->
<!-- 															<span style="color: gray; font-size: small">&nbsp;상단 고정</span> -->
<!-- 														</td> -->
<!-- 													</tr>	-->
												
											</tbody>
										</table>
										</span></span>
										<p style="font-size: 10pt; line-height: 20px; margin-top: 0px; margin-bottom: 0px;"><br></p>
										<br>
										<div id="btnArea" align="center">
												<button id="submitBtn" type="button" class="btn btn-primary">등록</button>
												<button type="button" class="btn btn-outline-primary" onclick="history.back()">뒤로 가기</button>
										</div>	
		                        	</div>
		                        	
	                        	 <div id="" class="" style="display: inline-block; float: right;">
		                        	 <div style="float: right; margin-bottom: 10px; display: inline-block;">
			                            <!-- 결재선 지정 Modal 여는 버튼 -->
				                       	<button type="button" class="btn btn-primary" id="approvalineModalBtn" data-toggle="modal" data-target="#approvalineSelect">결재선 등록</button>
		                            </div>
		                            
	                            <!-- 결재선 지정 Modal -->
	                            <div class="modal fade" id="approvalineSelect">
	                            	<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
	                                	<div class="modal-content">
		                                    	<div class="modal-header">
		                                        	<h5 class="modal-title">결재선 지정</h5>
		                                            <button type="button" class="close" data-dismiss="modal"><span>&times;</span>
		                                            </button>
		                                        </div>
		                                        <div class="modal-body" style="color: black;">
			                                        	<div class="email-left-box px-0 mb-5" style="margin-right: 20px;">
			                                        		<div class="organizationChart">
						                                		
								                       		</div>
						                               	</div>	
				                                        <div class="email-right-box ml-0 ml-sm-4 ml-sm-0 approvalLineBox">
							                               	<div>
							                               		<p>참조자</p>
							                               		<div>
							                               			<span>이름</span>
							                               			<span>직위</span>
							                               			<span>부서</span>
							                               		</div>
							                               	</div>
							                               	<div>
							                               	</div>
							                               	<div>
							                               	</div>
			                                       		</div>
			                                     </div>
			                                     <div class="modal-footer">
			                                         <button class="btn btn-primary" id="selectLineBtn">선택</button>
			                                         <button type="button" class="btn btn-light" data-dismiss="modal">취소</button>
			                                     </div>
	                                    </div>
	                            	</div>
	                          	</div>
	                          	<script>
	                        		// 저장 버튼 클릭시 모닮창 내용 초기화
	                       			$('#approvalineSelect').on('click', function(){
	                       				$('#input-image').val('');
	                       				$('#meetRoomName').val('');
	                       				$('#meetInfo').val('');
	                       			});
	                          		
	                       			$('#meetRoomName').on('change', function(){
	                       				$('#meetRoomName').val($('#meetRoomName').val().trim());
	                       			});
	                       			
	                       			$('#meetInfo').on('change', function(){
	                       				$('#meetInfo').val($('#meetInfo').val().trim());
	                       			});selectLineBtn
	                        		
	                       			$('#selectLineBtn').on('click', function(){
	                       				$('#meetInfo').val($('#meetInfo').val().trim());
	                       			});
	                          	
	                          	</script>
                            
<!--                             	<h4 class="card-intro-title" style="font-weight: bold;">결재선 지정</h4> -->
<!--                             	<br><br><br> -->
<!--                                	<div class="dept-detail"> -->
<!-- 				                     <span class="text-danger update" hidden="true">*</span> -->
<!-- 				                     <span class="text-danger beforeUpdate">&nbsp;</span> -->
<%-- 				                     <label class="col-form-label update-form dept-label">부서명</label><span id="deptNameSpan" class="beforeUpdate">${ dList[0].deptName }</span> --%>
<%-- 				                     <input id="deptNameInput" type="text" class="form-control update" name="deptName" value="${ dList[0].deptName }" hidden="true"> --%>
<!-- 				                     <br> -->
<!-- 				                     <div class="guide-display"><span id="deptNameGuide" class="guide update-guide text-danger">2~10자리까지 입력해주세요.</span><br></div> -->
<%-- 				                      &nbsp;<label class="col-form-label update-form">부서 책임자</label><span id="deptMgrSpan" class="beforeUpdate">${ dList[0].deptManagerName == null ? "미지정" : dList[0].deptManagerName} ${dList[0].deptManagerJob }</span> --%>
<%-- 				                     <input id="deptMgrInput" type="search" class="form-control update" name="deptManager" value="${ dList[0].deptManager }" list="memberList" placeholder="사원 아이디" autocomplete="off" hidden="true"> --%>
<!-- 								 	 <div class="guide-display"><span id="deptMgrGuide" class="guide update-guide text-danger">중지된 계정 또는 존재하지 않는 계정입니다.</span><br></div> -->
<!-- 				                      &nbsp;<label class="col-form-label update-form">상위부서</label><span id="upperDeptSpan">미지정</span> -->
<!-- 				                     <br> -->
<%-- 				                      &nbsp;<label class="col-form-label update-form">생성일</label><span id="createDateSpan">${ dList[0].createDate }</span> --%>
<!-- 				                     <br><br> -->
<!--                                		</div> -->
<!-- 	                                <div align="center" class="beforeUpdate"> -->
<!-- 	                                	 <button type="button" class="btn btn-primary" id="updateFormBtn">수정하기</button> -->
<!-- 	                                </div> -->
<!--                                     <div id="updateBtnArea" class="update" align="center" hidden="true"> -->
<!--                                     	<button type="button" class="btn btn-primary" id="updateBtn">저장</button> -->
<!-- 	                                    <button type="button" class="btn btn-outline-primary" id="cancelBtn">수정 취소</button> -->
<!--                             	</div> -->
<!--                         	</div> -->
	                        			<br><br><br>
	                      				<div style="border: 1px solid gray; width: 300px; height: 715px;">
		                      				<div style="margin-left: 20px; ">
		                      					<br>
		                      					<b style="font-size: large;">결재선</b>
		                      					<br><br><br>
		                      					<div class="approvalLine">dd</div>
		                      					<div class="approvalLine">dd</div>
		                      					<div class="approvalLine">dd</div>
		                      					<div class="approvalLine">dd</div>
		                      				</div>
	                      				</div>
	                        	 </div>
	                        
<!-- 	                            		<form id="insertForm" action="nbinsert.nb" method="post"> -->
<!-- 											<table class="table" style="color: black;"> -->
<!-- 												<tbody> -->
<!-- 													<tr> -->
<!-- 														<td>  -->
<!-- 															<div class="uploadArea" align="center"> -->
<!-- 																<span style="margin-bottom: 10px;"> -->
<!-- 																	&nbsp;파일 첨부  -->
<!-- 																	<a data-container="body" data-toggle="popover" data-placement="top" data-content="100MB 이하의 파일로 최대 2개를첨부할 수 있습니다."> -->
<!-- 																	<i class="bi bi-question-circle-fill" style="color: gray;"></i></a>  -->
<!-- 																</span> -->
<!-- 															</div> -->
<!-- 														</td> -->
<!-- 														<td>  -->
<!-- 															<div id="fileUploadArea" style="border: 1px dotted lightgray; max-width: 800px; min-height: 70px;"> -->
<!-- 																<div id="uploadBtnArea" align="center" style="margin-top: 10px;"> -->
<!-- 																	<a class="badge badge-light" id="uploadFileBtn"> -->
<!-- 																		<label class="button" for="input-file" style="height: 10px;"><i class="bi bi-upload"></i> &nbsp;파일 등록</label> -->
<!-- 																	</a> -->
<!-- 																	<input type="file" multiple="multiple" id="input-file" accept="" style="display: none;"/> -->
<!-- 																</div> -->
<!-- 																<div id="fileArea" style="margin-left: 10px;">  -->
<!-- 																</div> -->
<!-- 															</div> -->
<!-- 														</td> -->
<!-- 													</tr>								  -->
<!-- 												</tbody> -->
<!-- 											</table> -->
<%-- 											<input type="hidden" name="mId" value="${ loginUser.mId }"> --%>
											
<!-- 	                            		</form> -->
	                            
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
	
	                            		<!-------------- 파일 첨부 관련 js 시작 -------------->
			                          	<script>
			                          	
				                          	/**
		                            		 * 다중파일 등록 로직(multiple file upload) - 첨부파일 개수 제한, 용량 제한
		                            		 * 파일명, 사이즈, 이미지 미리보기 제공
		                            		*/
		                            		$(document).on("change", "#input-file", addFile);
				                          	
			                          		// 현재 업로드된 파일 개수
			                          		let fileCount = 0;
			                          		// 최대 파일 개수
			                          		let totalCount = 2;
			                          		// file 고유 번호
			                          		let fileNo = 0;
			                         		// 첨부파일 배열
			                          		let filesArr = new Array();
				                			
				                          	function addFile(e) {
				                          		let files = e.target.files;
				                				let tempFilesArr = Array.prototype.slice.call(files); // 매개변수로 넘어온 값들을 array로 변환
				                				let maxSize =  1024 * 1024 * 100;
				                				
												console.log(tempFilesArr);
												
												// 현재 업로드된 개수가  최대 파일 개수를 넘었다면 알럿창 띄우고 파일 업로드 제한
												if(fileCount >= totalCount) {
													alert("최대  " + totalCount + "개의 파일을 첨부할 수 있습니다.");
												} else if (files.length > 0) { // 최대 파일 개수 넘지 않고 파일이 제대로 들어왔을시 실행
													
													let loopCount = files.length; // for문 반복 횟수 설정

													// 파일 입력 개수 2개로 제한
				                					if (fileCount + files.length > totalCount) {
				                						 alert("최대  " + totalCount + "개의 파일을 첨부할 수 있습니다.");
				                						 loopCount = totalCount - fileCount; // 최대 2개만 업로드될 수 있게 loopCount 조정
				                					}
													
													// 선택한 파일 filesArr배열에 담고 화면에 표시
 													for (let i = 0; i < loopCount; i++) {
 														let fileSize = tempFilesArr[i].size;
 														let ext = tempFilesArr[i].name.substring(tempFilesArr[i].name.indexOf(".") + 1);
 														
 														// 파일 용량 제한
 					                			 		if(fileSize > maxSize){
 					                						// 용량 초과시 경고후 해당 파일의 용량도 보여줌
 					                						alert(tempFilesArr[i].name + '의 용량 : ' + (Math.round(fileSize / 1024 / 1024*100) / 100) + 'MB', '100MB 이하의 파일만 등록할 수 있습니다.');
 					                					} else if ($.inArray(ext, ['exe', 'zip']) == 1) {
 					                						alert('확장자가 [exe, zip]인 파일은 첨부할 수 없습니다.');
 					                					} else {
 					                						filesArr.push(tempFilesArr[i]); // file배열에 push
 					                						fileNo++;
 					                						fileCount++;
 					                						
 					                						// 파일 사이즈 표기
 					                						if(fileSize >= 1024*1024) { // 104857 B = 1024 KB = 1 MB 
 					                							fileSize = (Math.round(fileSize / 1024 / 1024*100) / 100) + 'MB';
 					                						} else {
 					                							fileSize = (Math.round(fileSize / 1024*100) / 100) + 'KB';
 					                						}
 					                						
 					                						// 파일 div 영역에 append
 					                						// 파일 확장자에 따른 아이콘 표기
 					                						let icon = ext == 'pdf' ? '-pdf' : ext == 'txt' ? '-text' :  ext == 'docx' ? '-word' : '';
 					                						
 					                						let html = "";
 					                						if (tempFilesArr[i].type.includes('image')) {
 							                					
 					                							html += '<div id="file' + fileNo + '">'
 					                									 + '<img id="img' + fileNo + '" src="" width="100" height="100"><br>'
 					                									 + '<a class="badge-s badge-outline-light" onclick="fileDelete(' + fileNo + ')"><i class="bi bi-x"></i></a>';
 					                						} else {
 					                							html += '<div id="file' + fileNo + '"><a class="badge-s badge-outline-light" onclick="fileDelete(' + fileNo + ')"><i class="bi bi-x"></i></a>'
	 					                								 + '<i class="bi bi-file-earmark' + icon +  '" style="color: #D2B48C;"></i>';
 					                						}
 					                						
 					                						html +=  '<span> ' + tempFilesArr[i].name + '</span>'
			                							     		  + '<span style="color: gray"> (' + fileSize  + ')</span></div>';
 					                						
 					                						$('#fileArea').append(html);
 					                						
 					                						if (tempFilesArr[i].type.includes('image')) { 
 					                							previewImage(tempFilesArr[i], "img" + fileNo);
 					                						}
 					                					}
 														
													}
				                				} 
												
												$("#input-file").val(''); // input-file태그 vlaue 초기화
				                          	}
				                          	
				                       		// 이미지 미리보기
				                          	function previewImage(file, elementId) {
												const reader = new FileReader();
												
		                						reader.readAsDataURL(file);
	                							
			                					reader.onload = function(e){
			                						let previewImg = document.getElementById(elementId);
			                						previewImg.src = e.target.result;	
			                					}
				                          	}
				                       		
				                       		// 파일 삭제
				                       		function fileDelete(fileNo) {
				                       			$('#file' + fileNo).remove();
				                       			filesArr[fileNo - 1].isDelete = true;
				                       			fileCount--;
				                       		}
				                          	
				                			// 제목 공백 제거
			                          		$('#bTitle').on('change', function(){
			                          			$(this).val($(this).val().trim());
			                          		});
			                          		
			                          		// 등록 버튼 클릭시 실행하는 함수(multiple file upload)
			                          		$('#submitBtn').on('click', function() {
			                          			let content = $('#summernote').val();
			                          			let replaceStr = content.replace(/<p>|&nbsp;|<br>|<\/p>/gi, ''); // 내용이 비어있는지 확인
			                          			
			                          			if($('#bTitle').val().trim() == "") {
			                          				alert('제목이 비어있습니다.');
			                          				$('#bTitle').focus();
			                          			} else if (replaceStr.trim() == "") {
			                          				alert('내용이 비어있습니다.');
			                          			} else {
			                          				
			                          				// 첨부파일이 존재하면
													if (filesArr.length > 0) {
														
														// ajax로 파일 upload
				                          				fileData = new FormData();
														
				                          				let fileExist = false;
														for (let i = 0; i < filesArr.length; i++) {
															// 삭제하지 않은 것만 담음
															if(!filesArr[i].isDelete){
																fileData.append("files",  filesArr[i]);
																fileExist = true;
															}
														}
														console.log(fileExist)
														if (fileExist) {
															$.ajax({
					                          					url: "uploadFiles.nb",
					                          					data: fileData,
					                          					dataType: 'json',
					                          					type : "POST",
					                            				contentType : false,
					                            				processData : false,
					                            				enctype : 'multipart/form-data',
					                            				success: function(data) {
					                            					console.log(data);
					                            					
					                            					// 파일 저장 성공하면 DB에 파일 정보 저장하기 위해 form에 파일 정보를 value로 가지는 input태그 추가
					                            					if (data.length > 0) {
					                            						let html = "";
					                            						for (let i in data) {
					                            							html += '<input type="hidden" name="fileOriginName" value="' + data[i].fileOriginName + '">'
					                            								 	+ '<input type="hidden" name="fileChangeName" value="' + data[i].fileChangeName + '">'
					                            								 	+ '<input type="hidden" name="filePath" value="' + data[i].filePath + '">'
					                            									+ '<input type="hidden" name="fileSize" value="' + data[i].fileSize + '">';
					                            						}
					                            						
					                            						$('#insertForm').append(html);
					                            						$('#insertForm').submit();
					                            					} else {
					                            						alert('알 수 없는 에러가 발생했습니다.','','error');
					                            					}
					                            				},
					                            				error: function(data) {
					                            					console.log(data);
					                            					alert('알 수 없는 에러가 발생했습니다.','','error');
					                            				}
															});
														} else {
															$('#insertForm').submit();	
														}
													} else {
														 $('#insertForm').submit();
													}
			                          			}
			                          		});
				                          	
											// Bootstrap Popover
				                          	$(function () {
											  $('[data-toggle="popover"]').popover({
												  trigger: 'hover' // 마우스 호버시 실행
											  });
											})
											
		                            	</script>
		                            	<!-------------- 파일 첨부 관련 js 끝 -------------->
	                            		    
										<!--**********************************
										       Summernote  Scripts
										***********************************-->
		                            	<script src="${contextPath}/resources/assets/vendor/summernote/summernote-lite.js"></script>
										<script src="${contextPath}/resources/assets/vendor/summernote/lang/summernote-ko-KR.js"></script>
		                            	<script>
		                            		$(document).ready(function() {
		                            			/**
		                            			*  Summernote toolbar 설정, 에디터 내 파일 업로드 관련 설정
		                            			*/
		                            			$('#summernote').summernote({
		                            				  toolbar: [
		                            				    // [groupName, [list of button]]
		                            				    ['style', ['borderBtn', 'style', 'bold', 'clear']],
		                            				    ['fontname', ['fontname']],
		                            				    ['fontsize', ['fontsize']],
		                            				    ['color', ['forecolor','color']],
		                            				    ['table', ['table']],
		                            				    ['para', ['ul', 'ol', 'paragraph']],
		                            				    ['height', ['height']],
		                            				    ['insert',['picture','link']],
		                            				  ],
		                            				  fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
		                            				  fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
		                            				  height: 350,                 // 에디터 높이
		                            				  minHeight: null,             // 최소 높이
		                            				  maxHeight: null,             // 최대 높이
		                            				  focus: true,                 // 에디터 로딩후 포커스를 맞출지 여부
		                            				  lang: "ko-KR",			   // 한글 설정
		                            				  // placeholder: '최대 2048자까지 쓸 수 있습니다',
		                            		          callbacks: {
		                            		        		// 이미지 첨부
															onImageUpload : function(files, editor, welEditable) {
					                            		            // 파일 업로드(다중업로드를 위해 반복문 사용)
					                            		            for (var i = files.length - 1; i >= 0; i--) {
						                            		            uploadSummernoteImageFile(files[i], this);
			                            		            		}
			                            		            },
															onPaste: function (e) {
																	var clipboardData = e.originalEvent.clipboardData;
																	if (clipboardData && clipboardData.items && clipboardData.items.length) {
																		var item = clipboardData.items[0];
																		if (item.kind === 'file' && item.type.indexOf('image/') !== -1) {
																			e.preventDefault();
																		}
																	}
															},
															onMediaDelete : function(target, editor) {
													              deleteFile(target[0].src);
													              editor.focus();
															}
													  }
		                            			});
												
		                            		});
		                            		

	                            			/**
	                            			* summernote 이미지 파일 업로드
	                            			*/
	                            			function uploadSummernoteImageFile(file, editor) {
	                            				
	                            				// let acceptExtArr = ['jpg', 'jpeg', 'png', 'gif', 'svg'];
	                            				// let ext = file.name.substring(file.name.indexOf(".") + 1);
	                            				// if (acceptExtArr.indexOf(ext) != -1) {}
	                            				console.log(file);
	                            				
	                            				let imgMaxSize = 1024 * 1024 * 10; // 10MB이하로 제한
	                            				let fileSize = (Math.round(file.size / 1024 / 1024*100) / 100) +'MB';
	                            				let fileName = file.name;
	                            				
	                            				if (!file.type.includes('image')) {
	                            					alert('이미지만 첨부할 수 있습니다.');
	                            				} else if (file.size > imgMaxSize) {
	                            					alert('10MB 이하의 이미지만 첨부할 수 있습니다.');
	                            				} else {
	                            					data = new FormData();
		                            				data.append("file", file);
		                            				$.ajax({
		                            					data : data,
		                            					type : "POST",
		                            					url : "uploadSummernoteImageFile.nb",
		                            					contentType : false,
		                            					processData : false,
		                            					enctype : 'multipart/form-data',
		                            					success : function(data) {
		                            		            	// 업로드된 파일의 url
		                            						$(editor).summernote('insertImage', data.url);
		                            		            	console.log(data.url);
		                            					}
		                            				});
	                            				}
	                            			}
	                            			
											// summernote 이미지 drag and drop
		                            		$("div.note-editable").on('drop',function(e){
										         for(i=0; i< e.originalEvent.dataTransfer.files.length; i++){
										         	uploadSummernoteImageFile(e.originalEvent.dataTransfer.files[i],$("#summernote")[0]);
										         }
										        e.preventDefault();
										    });
		                            		
		                            		// summernote 이미지 파일 삭제
		                            		function deleteFile(src) {
		                            			console.log(src);
		                            		    $.ajax({
		                            		        data: {src : src},
		                            		        type: "POST",
		                            		        url: "deleteSummernoteFile.nb",
		                            		        cache: false,
		                            		        success: function(resp) {
		                            		            console.log(resp);
		                            		        }
		                            		    });
		                            		}
		                            		
		                            		// sweet alert customize
		            		        		let alert = function(msg, title, icon) {
		            		        			Swal.fire({
		            		        				position: 'top',
		            		        				background: '#292B30',
		            			       				color: 'white',
		            		        				title : title,
		            		        				text : msg,
		            		        				icon: icon,
		            		        				timer : 1500,
		            		        				customClass : 'sweet-size',
		            		        				showConfirmButton : false
		            		        			});
		            		        		}
	                            	</script>

</body>
											
</html>