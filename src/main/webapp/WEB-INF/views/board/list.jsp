<%@page pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--
// 현재 페이지에 따라 보여줄 페이지 블록을 결정
// ex) 총 페이지수pages가 27일 때
// cp = 1 : 1 2 3 4 5 6 7 8 9 10
// cp = 3 : 1 2 3 4 5 6 7 8 9 10
// cp = 9 : 1 2 3 4 5 6 7 8 9 10
// cp = 11 : 11 12 13 14 15 16 17 18 19 20
// cp = 17 : 11 12 13 14 15 16 17 18 19 20
// cp = 23 : 21 22 23 24 25 26 27
// cp = n : ?, ?+1, ?+2, .... ?+9
startpage = ((cpage-1) / 10) * 10 + 1
endpage = startpage + 9
--%>
<%--
String pcp = requert.getParameter("cpage");
int cpage = Integer.parseInt(pcp);
--%>
<%-- 현재페이지 및 페이지블럭(네비게이션) 처리--%>
<fmt:parseNumber var="cp" value="${param.cpage}"/>
<fmt:parseNumber var="sp" integerOnly="true" value="${((cp-1) / 10)}" />
<fmt:parseNumber var="sp" value="${sp * 10 + 1}" />
<fmt:parseNumber var="ep" value="${sp + 9}" />

<%-- 총페이지수 처리--%>
<fmt:parseNumber var="tp" integerOnly="true" value="${bdcnt / 25}" />
<c:if test="${bdcnt % 25 gt 0}">
    <fmt:parseNumber var="tp" value="${tp+1}" />
</c:if>

<div id="main">
    <div class="mt25">
        <h2><i class="bi bi-chat-text-fill"></i>자유게시판 <span>${cp} ${sp} ${ep} ${bdcnt} ${tp}</span> </h2>
        <hr>
    </div>

    <div class="row">
        <div class="col"></div>
        <div class="col-5 form-group row">
            <select name="findtype" id="findtype"
                    class="form-control col-3">
                <option value="title">제 &nbsp; 목</option><!--option value 써야할때= 데이터와 서버가 불일치하면/서버는 영어이기때문 -->
                <option value="userid">작 성 자</option>
                <option value="contents">내   용</option>
            </select>&nbsp;
            <input type="text" name="findkey" id="findkey"
                   class="form-control col-5">&nbsp;
            <button type="button" class="btn btn-light" id="findbtn">
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
         <%--for(boardVO b : bd) --%>
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
                <c:if test="${sp ne 1}"><li class="page-item"></c:if>
                <c:if test="${sp eq 1}"><li class="page-item disabled"></c:if>
                    <a href="/board/list?cpage=${sp-10}" class="page-link">이전</a>
                </li>

                <%-- for(int i=0; i<=10; ++i) --%>
                <c:forEach var="i" begin="${sp}" end="${ep}" step="1">
                    <c:if test="${i le tp}"> <%--페이지 블럭 출력 조건 --%>
                        <%-- 페이지블럭에 active 표시 여부 결정--%>
                        <li class="page-item <c:if test="${i eq cp}">active</c:if>">
                        <a href="/board/list?cpage=${i}" class="page-link cpage">${i}</a>
                        </li>
                    </c:if>
                </c:forEach>
                    <%--'다음'버튼에 disabled 표시여부 결정 --%>
                    <li class="page-item <c:if test="${(sp + 9) ge tp}">disabled</c:if>">
                    <a href="/board/list?cpage=${ep+1}" class="page-link">다음</a>
                </li>

            </ul>
        </div>
    </div><!--페이지 네비게이션 -->

</div> <!-- //main -->