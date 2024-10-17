<%@ Page Title="" Language="C#" MasterPageFile="~/clientside.Master" AutoEventWireup="true" CodeBehind="request.aspx.cs" Inherits="complain_managment.request" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Label ID="lbl_itemcode" runat="server" Visible="False"></asp:Label>

     <h4 style="text-align:center; color:green; font-size:40px">Request a Complain</h4>
    <br/>
    <div class="col-md-10 mx-auto">
                <div class="row">
                     <div class="col-md-6">
                        <label style="font-weight:bold">Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txt_name" runat="server" placeholder="Name"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label style="font-weight:bold">Mobile No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txt_mobile" runat="server" placeholder="Mobile No"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                       <br />  
              <div class="row">
                     <div class="col">
                            <label style="font-weight:bold">Items</label>
                             <div class="form-group">
                                 <asp:DropDownList CssClass="form-control" ID="drop_item" runat="server">  
                                     <asp:ListItem Text="-----Select items-----" Value="select" Selected="True"></asp:ListItem>  
                                     <asp:ListItem Text="Computer(101)" Value="101"></asp:ListItem>  
                                     <asp:ListItem Text="Mobile(102)" Value="102"></asp:ListItem>  
                                     <asp:ListItem Text="Laptop(103)" Value="103"></asp:ListItem>
                                     <asp:ListItem Text="Headphone(104)" Value="104"></asp:ListItem>
                                 </asp:DropDownList> 
                            </div>
                       </div>
                          <br />
                  </div>
                          <br />
                 <div class="row">
                       <div class="col-md-6">
                            <label  style="font-weight:bold" >Description</label>
                            <div class="form-group">
                                 <asp:TextBox CssClass="form-control" ID="txt_description" runat="server" TextMode="multiline" placeholder="Description" ></asp:TextBox>
                            </div>
                        </div>
                     <div class="col-md-6">
                            <label  style="font-weight:bold" >Address</label>
                            <div class="form-group">
                                 <asp:TextBox CssClass="form-control" ID="txt_add" runat="server" TextMode="multiline" placeholder="Address" ></asp:TextBox>
                            </div>
                        </div>
                 </div>
                    <br />
             <div class="row">
                 <center>
                     <div class="form-group">
                         <asp:Button class="btn btn-primary btn-block" ID="btn_request" runat="server" Text="Request" OnClick="btn_request_Click" />
                         <br />
                     </div>
                 </center>
             </div>
        </div>
    <br />
</asp:Content>
