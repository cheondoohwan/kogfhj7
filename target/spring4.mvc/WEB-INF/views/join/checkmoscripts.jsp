<%@ page pageEncoding="UTF-8" %>

<script>
    function checkmecheck() { //이용악관 / 개인정보이용 동의 확인
        let agree1 = document.getElementById('agree1');
        let agree2 = document.getElementById('agree2');

        if(!agree1.checked) alert('이용약관에 동의하세요');
        else if(!agree2.checked) alert('개인정보 이용에 동의하세요');
        else location.href ='/join/checkme';
    }

    try{
        let okagree = document.getElementById('okagree');
        okagree.addEventListener('click',agreecheck);
    }catch (e) {
        //alert('agree 관련 오류발생!!');
    } // join/agree에서만 적용

</script>