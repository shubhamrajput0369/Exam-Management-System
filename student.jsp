<%@page import="com.zk.constant.ErrorMessages"%>
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
                <div id="logo">
                </div>
            </div>
            <div class="menuBar">
                <ul>
                    <li class="first"><a href="index.jsp">Home</a></li>
                  
                    <li><a href="teacher.jsp"></a></li>
                      <li><a href="attendance.jsp"></a></li>
                      <li><a href="exam.jsp"></a></li>
                        <li><a href="fees.jsp"></a></li>
                    <li><a href="lc.jsp"></a></li>
                      <li><a href="Login.jsp">Logout</a></li>
                   
                </ul>
            </div>
            <div class="container1_inner">
                <div class="container2r">
                    <div class="workarea_inner">
                        <h1>

                            &nbsp;Student Registration Form</h1>
                        <span style="color: red">
                            <%
                                if(ErrorMessages.isStudentRegisterError)
                                {
                                    out.print(ErrorMessages.STUDENT_REGISTER_ERROR);
                                    ErrorMessages.isStudentRegisterError = false;
                                }
                                else
                            %>
                        </span>
                        <div style="padding: 0 15px 20px 15px;">
                            <br />
                        </div>
                        <div>
                            <form action="StudentRegister.jsp" method="post">
                                <table border="1">
                                    <tr>
                                        <td>
                                            Name:
                                        </td>
                                        <td>
                                            <input type="text" name="name" >
                                        </td>
                                        <td>
                                            SeatNo:
                                        </td>
                                        <td>
                                            <input type="text" name="seatno" >
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
                                                        <option id="male">male</option>
                                                        <option id="female">female</option>
                                                    </select>
                                                </td>
                                                 
                                            </tr>
                                            
                                            <tr>
                                                <td>
                                                    Contact NO:
                                                </td>
                                                <td>
                                                    <input type="text" name="contact">
                                                </td>
                                                <td>
                                                    Email Id:
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
                                                    <input type="text" name="address">
                                                </td>
                                                <td>
                                                    Department:
                                                </td>
                                                 <td>
                                                    <select name="dept">
                                                        <option id="Computer">Computer</option>
                                                        <option id="IT">IT</option>
                                                        <option id="E&TC">E&TC</option>
                                                        <option id="Mechanical">Mechanical</option>
                                                        <option id="Civil">Civil</option>
                                                        <option id="Electrical">Electrical</option>
                                                        <option id="Electronic">Electronic</option>
                                                    </select>
                                                </td>
                                            </tr>
                                             
                                            <tr>
                                                
                                                 <td>
                                                    Simister:
                                                </td>
                                                <td>
                                                    
                                                    <select name="sem">
                                                        <option id="I">I</option>
                                                        <option id="II">II</option>
                                                        <option id="III">III</option>
                                                        <option id="IV">IV</option>
                                                        <option id="V">V</option>
                                                        <option id="VI">VI</option>
                                                        <option id="VII">VII</option>
                                                    </select>
                                                </td>
                                                </td>
                                            </tr>
                                             
                                             
                                             
                                             
                                            <tr>
                                                <td colspan="4" align="center">
                                                    <input type="submit" value="register">
                                                </td>
                                            </tr>
                                            </table>
                                            </form>
                                            </div>
                                            </div>
                                            </div>
                                            </div>
                                            <div class="menuBar2">
                                                <ul style="color: #FFF;">
                                                    Copyright (c) To Diploma Students. All rights reserved.   <a style=" color:#FFF; text-decoration:underline;" href="#"> </a>. </ul>
                                            </div>
                                            </div>
                                            </body>
                                            </html>
