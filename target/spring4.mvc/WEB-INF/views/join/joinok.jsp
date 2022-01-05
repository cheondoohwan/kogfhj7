<%@page pageEncoding="utf-8" %>
     
     <div id="main">
        <div clsss="mt25">
            <h2><i class="bi-people-fill"></i> 회원가입</h2>
            <hr>
        </div>
        
        <nav aira-label="breadcrumb">
            <ul class="breadcrumb">
                <li class="breadcrumb-item">
                    <span class="badge badge-success" style="padding: 8px">이용약관</span>
                </li>
                
                <li class="breadcrumb-item">
                    <span class="badge badge-success" style="padding: 8px">실명확인</span>
                </li>
                
                <li class="breadcrumb-item">
                    <span class="badge badge-success" style="padding: 8px">정보입력</span>
                </li>
                
                <li class="breadcrumb-item">
                    <span class="badge badge-success" style="padding: 8px">가입완료</span>
                </li>
            </ul>
        </nav> <!-- 회원가입 진행단계 표시 -->
        <div class="mt25">
            <h3>회원가입 완료</h3>
            <small class="text-muted">안전하고 편리한 홈페이지 이용을 위해 회원님의 아이디와
                비밀번호 관리에 주의해 주시기 바랍니다.</small>
        </div>
        <div class="jumbotron bg-warning m1030">
            <h1 class="display-3">회원가입을 축하합니다!!</h1>
            <p class="lead">게시판 글작성, 쇼핑몰 이용등의 일부 서비스는
                실명확인 후 이용하실 수 있습니다.<br>
                실명확인 후에도 가입하신 아이디는 변경할 수 없습니다.</p>
            <hr class="my-4">
            <p>회원가입 이후 아이디와 비밀번호로 일반회원으로
                로그인하셔서 추가 인적사항등을 등록해주시기 바랍니다.</p>
            <p>Lorem Ipsom과 함께 즐거운 시간 되십시오</p>
        </div><!-- 알림판 -->

        <div class="text-center" style="margin: 100px 0;">
            <button type="button" id="go2index"
                    class="btn btn-warning">
                <i class="bi bi-info-circle"></i>
                메인으로 이동</button>
        </div><!-- 버튼 -->
        
     </div> <!-- //main -->

<!-- 로그인 모달 -->
<div id="loginmodal" role="dialog" class="modal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">로그인</h3>
                <button class="btn btn-light" type="button" data-dismiss="modal">닫기</button>
            </div>
            <div class="modal-body">
                <form id="loginfrm" name="loginfrm">
                  
                   <div class="form-group row text-danger">
                       <label for="userid" class="col-form-label col-4 text-right">아이디</label>
                       <input type="text" name="userid" id="userid" class="form-control col-6 border-danger">
                   </div>
                   
                   <div class="form-group row text-danger">
                       <label for="passwd" class="col-form-label col-4 text-right">비밀번호</label>
                       <input type="password" name="passwd" id="passwd" class="form-control col-6 border-danger">
                   </div>
                   
                   <div class="form-group row">
                       <div class="col-4"></div>
                       <div class="form-check">
                           <input type="checkbox" name="autolgn" class="form-check-input">
                           <label class="form-check-label text-warning">로그인 상태 유지</label>
                       </div>
                   </div>
                </form>
            </div>
            
            <div class="modal-footer justify-content-center">
            <button class="btn btn-danger" type="button" id="loginbtn">로그인</button>
            <button class="btn btn-warning text-white" type="button" id="findipbtn">아이디/비밀번호 찾기</button>
            </div>
        </div>
    </div>
</div>
