<%@ page pageEncoding="UTF-8" %>

<script>
    function checkmecheck() { //이용악관 / 개인정보이용 동의 확인
        let check2btn = document.getElementById('check2btn');
        let cancel2btn = document.getElementById('cancel2btn');
        let name2 = document.getElementById('name2');
        let jumin1 = document.getElementById('jumin1');
        let jumin2 = document.getElementById('jumin2');

        if(name2.empty) alert('이름을 입력하세요');
        else if(jumin1.empty) alert('주민번호 앞자리를 입력하세요');
        else if(jumin2.empty) alert('주민번호 뒷자리를');
        else location.href ='/join/';
    }

</script>