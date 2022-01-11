<%@page pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div id="main">
    <div class="mt25">
        <h2><i class="bi bi-chat-text-fill"></i>자유게시판</h2>
        <hr>
    </div>

    <div class="row">
        <div class="col"></div>
        <div class="col-5 form-group row">
            <select name="findtype" id="findtype"
                    class="form-control col-3">
                <option value="title">제 &nbsp; 목</option><!--option value 써야할때= 데이터와 서버가 불일치하면/서버는 영어이기때문 -->
                <option value="userid">본 &nbsp; 문</option>
                <option value="contents">작성자</option>
            </select>&nbsp;
            <input type="text" name="findkey" id="findkey"
                   class="form-control col-5">&nbsp;
            <button type="button" class="btn btn-light">
                <i class="bi bi-search"></i>검색하기</button>
        </div>

        <div class="col-5 text-right">
            <button type="button" class="btn btn-light">
                <i class="bi bi-plus-circle-fill"></i>새글쓰기</button>
        </div>
        <div class="col"></div>
    </div> <!-- 검색, 새글쓰기 버튼 -->

    <div class="row">
        <div class="col"></div>
        <div class="col-10">
            <table class="table table-striped table-hover">
                <thead style="background: #dff0d8">
                <tr>
                    <th style="width: 7%">번호</th>
                    <th>제목</th>
                    <th style="width: 12%">작성자</th>
                    <th style="width: 10%">작성일</th>
                    <th style="width: 7%">추천</th>
                    <th style="width: 7%">조회</th>
                </tr>
                </thead>

                <tbody>
                <tr class="text-danger">
                    <th>공지</th>
                    <th><span class="badge-danger">Hot</span>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit.</th>
                    <th>관리자</th>
                    <th>2021.12.31</th>
                    <th>999</th>
                    <th>123</th>
                </tr>

         <c:forEach var="b" items="${bd}">
         <tr>
             <td>${b.bon}</td>
             <td><a href="/board/view?bon=${b.bon}">${b.title}</a></td>
             <td>${b.userid}</td>
             <td>${fn:substring(b.regdate,0 , 10)}</td>
             <td>${b.thumbs}</td>
             <td>${b.views}</td>
         </tr>
         </c:forEach>

                </tbody>
            </table>
        </div>
        <div class="col"></div>
    </div><!--게시판-->

    <div class="row">
        <div class="col-12">
            <ul class="pagination justify-content-center">
                <li class="page-item disabled">
                    <a href="#" class="page-link">이전</a>
                </li>

                <li class="page-item active">
                    <a href="#" class="page-link
                          cpage">1</a>
                </li>

                <li class="page-item">
                    <a href="#" class="page-link">2</a>
                </li>

                <li class="page-item">
                    <a href="#" class="page-link">3</a>
                </li>

                <li class="page-item">
                    <a href="#" class="page-link">4</a>
                </li>

                <li class="page-item">
                    <a href="#" class="page-link">5</a>
                </li>

                <li class="page-item">
                    <a href="#" class="page-link">6</a>
                </li>

                <li class="page-item">
                    <a href="#" class="page-link">7</a>
                </li>

                <li class="page-item">
                    <a href="#" class="page-link">8</a>
                </li>

                <li class="page-item">
                    <a href="#" class="page-link">9</a>
                </li>

                <li class="page-item">
                    <a href="#" class="page-link">10</a>
                </li>

                <li class="page-item">
                    <a href="#" class="page-link">다음</a>
                </li>
            </ul>
        </div>
    </div><!--페이지 네비게이션 -->

</div> <!-- //main -->