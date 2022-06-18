<!DOCTYPE html>    
<html>    
<head>    
    <title>register Form</title>     
    <style type="text/css">
    body  
{  
    margin: 0;  
    padding: 0;  
    background-color:#7979E5;  
    font-family: 'Arial';  
}  
.register{  
        width: 382px;  
        overflow: hidden;  
        margin: auto;  
        margin: 20 0 0 450px;  
        padding: 80px;  
        background: #A6E579;  
        border-radius: 15px ;  
          
}  
h2{  
    text-align: center;  
    color: #A6E579;  
    padding: 20px;  
}  
label{  
    color: #2A314A;  
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
    <h2>Jasper Users Regsitration page</h2><br>    
    <div class="register">    
    <form id="register" method="post" action="/set_user">    
        <label><b>User Name     
        </b>    
        </label>   
          <br><br> 
        <input type="text" name="name" id="name" placeholder="Username">    
        <br><br>    
        <label><b>Password     
        </b>    
        </label>    
          <br><br>
        <input type="Password" name="Pass1" id="Pass1" placeholder="Password1">    
        <br><br>    
        <label><b>Retype - Password     
        </b>    
        </label>   
          <br><br> 
        <input type="Password" name="Pass2" id="Pass2" placeholder="Password2">   
        <br><br>    
             <input type="submit" id="register" value="Submit" >
    </form>     
</div>    
</body>    
</html>     