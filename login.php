<?php session_start();
require 'dbconfig/config.php';

			function check_input($data) {
				$data = trim($data);
				$data = stripslashes($data);
				$data = htmlspecialchars($data);
				return $data;
			}

if(isset($_POST['login_btn'])) {

	$username = check_input($_POST['user']);
	$password = $_POST['pass'];
	$sql = "SELECT * FROM teacher WHERE username = '$username' AND password = '$password' AND status = 'Activated' ";
	$result = $conn-> query($sql);
	if($result->num_rows == 1) {
		$row = $result->fetch_assoc();
		$_SESSION['t_name'] = $row['first_name']." ".$row['last_name'];
		$_SESSION['t_username'] = $row['username'];
		$_SESSION['t_pic'] = $row['thumbnail'];
		$_SESSION['t_id'] = $row['teacher_id'];

		$conn->query("INSERT INTO user_log (teacher_id,login_date_time,authority) VALUES('".$_SESSION['t_id']."',now(),'teacher')");
		header('location:teacher/1_teacher_dashboard.php');
	}
	else{
		$sql = "SELECT * FROM student WHERE username = '$username' AND password = '$password' AND status = 'Activated' ";
		$result = $conn-> query($sql);
		if($result->num_rows == 1) {
			$row = $result->fetch_assoc();
			$_SESSION['s_name'] = $row['first_name']." ".$row['last_name'];
			$_SESSION['s_username'] = $row['username'];
			$_SESSION['s_pic'] = $row['thumbnail'];
			$_SESSION['s_id'] = $row['std_id'];
			$_SESSION['c_id'] = $row['class_id'];
			$conn->query("INSERT INTO user_log (std_id,login_date_time,authority) VALUES('".$_SESSION['s_id']."',now(),'student')");
			header('location:student/1_std_dashboard.php');
		}else {
			$_SESSION['error'] = "Invalid Credentials";
			header('location:index.php');
		}
	}
	
}
?>
