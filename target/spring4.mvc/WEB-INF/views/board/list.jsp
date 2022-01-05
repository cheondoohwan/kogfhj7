<%@page pageEncoding="utf-8" %>
     
     <div id="main">
        <div style="mt25">
            <h2><i class="bi-people-fill"></i>자유게시판</h2>
            <hr>
        </div>
        
        <div class="row">
            <div class="col"></div>
            <div class="col-5 form-gorup row">
                <select name="findtype" id="findtype" class="form-control col-3">
                    <option></option>
                </select>
                <input type="text" name="findkey" id="findkey" class="form-control col-4" >
                <button type="button" class="btn btn-light"><i class="bi bi-search"></i>검색하기</button>
            </div>
            <div class="col-5 text-right">
                <button type="button" class="btn btn-light"><i class="bi bi-plus-circle-fill"></i>새글쓰기</button>
            </div>
            <div class="col"></div>
        </div><!-- 검색, 새글쓰기 버튼 -->
    
        <div class="row"></div>
        <div class="row"></div>
        
     </div> <!-- //main -->

 
