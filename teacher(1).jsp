<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>College Information System</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="wrapper">
  <div id="banner">
    <div id="logo"></div>
  </div>
  <div class="menuBar">
    <ul>
      <li class="first"><a href="index.jsp">Home</a></li>
      
      <li><a href="show_supervisors.jsp">Show Supervisors</a></li>
    <li><a href="#"></a></li>
      <li><a href="allocated_supervisors.jsp">Allocated Supervisors</a></li>
        <li><a href="#"></a></li>
      <li><a href="#"></a></li>
        <li><a href="Login.jsp">Logout</a></li>
     
    </ul>
  </div>
  <div class="container1_inner">
    <div class="container2r">
      <div class="workarea_inner">
        <h1>Supervisor Registration Form</h1>
        <div style="padding:0 15px 20px 15px;">
          <div class="servicecolumnzone">
          </div>

          <div>
              <form action="TeacherRegister.jsp" method="post">
          <table>
                            <tr>
                                <td>
                                    Name:
                                </td>
                                <td>
                                    <input type="text" name="name">
                                </td>
                                <td>
                                    Supervior Number:
                                </td>
                                <td>
                                    <input type="text" name="supno">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <tr>
                                        <td>
                                            Gender:
                                        </td>
                                        <td>
                                            <select name="gender">
                                                <option>male</option>
                                                <option>female</option>
                                            </select>
                                        </td>
                                        <td>
                                            Contact No:
                                        </td>
                                        <td>
                                            <input type="text" name="contact">
                                        </td>
                                    </tr>
                                    
                                     
                                    <tr>
                                        <td>
                                            Email:
                                        </td>
                                        <td>
                                            <input type="email" name="email">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Address:
                                        </td>
                                        <td>
                                           <textarea cols="25" rows="4" name="address"></textarea>
                                        </td>
                                    </tr>
                                     
                                   
                                    <tr>
                                        <td colspan="2">
                                            <input type="submit" value="register">
                                        </td>
                                    </tr>
                        </table>
              </form>
          
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="menuBar2">
        <ul style="color:#FFF;">
      Copyright (c) To Diploma Students. All rights reserved.   <a style=" color:#FFF; text-decoration:underline;" href="#"> </a>. </ul>
    </ul>
  </div>
</div>
</body>
</html>
