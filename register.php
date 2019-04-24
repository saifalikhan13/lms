<?php session_start();
require 'dbconfig/config.php';
ob_start();
		
			if(isset($_POST['register_btn'])){
	
				function check_input($data) {
					$data = trim($data);
					$data = stripslashes($data);
					$data = htmlspecialchars($data);
					return $data;
				}
					
					$fname = check_input($_POST['fname']);
					$lname = check_input($_POST['lname']);
					$cardid = check_input($_POST['cardid']);
					$email = check_input($_POST['email']);
					$username = check_input($_POST['username']);
					$contact = check_input($_POST['contact']);
					$pass = $_POST['pass'];
					$cpass = $_POST['cpass'];
					$dob = $_POST['dob'];
					$gender = $_POST['gender'];
				
						if(is_numeric($cardid)) {
							$result= $conn->query("SELECT * FROM student WHERE username = '$username' ");
							if($result->num_rows >= 1){
								$_SESSION['error'] = "Username already taken";
								header('location:index.php');
								exit;
							}
							$result_4= $conn->query("SELECT * FROM student WHERE first_name = '$fname' AND last_name = '$lname' AND card_id = '$cardid'  ");
							if($result_4->num_rows == 0){
								header('location:php/signup_unsuccessful.php');
								exit;
							}else{
								
									$row_4 = $result_4->fetch_assoc();
									$std_id = $row_4['std_id'];
									$already = $row_4['status'];
									if($already == "Activated"){
										$_SESSION['error'] = "Ur a/c is Already Activated";
										header('location:index.php');
										exit;
									}
									$result_2 = $conn->query("UPDATE student SET first_name = '$fname', last_name = '$lname',email = '$email', username = '$username', password = '$pass',dob = '$dob', contact = '$contact', gender = '$gender',status = 'Activated' WHERE std_id = '$std_id'	");
									if($result_2){
										header('location:php/signup_successful.php');
										exit;
									}else{
										
										header('location:php/signup_unsuccessf.php');
										exit;
									}
									
								
							}	

						/*	$sql = "SELECT * FROM student WHERE username = '$username'";
							$result = $conn-> query($sql);
							if($result->num_rows > 0){//echo ' <script type = "text/javascript"> alert("Username already taken !!!");</script>';
							}	
							else {
								$sql = " INSERT INTO student (first_name,last_name,gender,email,dob,username,password) values ('$fname','$lname','$gender','$email','$dob','$username','$pass') " ;
								
								if($conn-> query($sql) == TRUE) {
									$_SESSION['msg'] = "Registered !!! Log-In to continue...";
									$page = 'php/signup_successful.php';
								} 
								else {
									$_SESSION['msg'] = "Error.... Try Again!!!";
									$page = 'signup_unsuccessful.php';
								}
							}	*/
						}	
						else {

							$result= $conn->query("SELECT * FROM teacher WHERE username = '$username' ");
							if($result->num_rows >= 1){
								$_SESSION['error'] = "Username already taken";
								header('location:index.php');
								exit;
							}
							$result_4= $conn->query("SELECT * FROM teacher WHERE first_name = '$fname' AND last_name = '$lname' AND card_id = '$cardid'  ");
							if($result_4->num_rows == 0){
								header('location:php/signup_unsuccessful.php');
								exit;
							}else{
								
									$row_4 = $result_4->fetch_assoc();
									$teac_id = $row_4['teacher_id'];
									$already = $row_4['status'];
									if($already == "Activated"){
										$_SESSION['error'] = "Ur a/c is Already Activated";
										header('location:index.php');
										exit;
									}
									$result_2 = $conn->query("UPDATE teacher SET first_name = '$fname', last_name = '$lname',email = '$email', username = '$username', password = '$pass',dob = '$dob', contact = '$contact', gender = '$gender',status = 'Activated' WHERE teacher_id = '$teac_id'	");
									if($result_2){
										header('location:php/signup_successful.php');
										exit;
									}else{
										
										header('location:php/signup_unsuccessf.php');
										exit;
									}
									
								
							}	

						}
				
			}
		

		