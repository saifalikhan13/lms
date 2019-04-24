<?php session_start();
?>
<!DOCTYPE html>
<html lang = "en-IN">
	<head>
		<meta charset = "utf-8">
		<meta name = " viewport " content = " width = device-width, initial-scale = 1 ">
		<title> Index </title>
        <link rel = "stylesheet" href = "css/index_css.css">
		<link rel = "stylesheet" href = "css/header_footer.css">
		<style>
		#signup_btn:hover{background-color: #246f14;}
		#login_btn:hover{background-color: #2c3e50;}
		*{zoom: 100%;}
		</style>
		<script>
		function validateForm(){	
				if(document.std_form.pass.value != document.std_form.cpass.value){
					alert("Password & Confirm Password do not match!!!");
				}else{
					if(isNaN(document.std_form.fname.value) == false){
						alert('No Number in first name please');			//for first name
						bool = false;
					} else {
						//bool = true;
							if(isNaN(document.std_form.lname.value) == false){		//for last name
								alert('No Number in last name please');
								bool = false;
							} else{
									bool = true;
								/*	if(isNaN(document.std_form.cardid.value) == false){	//for card_id
									alert('wrong id format');
									bool = false;
									} else{
										bool = true;
									
								
									} */
							}							
					}	
				}
				
			return bool;
			}
		</script> 
    </head>
	<body bgcolor = "#D6B572 ">
	 <!-- php validation -->
		<div id = "header">
			<div id = "lms_heading">
			<?php require 'php/header_code.php';?>
			</div>
			<span style = "background: #ffff00; color: #ff0000; float: right;" ><?php if(isset($_SESSION['error'])){echo $_SESSION['error']; unset($_SESSION['error']);} ?> </span>
			
			<div id = "div_top_right_inside">

				<form class = "login_frm" method = "POST" name = "login_form" action = "login.php"> <!--<?php //echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>-->
				<input title = "Enter ur username" name = "user" class = "login_style" type = "text" placeholder = "Username " required  /> 
				<input title = "Enter ur password" name = "pass" class = "login_style" type = "password" placeholder = "Password " required  />
				<input id = "login_btn" name = "login_btn" type = "submit" value = "Login"><br>
				<!-- <a href = "php/forgot_pass.php" id = "forgot_pass"> Forgot Password? </a> -->
			
				</form>
			</div>
		 
		</div>
		<h2 class = "anytime"> Anytime, Anywhere...</h2> 
		
		<div id = "lms_pic">
			
		</div>
		
		<div id = "div_right" >
			<br/><h1 id = "div_right_heading"> Sign Up Here !!!<h1>
			<h4 style="background: #ffff00; color: #ff0000"><?php if(isset($_SESSION[''])){ echo $_SESSION['']; unset($_SESSION['']);} ?></h4> 
			<form action = "register.php" class = "std_sign_up_frm" method = "POST" name = "std_form" onsubmit="return validateForm();">
				
				<input type = "text" title = "Alphabets & whitespaces only." class = "label_style " name = "fname" placeholder = "Firstname"  required />
				<span class="error"> <?php //echo $fnameErr;?></span>
				<input type = "text" title = "Middle name to be inserted here too." class = "label_style" name = "lname" placeholder = "Lastname" required />
				<span class="error"> <?php //echo $lnameErr;?></span><br/>
				<input type = "text" title = "Valid student/faculty ID." class = "label_style" name = "cardid" placeholder = "Card-ID" required/> 
				<span class="error"> <?php //echo $cardidErr;?></span>
				<input type = "email" title = "Full email please." class = "label_style" name = "email" placeholder = "E-mail "  required/>
				<span class="error"> <?php //echo $emailErr;?></span><br/>
				<input type = "number" title = "Full email please." class = "label_style" name = "contact" placeholder = "Contact "  required/>
				<input type = "text" title = "Alphanum & underscore only." class = "label_style" name = "username" placeholder = "Username " required/>
				<span class="error"> <?php //echo $usernameErr;?></span>
				<input type = "password" title = "Between 6 to 14 characters." class = "label_style" name = "pass" placeholder = "Password "  required/>
				<span class="error"> <?php //echo $passErr;?> </span>
				<input type = "password" title = "Confirm the pass above." class = "label_style" name = "cpass" placeholder = "Confirm Password " required/>
				<span class="error"> <?php //echo $cpassErr;?> </span><br/>
				<label> <em class = "sub_heading" > Date Of Birth : </em> </label><br/>
				<input type = "date" title = "Valid official DOB please." id = "date_style" name = "dob"  required/> <br/>
				<label > <em class = "sub_heading"> Gender : </em> </label><br/>
				<input type = "radio" title = "I am a female." class = "radio_btn" name = "gender" value = "female"  /><em class = "radio_heading">Female &nbsp;&nbsp;</em>
				<input type = "radio" title = "I am a male." class = "radio_btn" name = "gender" value = "male" checked = "checked" /><em class = "radio_heading">Male &nbsp;&nbsp;</em>
				<input type = "radio" title = "Other." class = "radio_btn" name = "gender" value = "other"  /><em class = "radio_heading">Other </em> 
				<span class="error"> <?php //echo $genderErr;?></span><br/>
				
				
				<input title = "Click to Sign Up" id = "signup_btn" name = "register_btn" type = "submit" value = "Register Your Account" onclick = "" />
				<table class = "table_line" border = "0" width = "390" height = "18px" cellspacing = "0" cellpadding = "0">
				<tr>
					<td width = "80"><hr> </hr></td>
					<td width = "230"> <pre>Already have an account? Log In Above!</pre></td>
					<td width = "80"><hr> </hr></td>
				</tr>
				</table>
				
			</form>
		</div>
		
		
		
		<div id = "footer">
			<!--<br><center> LMS © 2017 - Amrapali Group Of Institutes </center>-->
			<?php require 'php/footer_code.php'; ?>
		</div>
		
	</body>
</html>