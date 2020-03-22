function login(){
	document.getElementById("userName").innerHTML = "";
	if(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(loginForm.userName.value)){
		document.getElementById("loginForm").submit();
	}else{
		document.getElementById("userNameDiv").innerHTML = "<p style='color:red;'>Invalid email address.</p>";
		return (false);
	}
}