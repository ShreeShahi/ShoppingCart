function formValidation() {

	var uname = document.signup.user_name;
	var passid = document.signup.user_password;
	var uadd = document.signup.address;
	var ucountry = document.signup.location;
	var uzip = document.signup.zip_code;
	var uemail = document.signup.email;
	var contact = document.signup.contact_no;
	
	if (validateUsername(uname, 5, 12)) {
		if (validatePassword(passid, 7, 12)) {
			if (allLetter(uname)) {
				if (alphanumeric(uname)) {
					if (alphanumeric(uadd)) {
						if (countryselect(ucountry)) {
							if (allnumeric(uzip)) {
								if (ValidateEmail(uemail)) {
									if (allnumeric(contact)) {
										
									}
									
								}
							}
						}
					}
				}
			}
		}
	}
	return false;
}

function validateUsername(uname) {
	var error = "";
	var illegalChars = /\W/; // allow letters, numbers, and underscores
	if (uname.value == "") {
		uname.style.background = 'Yellow';
		error = "You didn't enter a username.\n";
		alert(error);
		return false;
	} else if ((uname.value.length < 5) || (uname.value.length > 12)) {
		uname.style.background = 'Yellow';
		error = "The username is the wrong length.\n";
		alert(error);
		return false;
	} else if (illegalChars.test(uname.value)) {
		uname.style.background = 'Yellow';
		error = "The username contains illegal characters.\n";
		alert(error);
		return false;
	} else {
		fld.style.background = 'White';
	}

	return true;
}

function allLetter(uname) {
	var letters = /^[A-Za-z]+$/;
	if (uname.value.match(letters)) {
		return true;
	} else {
		alert('Username must have alphabet characters only');
		return false;
	}
}

function validatePassword(passid) {
		    var error = "";
		    var illegalChars = /[\W_]/; // allow only letters and numbers
		    if (passid.value == "") {
		    	passid.style.background = 'Yellow';
		        error = "You didn't enter a password.\n";
		        alert(error);
		        return false;
		    } else if ((passid.value.length < 7) || (passid.value.length > 15)) {
		        error = "The password is the wrong length. \n";
		        passid.style.background = 'Yellow';
		        alert(error);
		        return false;
		    } else if (illegalChars.test(passid.value)) {
		        error = "The password contains illegal characters.\n";
		        passid.style.background = 'Yellow';
		        alert(error);
		        return false;
		    } else if ( (passid.value.search(/[a-zA-Z]+/)==-1) || (passid.value.search(/[0-9]+/)==-1) ) {
		        error = "The password must contain at least one numeral.\n";
		        passid.style.background = 'Yellow';
		        alert(error);
		        return false;
		    } else {
		    	passid.style.background = 'White';
		    }
		   return true;
}