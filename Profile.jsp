<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student profile</title>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="profile.css">
</head>
<body>

 <% 
            
 			String Id=request.getParameter("rollNumber");
            session.setAttribute("Id", Id);
        	String Student_Id="";
            String Class="";
            String Branch="";
            String Roll_No="";
            String Academic_Year ="";
            String Gender =""; 
            String Nationality ="";
            String Blood ="";
            String Name="";
          try{  
        	  
            	
            	Connection con=DriverManager.getConnection(  
            	"jdbc:mysql://remotemysql.com:3306/BafznwrxLQ","BafznwrxLQ","7cQhdL2cMZ");  
            	//here sonoo is database name, root is username and password  
            	Statement stmt=con.createStatement();  
            	ResultSet rs=stmt.executeQuery("select * from  StudentDetails where Student_Id='"+Id+"'");  
            	
            		 while(rs.next())
         			{    
                      
            			 Student_Id=rs.getString("Student_Id");
            			 Class=rs.getString("Class");
            			 Branch=rs.getString("Branch");
            			 Roll_No=rs.getString("Roll_No");
            			 Academic_Year=rs.getString("Academic_Year");
            			 Gender=rs.getString("Gender");
            			 Nationality=rs.getString("Nationality");
         				   Blood=rs.getString("Blood");
         				  Name=rs.getString("Name");
         				  
            	} 
            	     con.close();  
            	}catch(Exception e){
            		out.println(e);
            	}   
              %>
<div class="student-profile py-4">
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
        <div class="card shadow-sm">
          <div class="card-header bg-transparent text-center">
            <img class="profile_img" src="https://image.shutterstock.com/image-vector/user-account-icon-man-vector-600w-1918989431.jpg" alt="student dp">
            <h3><b> <i><%=Name %></i></b></h3>
           
          </div>
          <div class="card-body">
            <p class="mb-0"><strong class="pr-1">Student ID:</strong><%=Student_Id %></p>
            <p class="mb-0"><strong class="pr-1">Class:</strong><%=Class%></p>
            <p class="mb-0"><strong class="pr-1">Branch:</strong><%=Branch%></p>
          </div>
        </div>
      </div>
      <div class="col-lg-8">
        <div class="card shadow-sm">
          <div class="card-header bg-transparent border-0">
            <h3 class="mb-0"><i class="far fa-clone pr-1"></i>General Information</h3>

 

            
          </div>
          <div class="card-body pt-0">
            <table class="table table-bordered">
              <tr>
                <th width="30%">Roll No</th>
                <td width="2%">:</td>
                <td><%=Roll_No%></td>
              </tr>
              <tr>
                <th width="30%">Academic Year    </th>
                <td width="2%">:</td>
                <td><%=Academic_Year%></td>
              </tr>
              <tr>
                <th width="30%">Gender</th>
                <td width="2%">:</td>
                <td><%=Gender%></td>
              </tr>
              <tr>
                <th width="30%">Nationality</th>
                <td width="2%">:</td>
                <td><%=Nationality%></td>
              </tr>
              <tr>
                <th width="30%">blood</th>
                <td width="2%">:</td>
                <td><%= Blood %></td>
              </tr>
            </table><br>
                        <a href="Marks.jsp"><h3>Do you want to see your marks?</h3></a><br>
                        <a href="Attendence.jsp"><h3>Do you want to see your attendance?</h3></a>
          </div>
        </div>
          
          
        </div>
      </div>
    </div>
  </div>
</div>

 

</body>
</html>
