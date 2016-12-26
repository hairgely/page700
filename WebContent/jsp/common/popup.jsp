<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div data-toggle="modal" data-target="#myModal" id="openModal" style="display: none;">&nbsp;</div>
<div data-toggle="modal" data-target="#myModalConfirm" id="openConfirmModal" style="display: none;">&nbsp;</div>
<div data-toggle="modal" data-target="#myModalAdd" id="openAddModal" style="display: none;">&nbsp;</div>
<div data-toggle="modal" data-target="#myModalAdd2" id="openAddModal2" style="display: none;">&nbsp;</div>
<div data-toggle="modal" data-target="#myModalCate" id="openCateModal" style="display: none;">&nbsp;</div>
<div data-toggle="modal" data-target="#myModalFindPw" id="openFindsModal" style="display: none;">&nbsp;</div>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
<h4 class="modal-title" id="myModalLabel"></h4>
</div>
<div class="modal-body" id="myModalLabelBody" style="padding : 20px;">
</div>
<div class="modal-footer">
<button type="button" class="btn btn-primary" data-dismiss="modal" id="closeModal();">닫기</button>
</div></div></div></div>

<div class="modal fade" id="myModalConfirm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
<h4 class="modal-title" id="myModalConfirmLabel"></h4>
</div>
<div class="modal-body" id="myModalConfirmLabelBody" style="padding : 20px;">
</div>
<div class="modal-footer">
<button type="button" class="btn btn-primary" onclick="saveConfirm();" id="saveConfirmBtn">저장</button>
<button type="button" class="btn btn-default" data-dismiss="modal" id="closeConfirmModal">닫기</button>
</div></div></div></div>

<div class="modal fade" id="joinModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
<h4 class="modal-title"><label>회원가입</label></h4>
</div>
<div class="modal-body" style="padding : 20px;">
	<div id="errordiv"></div>
	<div class="form-group">
	    <label>아이디</label>
		<input type="text" id="joinid" class="form-control" style="" maxlength="50" onblur="fn_press_han(this);" onkeydown="fn_press_han(this);" style="ime-mode:disabled;"/>
	</div>
	<div class="form-group">
	    <label>비밀번호</label>
		<input type="password" id="joinpw" class="form-control" style="" maxlength="50"/>
	</div>
	<div class="form-group">
	    <label>비밀번호확인</label>
		<input type="password" id="joinpwconfirm" class="form-control" style="" maxlength="50"/>
	</div>
	<div class="form-group">
	    <label>이메일 - 비밀번호찾기용</label>
		<input type="text" id="joinemail" class="form-control" style="" maxlength="50"/>
	</div>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-primary" onclick="joinStart();">저장</button>
<button type="button" class="btn btn-default" data-dismiss="modal" id="closejoinModal">닫기</button>
</div></div></div></div>

<div class="modal fade" id="myModalAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
<h4 class="modal-title"><label>사이트추가</label></h4>
</div>
<div class="modal-body" style="padding : 20px;">
	<div id="errordiv12" style=""></div>
	<div class="form-group">
	    <label>이름</label>
	    <input type="text" id="insitename2" class="form-control" maxlength="50"/>
	</div>
	<div class="form-group">
	    <label>URL주소</label>
		<input type="text" id="insiteaddr2" class="form-control" maxlength="50"/>
	</div>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-primary" onclick="setSite2();">저장</button>
<button type="button" class="btn btn-default" data-dismiss="modal" id="closeAddModal">닫기</button>
</div></div></div></div>

<div class="modal fade" id="myModalAdd2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
<h4 class="modal-title"><label>사이트추가</label></h4>
</div>
<div class="modal-body" style="padding : 20px;">
	<div id="errordiv13" style=""></div>
	<div class="form-group">
	    <label>이름</label>
	    <input type="text" id="insitename3" class="form-control" maxlength="50"/>
	</div>
	<div class="form-group">
	    <label>URL주소</label>
		<input type="text" id="insiteaddr3" class="form-control" maxlength="50"/>
	</div>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-primary" onclick="setSite3();">저장</button>
<button type="button" class="btn btn-default" data-dismiss="modal" id="closeAddModal2">닫기</button>
</div></div></div></div>

<div class="modal fade" id="myModalCate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
<h4 class="modal-title"><label>카테고리 편집</label></h4>
</div>
<div class="modal-body" style="padding : 20px;">
	<div><label>카테고리 추가</label></div>
	<div class="form-group">
		<input type="text" id="ucateaddtext" class="form-control" maxlength="50"/>
	</div>
	<div style="text-align:right;">
		<a id="ucateaddok" class="btn btn-primary">추가</a>
		<a id="ucateaddno" class="btn btn-primary">취소</a>
	</div>
	<br/>
	<div><label>카테고리 수정</label></div>
	<div id="cateEditDiv" style="overflow:auto;">
	<div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>이름</th>
                                            <th>공개여부</th>
                                            <th>삭제</th>
                                            <th>위로</th>
                                            <th>아래로</th>
                                        </tr>
                                    </thead>
                                    <tbody id="ucateedittable">
                                    </tbody>
                                </table>
                            </div>
	
	</div>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-default" data-dismiss="modal" id="closeCateModal">닫기</button>
</div></div></div></div>

<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
<h4 class="modal-title"><label>로그인</label></h4>
</div>
<div class="modal-body" style="padding : 20px;">
	<br/>
	<div id="loginerrordiv"></div>
	<div class="form-group">
	    <label>아이디</label>
		<input type="text" id="loginid" class="form-control" style="" />
	</div>
	<div class="form-group">
	    <label>비밀번호</label>
		<input type="password" id="loginpw" class="form-control" style="" />
	</div>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-primary" onclick="loginstart();">로그인</button>
<button type="button" class="btn btn-primary" onclick="findPWD();">비밀번호 찾기/변경</button>
<button type="button" class="btn btn-default" data-dismiss="modal" id="closeloginModal">닫기</button>
</div></div></div></div>

<div class="modal fade" id="myModalFindPw" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
<h4 class="modal-title"><label>비밀번호찾기</label></h4>
</div>
<div class="modal-body" style="padding : 20px;">
	<br/>
	<div id="finderrordiv"></div>
	<div class="form-group">
	    <label>아이디</label>
	    <input type="text" id="findPwdId" class="form-control" />
	</div>
	<div class="form-group">
	    <label>이메일</label>
	    <input type="text" id="findPwdEmail" class="form-control" />
	</div>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-primary" onclick="findPwdGo();">이메일 전송</button>
<button type="button" class="btn btn-default" data-dismiss="modal" id="closeFindModal">닫기</button>
</div></div></div></div>