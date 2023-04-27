const $checkAutoLogin = $("input[name='auto-login']");
const $id = $("input#id");
const $password = $("input#password");
const $checkSaveId = $("input[name='save-id']");

$checkAutoLogin.on("change", function(){
    let isChecked = $(this).prop("checked");
});

$checkSaveId.on("change", function(){
    let itsChecked = $(this).prop("checked");
});

let saveId = "${saveId}";
if(saveId){
	$("input[name='save-id']").prop("checked", true);
	//checkedSaveId();
}


let autoLogin = "${autoLogin}";
if(autoLogin){
	$("input[name='auto-login']").prop("checked", true);
	//checkedAutoLogin();
}


function send(){
    if(!$id.val()){
        //showWarnModal("아이디를 입력해주세요!");
        //showHelp($id, "error.png");
        //$id.next().fadeIn(500);
		alert("아이디를 입력해주세요!");
		$id.focus();
        return;
    }
    if(!$password.val()){
        //showWarnModal("비밀번호를 입력해주세요!");
        //showHelp($password, "error.png");
        //$password.next().fadeIn(500);
		alert("비밀번호를 입력해주세요!")
		$password.focus();
        return;
    }
	/*비밀번호 암호화*/
	//$password.val(btoa($password.val()));

    document.login.submit();
    
}







