document.getElementById("userPass").addEventListener("focusout",
		validatePassword);
document.getElementById("confirm-password").addEventListener("focusout",
		validateConfirmPassword);

flag1 = true;
flag2 = true;

function validatePassword() {
	var var1 = true;
	var pattern = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
	var password = document.getElementById("userPass").value;
	var password_status = pattern.test(password);
	if (password_status == false) {
		document.getElementById("password-err-msg").innerHTML = "Your Password Must contain one digit and one special character and length must be between 6 to 16";
		flag1 = false;
	} else {
		document.getElementById("password-err-msg").innerHTML = "";
		flag1 = true;
	}
}

function validateConfirmPassword() {
	if (document.getElementById("userPass").value != document
			.getElementById("confirm-password").value) {
		document.getElementById("confirm-password-err-msg").innerHTML = "<span style='color:red'>Password does not match</span>";
		flag2 = false;
	} else {
		document.getElementById("confirm-password-err-msg").innerHTML = "";
		flag2 = true;
	}
}

function checkSubmit() {
	console.log("Working");

	if (flag1 && flag2) {
		return true;
	} else {
		return false;
	}
}
