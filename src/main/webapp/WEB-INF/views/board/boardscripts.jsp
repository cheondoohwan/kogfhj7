<%@ page pageEncoding="UTF-8" %>

<script>
    //리스트 페이지에서 '검색하기' 버튼 클릭시 작동
    $('#findbtn').on('click', function () {
        if($('#findkey').val() == '') alert('검색어를 입력하세요!');
        else {
            let params = '?ftype='+ $('#findtype').val();
            params = params + '&fkey=' + $('#findkey').val();
            location.href = '/board/list' + params;
        }
    });

</script>