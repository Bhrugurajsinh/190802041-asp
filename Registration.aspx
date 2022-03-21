<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Visitors an Admin Panel Category Bootstrap Responsive Website Template | Registration :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="rsrc/css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="rsrc/css/style.css" rel='stylesheet' type='text/css' />
<link href="rsrc/css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="rsrc/css/font.css" type="text/css"/>
<link href="rsrc/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="rsrc/js/jquery2.0.3.min.js"></script>
</head>
<body>
  <div class="reg-w3">
<div class="w3layouts-main">
	<h2>Register Now</h2>
		<form id="form1" runat="server">
			<%--<input type="text"  required="">--%>
           <%-- <asp:TextBox ID="TextBox2" runat="server" class="ggg" placeholder="NAME"></asp:TextBox>--%>
			<%--<input type="email"  required="">--%>
             <asp:TextBox ID="TextBox1" runat="server" class="ggg" placeholder="Name"></asp:TextBox>
		   	<%--<input type="text"  required="">--%>
           <%--   <asp:TextBox ID="TextBox4" runat="server" class="ggg" placeholder="PHONE"></asp:TextBox>--%>
			<%--<input type="password"  required="">--%>
               <asp:TextBox ID="TextBox2" runat="server" class="ggg" placeholder="Password"></asp:TextBox>
			<h4><input type="checkbox" />I agree to the Terms of Service and Privacy Policy</h4>
			
				<div class="clearfix"></div>

				<%--<input type="submit" value="submit" name="register">--%>
                <asp:Button ID="Button1" runat="server" OnClick="sub"
                    Text="Button" />
		</form>
		<p>Already Registered.<a href="login.html">Login</a></p>
</div>
</div>
<script src="rsrc/js/bootstrap.js"></script>
<script src="rsrc/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="rsrc/js/scripts.js"></script>
<script src="rsrc/js/jquery.slimscroll.js"></script>
<script src="rsrc/js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="rsrc/js/jquery.scrollTo.js"></script>
</body>
</html>
