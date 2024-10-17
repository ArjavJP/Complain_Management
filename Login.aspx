<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="complain_managment.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="datatables/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="customstylesheet.css" rel="stylesheet" />
    <script src="bootstrap/js/jquery-3.3.1.slim.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
    <br />
    <form id="form1" runat="server">
    <br />   
       <div class="container">
      <div class="row">
         <div class="col-md-5 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="image/user.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Login</h3>
                        </center>
                     </div>
                  </div>

                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>User Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txt_username" runat="server" placeholder="User Name"></asp:TextBox>
                        </div>
                          <br />
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txt_password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                          <br />
                       
                             <div class="row">
                             <center>
                           <div class="form-group">
                               <asp:Button class="btn btn-success btn-block" ID="btn_Login" runat="server" Text="LogIn" OnClick="btn_Login_Click1" />
                              <asp:Button class="btn btn-primary btn-block" ID="btn_registersignup" runat="server" Text="Sign Up" OnClick="btn_registersignup_Click"/>
                               <br />
                           </div>
                        </center>
                     </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
        <asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
        <p>
           
        </p>
    </form>
</body>
</html>
