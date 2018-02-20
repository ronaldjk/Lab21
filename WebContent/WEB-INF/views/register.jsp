<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome</title>
</head>
<body>


<form action="success" method="get">
<fieldset>
First Name: <input type="text" name="fName" placeholder="Jane"> <br>
Last Name: <input type="text" name="lName" placeholder="Doe"> <br>
Email: <input type="email" name="email" placeholder="janedoe@abc.com"> <br>
Phone Number: <input type="tel" name="phone" placeholder="922-427-8888" pattern="\d{3}[\-]\d{3}[\-]\d{4}"> <br>
Password: <input type="password" name="pass1" placeholder="*****" id="pass1"> <br>
Confirm Password: <input type="password" name="pass2" placeholder="*****" id="pass2" onchange="return validatePasswords()"> <br>
Birthday: <input type="date" name="birthday" placeholder="MM/DD/YYYY"> <br>
Address: <input type= "text" name="address" placeholder="123 Main"> <br>
<input type="radio" name="gender" value="Male">Male <br>
<input type="radio" name="gender" value="Female" checked>Female <br>
Would you like to join our email list? Awesome offers included! <br>
<input type="radio" name="emailList" value="Yes" checked>Yes <br>
<input type="radio" name="emailList" value="No">No <br>
</fieldset>



<input type="checkbox" name="test" value="Small">Small <br>
<input type="checkbox" name="test" value="Medium">Medium <br>
<input type="checkbox" name="test" value="Large">Large <br>
<input type="checkbox" name="test" value="Extra Large">Extra Large <br>

<!-- dropdown example -->
<select name="dropDown">
	<option value="Regular Coffee">Regular Coffee</option>
	<option value="Latte">Latte</option>
	<option value="Cappuccino">Cappuccino</option>
	<option value="Macchiato">Macchiato</option>
	
	
</select>
<input type="submit" value="Submit" onclick="return validatePasswords()">
</form>
<script>
	function validatePasswords() {
		var password1 = document.getElementById("pass1");
		var password2 = document.getElementById("pass2");
		
		if(password1.value != password2.value) {
			alert("Passwords do not match!");
			return false;
		} else {
			return true;
		}
	}
	
	</script>
</body>
</html>