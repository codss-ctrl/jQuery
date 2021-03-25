
function regCheck(){
	
		namevalue = $('#name').val().trim();
		
		//공백 검증
		if(namevalue.length < 1){
			alert("이름 입력하세요")
			return false;
		}
		//길이검증
		if(namevalue.length < 2 || namevalue.length > 10 ){
			alert("2~10까지 입니다.")
			return false;
		}
		//정규식
		namereg = /^[가-힣]{2,10}$/
		
		//입력한 값과 정규식이 일치하는지 비교
		//test() : 비교한 결과를 true, false로 리턴
		if (!(namereg.test(namevalue))) {
			alert("이름 형식 오류")	
			return false;
		}
/**
 * 
 */
		//아이디 체크
		
		//입력값 가져오기
		idvalue = $('#id').val().trim();
		
		//공백체크
		
		if (idvalue.length <1) {
			alert("id 입력하세요")
			return false;
		}
		
		//길이체크
		if(idvalue.lenth<4 || idvalue.lenth > 12){
			alert("id 길이 오류")
			return false;
		}
			
		//정규식
		idreg = /^[a-z][a-zA-Z0-9]$/;
				
			if (!(idreg.test(idvalue))) {
				alert("id 형식 오류");
				return false;
			}
		
		
/**
 * 
 */		
		//전화번호
		
		telvalue = $('#tel').val().trim();
		
		//공백
		if (telvalue.lenghth<0) {
			alert("전화번호 입력하세요")
			return false
		}
		
		//정규식
		telreg = /\d{3}-\d{4}-\d{4}/ 				
		
		//비교
		if (!(telreg.test(telvalue))) {
			alert("전화번호 형식오류")
			return false
		}
/**
 * 
 */
		//비밀번호
		
		//값가져오기
		passvalue = $('#pass').val().trim()
		//공백
		if (passvalue.length<1) {
			alert("비밀번호 입력하세요")
			return false
		}
		//길이 8~15
		if (passvalue.length<8 || passvalue.length>15 ) {
			alert("비밀번호 8~15 사이")
			return false
		}
		//정규식-영문 대소문자숫자특수문자가 반드시 하나 이상씩 
		//Ww+(?=:) => :를 기준으로 앞에(전방에) 한번 이상 반복되는 문자나 숫자를 검색한다
		//(?=.*[A-Z] => 0번 이상 오는 어떤 문자 뒤에 A-Z 을 기준으로 앞에 
		// 				누군가를 검색. 누군가를 정하지 않음
		passreg = /^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[~!@#$%^&*+]).{8,15}$/;
		
		//비교
		if (!(passreg.test(passvalue))) {
			alert("비밀번호 형식오류")
			return false;
		}
/**
 * 
 */		
		//이메일
		//값가져오기
		mailvalue = $('#mail').val().trim()
		
		//공백
		if (mailvalue.length<1) {
			alert("이메일 입력하세요")
			return false
		}
		
		//정규식- abc1234@w3schools.com / aaa@korea.co.kr
		mailreg = /^[a-zA-Z0-9]+@[a-z0-9]+(\.[a-z]+){1,2}$/;
		
		if (!(mailreg.test(mailvalue))) {
			alert("이메일 형식오류")
			return false
			
		}
		
			
			
		return true;
}





















