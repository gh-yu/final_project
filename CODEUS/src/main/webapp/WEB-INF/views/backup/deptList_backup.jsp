<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
	.modal input{display: inline; width: 150px;}
	a:hover{cursor: pointer;}
	.guide{margin-left: 110px;}
	.col-form-label{width: 100px;}
	.form-col{padding-left: 15px;}
	.dept-detail{color: black;}
	.dept-detail input[type=text], .dept-detail input[type=search], .dept-detail select{display: inline;  width: 150px;}
	.tree-div{overflow-x: hidden; color: black;}
	.card-body{min-height: 800px;}
	.bi-person-fill{color: gray;}
	.badge i{color: black;}
	.bi-building{font-weight: bolder;}
	
	#droppable { width: 150px; height: 150px; padding: 0.5em; float: left; margin: 10px; }
</style>

	<!-- tree viewer CSS
		============================================ -->
	<link rel="stylesheet" href="${contextPath}/resources/assets/vendor/deptList/css/jquery.treeview.css">
	
	<!--  drag and drop 관련 css -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
</head>
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
                   	</div>
                    <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">조직 관리</li>
                            <li class="breadcrumb-item active"><a href="deptlist.ad">부서 관리</a></li>
                        </ol>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 card1">
                    	<div class="card">
                           	<div class="card-body tree-div">
                               <h4 class="card-intro-title" style="font-weight: bold;">조직도</h4>
							   <br>
							   <div style="float: right;">
								   <b>부서</b> 
								   <a class="badge badge-light" id="insertDeptBtn" data-toggle="modal" data-target="#insertDeptModal">
								   	<i class="bi bi-plus-lg"></i> 추가
								   </a>
								   <a class="badge badge-light"><i class="bi bi-dash-lg"></i> 삭제</a>
								   					              
		                            <!-- 부서 추가  Modal창 -->
		                            <div class="modal fade" id="insertDeptModal">
		                            	<div class="modal-dialog modal-dialog-centered" role="document">
		                                	<div class="modal-content">
		                                    	<div class="modal-header">
		                                        	<h5 class="modal-title">부서 추가</h5>
		                                            <button type="button" class="close" data-dismiss="modal"><span>&times;</span>
		                                            </button>
		                                        </div>
		                                        <div class="modal-body" style="color: black;">
		                                        	<input type="hidden" name="upperDept">
		                                        	<span class="text-danger">*</span><label class="col-form-label">부서명</label> 
		                                            <input id="insertDeptName" type="text" class="form-control insertInput" name="deptName" maxlength="10"><br>
		                                            <span id="insertDeptNameGuide" class="guide text-danger"></span><br>
		                                            &nbsp;<label class="col-form-label">부서책임자</label>
		                                            <input id="insertDeptMgr" type="search" class="form-control insertInput" name="deptManager" list="memberList" placeholder="사원 아이디" autocomplete="off">
							                        <datalist id="memberList">
							                        	<c:forEach var="m" items="${ mList }">
							                        		<option value="${ m.mId }"> ${ m.jobName } ${ m.mName } </option> 
					 	                                 </c:forEach>
							                        </datalist><br>
		                                            <span id="insertDeptMgrGuide" class="guide text-danger"></span><br>
		                                        </div>
		                                        <div class="modal-footer">
		                                            <button type="button" class="btn btn-primary" id="insertBtn">저장</button>
		                                            <button type="button" class="btn btn-light" data-dismiss="modal">취소</button>
		                                        </div>
		                                    </div>
		                            	</div>
		                          </div>
								  <script>
								  	  // 모달창 여는 버튼 클릭시 모달창 안의 내용 초기화
								  	  var existenceCheck = false;
								  	  $('#insertDeptBtn').on('click', function(){
									      $('#insertDeptName').val('');
									  	  $('#insertDeptMgr').val('');
									  	  $('#insertDeptModal').find('.guide').text('');
									  	  existenceCheck = false;
								  	  });
								  	  
								  	  // 부서 추가 모달창에서 부서명 기입시 안내 문구 츨략
								  	  $('#insertDeptName').on('change', function(){
								  		  $(this).val($(this).val().trim()); //  공백 입력시 자동으로 공백 제거되게 함
						                  var deptName = $(this).val();  
								  		  
						                  if (deptName.length < 1 || deptName.length > 10) {
						                	  $('#insertDeptNameGuide').text('1~10자리까지 입력해주세요.');
						                	  $(this).focus();
						                  } else {
						                	  $('#insertDeptNameGuide').text('');
						                  }
								  	  });
								  	  
								  	  // 부서 추가 모달창에서 부서책임자 아이디 입력시 존재하는 사원인지 검증
									  $('#insertDeptMgr').on('change', function(){
									  	  existenceCheck = false;
									  	  $(this).val($(this).val().trim()); // 공백 입력시 자동으로 공백 제거되게 함
									  	  var deptMgr = $(this).val();  
									  	  
			                              <c:forEach var="m" items="${ mList }">
								          	if ("${ m.mId }" == deptMgr) {
								          		existenceCheck = true;
								          	}
					 	                  </c:forEach>
					 	                  
					 	                 // 만약 멤버리스트에 없는 아이디 입력시 존재하지 않는 사원이라는 안내 문구 출력
						                  if (!existenceCheck) {
						                	  $('#insertDeptMgrGuide').text('존재하지 않는 사원입니다.');
						                	  $(this).focus();
						                  } else {
						                	  $('#insertDeptMgrGuide').text('');
						                  }
						              });
								  	  
								  	  // 부서 추가 모달창에서 저장 버튼 클릭시 실행하는 함수
								  	  $(document).on('click', '#insertBtn', function(){
								  	  	 var deptName = $(this).val();  
								  		 var deptMgr = $(this).val();  
								  		 
								  		 
								  	  });
								  </script>
							   </div>
							   <br>
							   <hr>
	                           <div id="treeView">
	                           		<ul id="deptList">
	                                	<li><input class="lv lv1" type="hidden" name="deptId" value="${ dList[0].deptId }">
	                                		<i class="bi bi-building"></i><a class="selectDept">${ dList[0].deptName }</a>
		                                	<c:set var="hasChildren" value="false"/> 
		                                    <c:forEach var="m" items="${ mList }">
							                    <c:if test="${ m.deptId == dList[0].deptId }">
							                    	<c:set var="hasChildren" value="true"/> 
							                    </c:if>
				 	                        </c:forEach>
	                                        <c:if test="${ dList[0].hasChildren == 0 || hasChildren }">
	                                        	<c:set var="hasChildren" value="false"/> 
		                                    	<ul class="hasChildren">
		                                        	<c:forEach var="m" items="${ mList }">
									                 	<c:if test="${ m.deptId == dList[0].deptId }">
									                    	<li><span><i class="bi bi-person-fill"></i>${ m.jobName } ${ m.mName }</span></li>
									                    </c:if>
							 	                    </c:forEach>
		                                            <c:forEach var="d2" items="${ dList }" varStatus="vs">
		                                            	<c:if test="${ d2.deptLevel == 2}">
			                                            	<li>
		                                            			<input class="lv lv2" type="hidden" name="deptId" value="${ d2.deptId }">
		                                            			<a class="selectDept draggable">${ d2.deptName }</a>
		                                            			<c:forEach var="m" items="${ mList }">
												                    <c:if test="${ m.deptId == d2.deptId }">
												                    	<c:set var="hasChildren" value="true"/> 
												                    </c:if>
								 	                        	</c:forEach>
			                                            		<c:if test="${ d2.hasChildren == 0 || hasChildren }">
			                                            			<c:set var="hasChildren" value="false"/> 
			                                            			<ul class="hasChildren">
				                                            			<c:forEach var="m" items="${ mList }">
														                 	<c:if test="${ m.deptId ==  d2.deptId }">
														                    	<li><span><i class="bi bi-person-fill"></i>${ m.jobName } ${ m.mName }</span></li>
														                    </c:if>
												 	                    </c:forEach>
				                                            			<c:forEach var="d3" items="${ dList }">
				                                            				<c:if test="${ d3.upperDept == d2.deptId }">
					                                                            <li>
					                                                            	<input class="lv lv3" type="hidden" name="deptId" value="${ d3.deptId }">
					                                                            	<a class="selectDept draggable">${ d3.deptName }</a>
						                                                            <c:forEach var="m" items="${ mList }">
																	                    <c:if test="${ m.deptId == d3.deptId }">
																	                    	<c:set var="hasChildren" value="true"/> 
																	                    </c:if>
													 	                        	</c:forEach>
						                                                            <c:if test="${ d3.hasChildren == 0 || hasChildren }">
						                                                            	<c:set var="hasChildren" value="false"/> 
						                                                            	<ul class="hasChildren">
						                                                            	<c:forEach var="m" items="${ mList }">
																		                 	<c:if test="${ m.deptId ==  d3.deptId }">
																		                    	<li><span><i class="bi bi-person-fill"></i>${ m.jobName } ${ m.mName }</span></li>
																		                    </c:if>
																 	                    </c:forEach>
						                                                            	<c:forEach var="d4" items="${ dList }">
						                                                            		<c:if test="${ d4.upperDept == d3.deptId }">
					                                            								<li class="expandable d4">
					                                            									<input type="hidden" name="deptId" value="${ d4.deptId }">
					                                            									<a class="selectDept draggable">${ d4.deptName }</a>
									                                                            	<c:forEach var="m" items="${ mList }">
																					                 	<c:if test="${ m.deptId ==  d4.deptId }">
																					                    	<c:set var="hasChildren" value="true"/> 
																					                    </c:if>
																			 	                    </c:forEach>
						                                            								<c:if test="${ d4.hasChildren == 0 || hasChildren }">
						                                            									<ul class="hasChildren">
						                                            									</ul>
						                                            								</c:if>
					                                            								</li>
						                                                       			 	</c:if>
						                                                            	</c:forEach>
						                                                            	</ul>
						                                                            </c:if>
						                                                            </li>
						                                                        </c:if>	
					                                            			</c:forEach>
				                                            			</ul>
				                                            		</c:if>
		                                            			</li>
		                                            		</c:if>
		                                            </c:forEach>
		                                    	</ul>
	                                    	</c:if>
	                                	</li>
	                            	</ul>
	                        	</div>
	                        	
                            	<div  id="dropable" class="ui-widget-header">
									  <p>Drop here</p>
									  <span></span>
								</div>
                        	</div>
                    	</div>
                   </div> 
		           <script>
		           		// treeview
		            	$(document).ready(function(){
		            		$('.d4:last').addClass('lastExpandable').removeClass('lastCollapsable');
		            		$("#deptList").treeview({});
		            	});
		            	
						
		            	// 부서 이름에 미우스 호버시 css 적용
		            	$(document).on('mouseenter', '.selectDept', function(){
		            		if (!$(this).attr('class').includes('selected')) {
		            			$(this).css({'background':'#FDF5E6', 'border':'1px dotted #F4A460'});
		            		} 
		            	}).on('mouseout', '.selectDept', function(){
		            		if (!$(this).attr('class').includes('selected')) {
		            			$(this).css({'background':'', 'border':''});
		            		} 
		            	});
		            	
		            	// 부서 이름 클릭시 선택 효과 css 적용
 		            	$(document).on('click', '.selectDept', function(){
 		            		$('.selectDept').css({'background':'', 'border':''});
 		            		$('.selectDept').removeClass('selected');
		            		$(this).css({'background':'#FFE4B5', 'border':'1px dotted #F4A460'});
		            		$(this).addClass('selected');
 		            		console.log($(this).text());
							
 		            	});
		            	
 		            	// treeview의 + 버튼 클릭시 하위 부서 및 부서원 목록 조회를 위해 실행되는 함수
 		            	$(document).on('click', '.hitarea', function(){ 
		            		var $hitarea = $(this);
		            		var upperDept = $(this).next().val();
		            		var $rootNode = $(this).parent().find('ul');
		            		
		            		//if (!$(this).next().hasClass('lv')) {
		            			if ($(this).parent().hasClass('expandable') || $rootNode.css('display') == 'none') {
		            					$.ajax({
					            			url: 'subDeptList.ad',
					            			dataType: 'json',
					            			data: {upperDept:upperDept},
					            			type: 'GET',
					            			success: function(data) {
					            				console.log(data);
					            				$rootNode.html('');
					            				$("#deptList").treeview({});
					            				
					            				var $li;
					            				var $span;
					            				var $a;
					            				var $input;
					            				var $ul;
					            				if (data.length > 0) {
					            					for (var i in data) {
					            						if (data[i].nodeType == 'member') {
					            							$li = $('<li>');
															if (i == data.length - 1) {
								            					$li.attr('class', 'last');
															}
															var jobName = data[i].jobName == null ? "" : data[i].jobName;
					            							$span = $('<span>').html('<i class="bi bi-person-fill"></i>' + jobName + ' ' + data[i].nodeName);
					            							$li.append($span);
					            							$rootNode.append($li);
					            						} else {
						            						var hasChildren = false;
					            							<c:forEach var="m" items="${ mList }">
											                    if ('${ m.deptId }' == data[i].nodeId) {
											                    	hasChildren = true;
											                    }
							 	                       		</c:forEach>
						            						
					            							if (data[i].hasChildren == 0 || hasChildren) {
					            								$li = $('<li class="expandable">');
					            								$div =  $('<div class="hitarea expandable-hitarea">');
																if (i == data.length - 1) {
																	$li = $('<li class="expandable lastExpandable">');
																	$div = $('<div class="hitarea expandable-hitarea lastExpandable-hitarea">');
																}
						            							
								            					$input = '<input type="hidden" name="deptId" value="' + data[i].nodeId + '">'
								            					$a = '<a class="selectDept draggable">' + data[i].nodeName + '</a>';
								            					$ul = '<ul class="hasChildren"></ul>';
								            					
								            					$li.append($div);
								            					$li.append($input);
								            					$li.append($a);
								            					$li.append($ul);
								            					$rootNode.append($li);
																
					            							} else {
					            								$li = $('<li>');
																if (i == data.length - 1) {
								            						$li.attr('class', 'last');
																}
								            					$input = '<input type="hidden" name="deptId" value="' + data[i].nodeId + '">'
								            					$a = '<a class="selectDept draggable">' + data[i].nodeName + '</a>';
								            					$li.append($input);
								            					$li.append($a);
								            					
								            					$rootNode.append($li);
					            							}
					            						}
					            					}
					            					
					            					if (!$rootNode.hasClass('newNode')) {
					            						$hitarea.addClass('collapsable-hitarea').removeClass('expandable-hitarea');
						            					$hitarea.parent().addClass('collapsable').removeClass('expandable');
														if ($hitarea.parent().hasClass('lastExpandable')) {
															$hitarea.addClass('lastCollapsable-hitarea').removeClass('lastExpandable-hitarea');
															$hitarea.parent().addClass('lastCollapsable').removeClass('lastExpandable');
														}
														$rootNode.css('display', 'block');
					            					}
					            					
					            					$rootNode.addClass('newNode');
					            					$("#deptList").treeview({});
					            				} 
					            				
					            			},
					            			error: function(data) {
					            				console.log(data);
					            			},
					            		});
		            				
		            			} 
		            		//}
		            		
		            	});
		            	
// 		            	$(document).on('click', '', function(){ 
// 		            	}
		            
		            </script>
		            
                    <script>
                 		// drag and drop function
                 		$(function(){
						 	var topDis=0;
		                    var leftDis=0;
	
		                    //boolean to revert check
		                    var isRevert = true;
	
		                    //final object loc
		                    var fTop=0;
		                    var fLeft=0;
	
		                    //droppable target 
		                    $contain= $("#dropable");
	
		                    //draggable target
		                    $object = $(".draggable");
	
		                	//움직일 객체
		                    $object.draggable(
		                        {
		                            //드래그가 끝난뒤 제자리로 돌아오게 하는 속성값
		                            revert:function(event,ui){
		                                //droppable 객체가 아닌곳에 드래그 됫을때
		                                if(event==false){
		                                    isRevert=false;
		                                    return true;
		                                //droppable 객체에 들어갓을때
		                                } else{
		                                    isRevert=true;
		                                }
	
		                            },
	
		                            //드래그되는 객체가 본인 자체일지 아니면 그외 다른것일지
		                            //해당 함수의 return 값이 드래그되어서 움직임
		                            helper:function(){
		                                $helper=$(this).clone();
		                                return $helper; 
	
		                            },
	
		                            //드래그가 시작됬을때 발생
		                            start:function(event,ui){
		                                //최종 더해질 객체
		                                $final=$(this).clone();
		                                //잠시 더해져서 에니메이션을 보여줄 객체
		                                $clone=$(this).clone();
	
		                            },
	
		                            //드래그 도중 발생
		                            drag:function(event,ui){
										
		                            },
	
		                            //드래그가 중지됬을때 발생
		                            stop:function(event,ui){
		                                //console.log(event.target); 
		                                //이벤트 중인 타깃 객체 helper객체가아닌
		                                //original 객체
	
		                                //console.log(ui.offset); 최종 좌표
		                                
		                                //제대로 droppable 객체 안에 들어갔을때
		                                if(isRevert){
		                                	console.log($(this).prev().val())
										  	var html = "<div><input type='hidden' value='" + $(this).prev().val() + "'>" 
										  	           + "<span>" + $final.text() + "</span></div>"
											// ul태그 안에 놓을 거면 li로 설정, 아니면 div로 설정  	
										  	
		                                    //최종 객체를 더해주고
		                                    // $contain.append($final.text());
		                                    //$contain.append($final);
		                                   // $contain.append(html);
		                                    
		                                    //최종 객체의 위치를 지정 후 거리 계산
		                                    //visibility 속성은 해당위치에 존재함으로 밑의 과정이 
		                                    //display 속성은 해당위치에 존재하지 않기때문에 필요함
		                                    $finalTop=$final.offset().top;
		                                    $finalLeft=$final.offset().left;
		                                    
		                                    //객체를 숨기고
		                                    $final.css("visibility","hidden");
	
		                                    //이동할 객체를 생성
		                                    $clone.css("position","absolute");
		                                    
		                                    //$contain.append($clone);
		                                    
		                                    // $contain.append($final.text());
		                                    // $contain.append($clone);
		                                    $contain.append(html);
		                                    
		                                    
	
		                                    //drop 위치에 객체 배정
		                                    $clone.offset({
		                                        top:ui.offset.top,
		                                        left:ui.offset.left
		                                    })
	
		                                    //거리 계산
		                                    topDis=$finalTop-ui.offset.top;
		                                    leftDis=$finalLeft-ui.offset.left;
		                                     
		                                    $clone.animate({left:"+="+leftDis},function(){
	
		                                        //이동한 객체는 에니메이션 종료 후 삭제
		                                        $(this).remove();
	
		                                        //완료될시 모든 객체를 보여줌
		                                        $contain.children().css("visibility","visible");    
		                                        $contain.children().find('input').css("visibility",'');    
	
		                                    });
	
		                                    $clone.animate(
		                                            {top:"+="+topDis},
		                                            {queue:false}
	
		                                    );   
		                                }
		                                //$(this).animate({marginLeft:"+="+leftDis});
		                            }

	                        	});
		                    
		                    	$contain.droppable({
			                    	 accept:".draggable",
								     drop: function( event, ui ) {  // drop function : draggable의 stop function이 종료된 후에 발생
									        $( this )
								          .addClass( "ui-state-highlight" )
								          .find( "p" )
								            .html( "Dropped!" );
							     	}
								});
						});                   
                 		
                 		$(document).on('drag', '.draggable', function(){ // 새롭게 생성된 객체도 적용될 수 있게 $(document).on()사용
                 			var topDis=0;
		                    var leftDis=0;
	
		                    //boolean to revert check
		                    var isRevert = true;
	
		                    //final object loc
		                    var fTop=0;
		                    var fLeft=0;
	
		                    //droppable target 
		                    $contain= $("#dropable");
	
		                    //draggable target
		                    $object = $(".draggable");
	
		                	//움직일 객체
		                    $object.draggable(
		                        {
		                            //드래그가 끝난뒤 제자리로 돌아오게 하는 속성값
		                            revert:function(event,ui){
		                                //droppable 객체가 아닌곳에 드래그 됫을때
		                                if(event==false){
		                                    isRevert=false;
		                                    return true;
		                                //droppable 객체에 들어갓을때
		                                } else{
		                                    isRevert=true;
		                                }
	
		                            },
	
		                            //드래그되는 객체가 본인 자체일지 아니면 그외 다른것일지
		                            //해당 함수의 return 값이 드래그되어서 움직임
		                            helper:function(){
		                                $helper=$(this).clone();
		                                return $helper; 
	
		                            },
	
		                            //드래그가 시작됬을때 발생
		                            start:function(event,ui){
		                                //최종 더해질 객체
		                                $final=$(this).clone();
		                                //잠시 더해져서 에니메이션을 보여줄 객체
		                                $clone=$(this).clone();
	
		                            },
	
		                            //드래그 도중 발생
		                            drag:function(event,ui){
										
		                            },
	
		                            //드래그가 중지됬을때 발생
		                            stop:function(event,ui){
		                                //console.log(event.target); 
		                                //이벤트 중인 타깃 객체 helper객체가아닌
		                                //original 객체
	
		                                //console.log(ui.offset); 최종 좌표
		                                
		                                //제대로 droppable 객체 안에 들어갔을때
		                                if(isRevert){
		                                	console.log($(this).prev().val())
										  	var html = "<div><input type='hidden' class='dropMId' name='mId' value='" + $(this).prev().val() + "'>" 
										  	           + "<span>" + $final.text() + "</span></div>"
											// ul태그 안에 놓을 거면 li로 설정, 아니면 div로 설정  	
										  	
		                                    //최종 객체를 더해주고
		                                    // $contain.append($final.text());
		                                    // $contain.append($final); // 드래그된 a태그 자체
		                                    // $contain.append(html);
		                                    
		                                    //최종 객체의 위치를 지정 후 거리 계산
		                                    //visibility 속성은 해당위치에 존재함으로 밑의 과정이 
		                                    //display 속성은 해당위치에 존재하지 않기때문에 필요함
		                                    $finalTop=$final.offset().top;
		                                    $finalLeft=$final.offset().left;
		                                    
		                                    //객체를 숨기고
		                                    $final.css("visibility","hidden");
	
		                                    //이동할 객체를 생성
		                                    $clone.css("position","absolute");
		                                    
		                                    // $contain.append($final.text());
		                                    // $contain.append($clone);
		                                    // $contain.append(html);
		                                    
		                                    // 결재선 사원 드래그 앤 드롭할시
		                                    var mIdArr = document.getElementsByClassName('dropMId');
		                                    
		                                    var dupCheck = false;
		                                    for (var i in mIdArr) {
		                                    	console.log(mIdArr[i].value);
		                                    	if(mIdArr[i].value == $(this).prev().val()) {
		                                    		dupCheck = true;
		                                    	}
		                                    }
		                                    if (!dupCheck) {
		                                    	$contain.append(html);
		                                    } else {
		                                    	alert('중복되었습니다.');
		                                    }
	
		                                    //drop 위치에 객체 배정
		                                    $clone.offset({
		                                        top:ui.offset.top,
		                                        left:ui.offset.left
		                                    })
	
		                                    //거리 계산
		                                    topDis=$finalTop-ui.offset.top;
		                                    leftDis=$finalLeft-ui.offset.left;
		                                     
		                                    $clone.animate({left:"+="+leftDis},function(){
	
		                                        //이동한 객체는 에니메이션 종료 후 삭제
		                                        $(this).remove();
	
		                                        //완료될시 모든 객체를 보여줌
		                                        $contain.children().css("visibility","visible");    
		                                        $contain.children().find('input').css("visibility",'');    
	
		                                    });
	
		                                    $clone.animate(
		                                            {top:"+="+topDis},
		                                            {queue:false}
	
		                                    );   
		                                }
		                            }

	                        	});
		                    
		                     	$contain.droppable({
			                    	 accept:".draggable",
								     drop: function( event, ui ) {  // drop function : draggable의 stop function이 종료된 후에 발생
									        $( this )
								          .addClass( "ui-state-highlight" )
								          .find( "p" )
								            .html( "Dropped!" );
							     	}
								});
                 		});
                 		
                 		$(document).on('drop', '#dropable', function(){
                 			$(this).droppable({
		                    	 accept:".draggable",
							     drop: function( event, ui ) {  // drop function : draggable의 stop function이 종료된 후에 발생
								        $( this )
							          .addClass( "ui-state-highlight" )
							          .find( "p" )
							            .html( "Dropped!" );
							     }
							});
                 		}); 
                 		

					</script>
                    <div class="col-lg-8 card2">
                        <div class="card">
                            <div class="card-body">
                            	<h4 class="card-intro-title" style="font-weight: bold;">부서 정보</h4>
                            	<br>
                               	<div class="dept-detail">
                               		<input type="hidden" name="deptId" value="">
			                        <label class="col-form-label">부서명</label>
			                        <input type="text" class="form-control updateInput" name="deptName">
			                        <br>
			                        <label class="col-form-label">부서책임자</label>
			                        <input type="search" class="form-control updateInput" name="deptManager" list="memberList" placeholder="사원 아이디" autocomplete="off">
			                        <datalist id="memberList">
			                        	<c:forEach var="m" items="${ mList }">
			                        		<option value="${ m.mId }"> ${ m.jobName } ${ m.mName } </option> 
	 	                                 </c:forEach>
			                        </datalist>
									<br>
			                        <label class="col-form-label">상위부서</label> <!-- 없으면 미지정으로 표기 -->
			                        <input type="text" class="form-control" name="upperDept">
			                        <br>
			                        <label class="col-form-label">생성일</label>
			                        <br><br>
	                                
                                    <div class="update" align="center">
                                    	<button class="btn btn-primary" id="btnSubmit">저장</button>
	                                    <button type="reset" class="btn btn-outline-primary">취소</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <script>
		            	$('input[name=deptManager]').on('change', function(){
		                	console.log($('input[name=deptManager]').val());
		                    // 만약 멤버리스트에 없는 아이디 입력시 존재하는 사원의 아이디를 입력해달라고 안내 문구
		                });
		            	
		            	
		        		// sweet alert customize
		        		var alert = function(msg, title, icon) {
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
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title" style="font-weight: bold;">부서 목록</h3>
                            </div>
                            <div class="card-body">
	                        	<div style="float: right; margin-bottom: 10px;">
		                            <!-- Button trigger modal -->
			                       	<button type="button" class="btn btn-outline-dark" id="insertBtnModal" data-toggle="modal" data-target="#insertJob">직위 추가</button>
			                        <button type="button" class="btn btn-outline-dark" id="deleteBtn">부서 삭제</button>
	                            </div>
					              
	                            <!-- Insert Modal -->
	                            <div class="modal fade" id="insertJob">
	                            	<div class="modal-dialog modal-dialog-centered" role="document">
	                                	<div class="modal-content">
	                                    	<div class="modal-header">
	                                        	<h5 class="modal-title">부서 추가</h5>
	                                            <button type="button" class="close" data-dismiss="modal"><span>&times;</span>
	                                            </button>
	                                        </div>
	                                        <div class="modal-body" style="color: black;">
	                                        	<span class="text-danger">*</span><label class="col-form-label">명칭</label> 
	                                            <input id="jobName1" type="text" class="form-control" name="jobName" maxlength="10"><br>
	                                            <span id="jobNameGuide1" class="guide text-danger"></span><br>
	                                            <span class="text-danger">*</span><label class="col-form-label">정렬 순서</label>
	                                            <input id="jobOrder1" type="number" class="form-control" name="jobOrder" step="1" min="1"><br>
	                                            <span id="jobOrderGuide1" class="guide text-danger"></span><br>
	                                        </div>
	                                        <div class="modal-footer">
	                                            <button type="button" class="btn btn-primary" id="insertBtn">저장</button>
	                                            <button type="button" class="btn btn-light" data-dismiss="modal">취소</button>
	                                        </div>
	                                    </div>
	                            	</div>
	                          	</div>
	                          	
	                            <!-- Update Modal -->
	                            <div class="modal fade" id="updateJob">
	                                <div class="modal-dialog modal-dialog-centered" role="document">
	                                	<div class="modal-content">
	                                    	<div class="modal-header">
	                                        	<h5 class="modal-title">직위 수정</h5>
	                                            <button type="button" class="close" data-dismiss="modal"><span>&times;</span>
	                                            </button>
	                                   		</div>
	                                        <div class="modal-body" style="color: black;">
	                                        	<span class="text-danger">*</span><label class="col-form-label">명칭</label>
	                                            <input id="jobName2" type="text" class="form-control" name="jobName" maxlength="10"><br>
	                                            <span id="jobNameGuide2" class="guide text-danger"></span><br>
	                                            <span class="text-danger">*</span><label class="col-form-label">정렬 순서</label>
	                                            <input id="jobOrder2" type="number" class="form-control" name="jobOrder" step="1" min="1"><br>
	                                            <span id="jobOrderGuide2" class="guide text-danger"></span><br>
	                                        </div>
	                                        <input id="jobId" type="hidden" name="jobId">
	                                        <div class="modal-footer">
	                                        	<button type="button" class="btn btn-primary" id="updateBtn">저장</button>
	                                            <button type="button" class="btn btn-light" data-dismiss="modal">취소</button>
	                                        </div>
	                                    </div>
	                                </div>
	                         	</div>
	                            <div class="table-responsive">
	                            	<table id="jobList" class="table table-hover table-responsive-sm" style="color: black; text-align: center;">
	                                	<thead>
	                                    	<tr>
	                                        	<th scope="col" width="30px"><input type="checkbox" id="checkAll"></th>
	                                       		<th scope="col" width="200px">명칭</th>
	                                            <th scope="col" width="100px">정렬 순서</th>
	                                            <th scope="col" width="100px">사용 인원수</th>
	                                       </tr>
	                                  	</thead>
	                                  	<tbody>
	                                    	<c:if test="${ empty jList }">
	                                       		<tr>
			                                		<td colspan="4">등록된 직위가 없습니다.</td>
		                                   		</tr>
	                                        </c:if>
	                                        <c:forEach var="j" items="${ jList }">
		                                    	<tr>
			                                		<td><input type="checkbox" class="checkJ" name="jobId" value="${ j.jobId }"></td>
			                                        <td><a class="updateBtnModal" data-toggle="modal" data-target="#updateJob">${ j.jobName }</a></td>
			                                        <td>${ j.jobOrder }</td>
			                                        <td>${ j.memberCount }</td>
		                                        </tr>
	                                       	</c:forEach>
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

    
   <!-- Tree Viewer JS
	============================================ -->
<!-- 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script> -->


<!-- <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script> -->

	<script src="${contextPath}/resources/assets/vendor/deptList/js/jquery.cookie.js"></script>
	<script src="${contextPath}/resources/assets/vendor/deptList/js/jquery.treeview.js" type="text/javascript"></script>
	<script src="${contextPath}/resources/assets/vendor/deptList/js/jquery.treeview.edit.js" type="text/javascript"></script>
	<script src="${contextPath}/resources/assets/vendor/deptList/js/jquery.treeview.async.js" type="text/javascript"></script>
	
	<!-- drag and drop 관련 js -->
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
</body>

</html>