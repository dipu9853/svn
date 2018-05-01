/*Coding by Manoj Mohapatra(begins)
Date:19-7-2017*/

//Validates an empty user input in a control 
function IsEmptyUserInput(objControl) 
{
    if (objControl.value.trim().length > 0)
        return false;

    return true;
}

//Confirms the genunity of a name
function isValidName(objControl) 
{
    var name = objControl.value.trim();
    var nameUsr =/^[a-zA-Z ]*$/;  
    if (!IsEmptyUserInput(objControl)) {
        if (name.match(nameUsr)) 
            return true;
    }
    return false;	
}

//Confirms validity of an email
function isValidEmailID(objControl) 
{
    var emailId = objControl.value.trim();
	var emailFormat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if (!IsEmptyUserInput(objControl)) {
		if (emailId.match(emailFormat))
			return true;
	}
	return false;
}

//Confirms the genunity of a mobileno
function isValidMobileNo(objControl) 
{
    var mobileNo = objControl.value.trim();
    var mobileNoUsr = /^[0-9]{10}$/;
    if (!IsEmptyUserInput(objControl)) {
        if (mobileNo.match( mobileNoUsr)) {
            return true;
        }
    }
    return false;
}

//confirm the genunity of subject
function isValidsubject(objControl) 
{
    var sub = objControl.value.trim();
    var subUsr = /^[a-zA-Z0-9._@-]+$/;
    if (!IsEmptyUserInput(objControl)) {
        if (sub.match(subUsr)) {
            return true;
        }

    }
    return false;
}

//confirm the genunity of comment
function isValidComment(objControl) 
{
    var cmnt = objControl.value.trim();
    var cmntUsr = (/^\s+|\s+$/g,''); 
    if (!IsEmptyUserInput(objControl)) {
        if (cmnt.match(cmntUsr)) {
            return true;
        }
    }
    return false;
}

//Confirms the genunity of a password
function isValidPassword(objControl) {
    var password = objControl.value.trim();
    var pass = /^(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,16}$/;  
	if (!IsEmptyUserInput(objControl)) {
        if (password.match(pass)) 
            return true;
        }
    return false;
}

//Confirms the genunity of a pincode
function isValidPinCode(objControl) 
{
    var pin = objControl.value.trim();
    var pinNo = /^[0-9]{6}$/;
    if (!IsEmptyUserInput(objControl)) {
        if (pin.match(pinNo)) {
            return true;
        }
    }
    return false;
}

//Confirm the genunity of an Userid 
function isValidUid(objControl)
{
	var userId = objControl.value.trim();
	var emailId = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	var mobNo = /^[0-9]{10}$/;
	if (!IsEmptyUserInput(objControl)) {
		if(userId.match(emailId))
			return true;
		else if(userId.match(mobNo))
			return true;
	}
	return false;
}

//confirm the genunity of an OTP
function isValidOtp(objControl) 
{
    var otp = objControl.value.trim();
    var key = /^[0-9]{4}$/;
    if (!IsEmptyUserInput(objControl)) {
        if (otp.match(key)) {
            return true;
        }
    }
    return false;
}
//Confirm the validation for address
function isValidAddress(objControl)
{
	var add = objControl.value.trim();
	if (!IsEmptyUserInput(objControl)) {
		if(add.length<=50){
			return true;
		}
	}
	return false;
}
//Confirm the validation for date
function isValidDate(objControl)
{
	var daTe = objControl.value.trim();
	if (!IsEmptyUserInput(objControl)) {
			return true;
	}
	return false;
}

//Confirm the validation for subjects dropdown in apply here form
function isValidSubject()
{
    
             var c = document.getElementsByTagName("input");
             for (var i = 0; i<c.length; i++){
                 if (c[i].type == "checkbox")
                 {
                     if (c[i].checked) {
                     return true;
                }
                }
             }    
             return false;
}
//Coding by Manoj Mohapatra(end)
