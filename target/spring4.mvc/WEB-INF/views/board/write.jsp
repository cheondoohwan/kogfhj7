<%@page pageEncoding="utf-8" %>
     
     <div id="main">
        <div style="mt25">
            <h2><i class="bi bi-chat-text-fill"></i> 자유게시판</h2>
            <hr>
        </div>
        
        <div class="row">
            <div class="col"></div>
            <div class="col-5 form-gorup row">
               <h3><i class="bi bi-plus-circle-fill"></i>새글쓰기</h3>
               </div>
            <div class="col-5 text-right">
               <button type="button" class="btn btn-light"><i class="bi bi-list"></i>목록으로</button>
            </div>
            <div class="col"></div>
        </div>  
          
        <div class="row">
            <div class="col"></div>
            <div class="col-10 card card-body bg-light text-danger mtb25">
                <div class="form-group row">
                    <label for="title" class="col-form-label col-2 text-right">제목</label>
                    <input type="text" name="title" id="title" class="form-control col-9 border-danger">
                </div>
                
                <div class="form-group row">
                    <label for="contents" class="col-form-label col-2 text-right">본문내용</label>
                    <textarea rows="15" name="contents" id="contents" class="form-control border-danger col-9"></textarea>
                </div>
                
                <div class="form-group row">
                    <label for="captcha" class="col-form-label col-2 text-right">자동입력방지</label>
                    <img src="../imgs/google_recaptcha.gif" width="45%" class="mm5">
                </div>
                
                <div class="row">
                  <div class="col-12 text-center">
                   <hr style="background: black">
                    <button class="btn btn-primary"><i class="bi bi-check"></i>입력완료</button>
                    <button class="btn btn-danger"><i class="bi bi-x"></i>취소하기</button>
                    </div>
                </div>
                
            </div>
            <div class="col"></div>
        </div>    
        
     </div> <!-- //main -->
     
