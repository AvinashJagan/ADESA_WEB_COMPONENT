function validate() {
	var email = document.getElementById("email").value;
	if (name == '') {
		alert('Please enter a valid name.');
		return false;
	} else {
		return true;
	}
	
	var pass=document.getElementById("email").value;
	if (pass.length <=3 ) {
		alert('Please re-enter password.');
		return false;
	} else {
		return true;
	}
}