<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="complain_managment.Signup" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                           <h4>Admin Registration</h4>
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
                           <asp:TextBox CssClass="form-control" ID="txt_address" runat="server" placeholder="Address" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <br/>
                    <div class="row">
                      <div class="col-md-6">
                        <label>Mobile No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txt_mobile" runat="server" placeholder="Password"></asp:TextBox>
                        </div>
                     </div>
                        <div class="col-md-6">
                            <label>Admin/Employee(A/S)</label>
                            <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="txt_AandS" runat="server" placeholder="A/S"></asp:TextBox>
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
                           </div>
                        </center>
                     </div>
                     <br />
                <div class="row">
                     <center>
                           <div class="form-group">
                              <asp:LinkButton ID="link_login" runat="server" OnClick="link_login_Click">Already have an account</asp:LinkButton>
                           </div>
                        </center>
                     </div>
                <br/>
               </div>   
            </div>
         </div>
      </div>

    <br / >
</asp:Content>
