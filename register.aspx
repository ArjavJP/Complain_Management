<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="complain_managment.WebForm2" %>

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
    <br />
    <form id="form1" runat="server">
        <div class="container-fluid">
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="70px" src="image/user.png"/>
                       </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Registration</h4>
                            <h4>
                                <asp:Label ID="lbl_code" runat="server" Visible="False"></asp:Label>
                            </h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txt_name" runat="server" placeholder="Name"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>User Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txt_uname" runat="server" placeholder="User Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <br/>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txt_passwword" TextMode="Password" runat="server" placeholder="Password" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txt_address" runat="server" placeholder="Address" TextMode="Multiline"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <br/>
                    <div class="row">
                      <div class="col-md-6">
                        <label>Mobile No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txt_mobile" runat="server" placeholder="Mobile No"></asp:TextBox>
                        </div>
                     </div> 
                        <div class="col-md-6 mx-auto">
                            <label>Admin/Employee</label>
                            <div class="form-check">
                                <asp:RadioButtonList ID="radio_ae" runat="server">  
                                    <asp:ListItem>ADMIN</asp:ListItem>  
                                    <asp:ListItem>EMPLOYEE</asp:ListItem>  
                                </asp:RadioButtonList>  
                                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                        
                     </div>
                  </div>
                <br/>
                  <div class="row">
                     <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-success btn-block" ID="btn_registersignup" runat="server" Text="Sign Up" OnClick="btn_registersignup_Click" />
                               <br />

                               <br />
                               <asp:LinkButton ID="linklogin" runat="server" OnClick="linklogin_Click">Already have an Account</asp:LinkButton>

                           </div>
                        </center>
                     </div>
                   
                <br/>
               </div>   
            </div>
         </div>
      </div>

    </form>
</body>
</html>
