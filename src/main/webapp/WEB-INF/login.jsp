<!DOCTYPE html>    
<html>    
<head>    
    <title>Login Form</title>     
    <style type="text/css">
    body  
{  
    margin: 0;  
    padding: 0;  
    background-color:#6abadeba;  
    font-family: 'Arial';  
}  
.login{  
        width: 382px;  
        overflow: hidden;  
        margin: auto;  
        margin: 20 0 0 450px;  
        padding: 80px;  
        background: #23463f;  
        border-radius: 15px ;  
          
}  
h2{  
    text-align: center;  
    color: #277582;  
    padding: 20px;  
}  
label{  
    color: #08ffd1;  
    font-size: 17px;  
}  
#Uname{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
}  
#Pass{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
      
}  
#log{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 17px;  
    padding-left: 7px;  
    color: blue;  
  
  
}  
span{  
    color: white;  
    font-size: 17px;  
}  
a{  
    float: right;  
    background-color: grey;  
}  
    
    
    
    </style>  
</head>    
<body>    
    <h2>Jasper Products Login</h2><br>    
    <div class="login">    
    <form id="login" method="post" action="/login">    
        <label><b>User Name     
        </b>    
        </label>    
        <input type="text" name="name" id="name" placeholder="Username">    
        <br><br>    
        <label><b>Password     
        </b>    
        </label>    
        <input type="Password" name="Pass" id="Pass" placeholder="Password">    
        <br><br>    
        <input type="submit" id="log" value="Login">       
        <br><br>    
        <input type="checkbox" id="check">    
        <span>Remember me</span>    
        <br><br>    
             <input type="button" id="register"  onclick="gotoRegister()" value="register" >
    </form>     
</div>    
<script type="text/javascript">
	function gotoRegister(){
		window.location.href = "/register";
	}
</script>
</body>    
</html>     