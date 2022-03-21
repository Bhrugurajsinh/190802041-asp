<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
<title>Visitors an Admin Panel Category Bootstrap Responsive Website Template | Login :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="src/css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="src/css/style.css" rel='stylesheet' type='text/css' />
<link href="src/css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="src/css/font.css" type="text/css"/>
<link href="src/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="src/js/jquery2.0.3.min.js"></script>
<body>
<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Login</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-5">
					<div class="login-wrap p-4 p-md-5">
		      	<div class="icon d-flex align-items-center justify-content-center">
		      		<span class="fa fa-user-o"></span>
		      	</div>
		      	<h3 class="text-center mb-4">Have an account?</h3>
						<form id="form1" runat="server" >
		      		<div class="form-group">
		      			<%--<input type="text" >--%>
                       <asp:TextBox ID="TextBox1" runat="server" class="form-control rounded-left" placeholder="Username"></asp:TextBox>

		      		</div>
	            <div class="form-group d-flex">
	            <%--  <input type="password"  required>--%>
                  <asp:TextBox ID="TextBox2" runat="server"  class="form-control rounded-left" placeholder="Password"></asp:TextBox>
	            </div>
	            <div class="form-group d-md-flex">
	            	<div class="w-50">
	            		<label class="checkbox-wrap checkbox-primary">Remember Me
									 
									  <span class="checkmark"></span>
									</label>
								</div>
								<div class="w-50 text-md-right">
									<a href="#">Forgot Password</a>
								</div>
	            </div>
	            <div class="form-group">
	            	<%--<button type="submit" >Get Started</button>--%>
                      <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" class="btn btn-primary rounded submit p-3 px-5"/>
	            </div>
	         </form>
	        </div>
				</div>
			</div>
		  
		</div>
         
	</section>
<script  type="text/javascript" src="src/js/bootstrap.js"></script>
<script type="text/javascript"  src="src/js/jquery.dcjqaccordion.2.7.js"></script>
<script type="text/javascript" src="src/js/scripts.js"></script>
<script type="text/javascript" src="src/js/jquery.slimscroll.js"></script>
<script type="text/javascript"  src="src/js/jquery.nicescroll.js"></script>
<script type="text/javascript" src="src/js/jquery.scrollTo.js"></script>
</body>
</html>
