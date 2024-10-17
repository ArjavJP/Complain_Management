<%@ Page Title="" Language="C#" MasterPageFile="~/clientside.Master" AutoEventWireup="true" CodeBehind="trackrequest.aspx.cs" Inherits="complain_managment.trackrequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4 style="text-align:center; color:blue; font-size:40px">Track Your Complain</h4>
    <asp:Label ID="lblmobile" runat="server" Text=""></asp:Label>
    <br/>
    <div class="col-md-10 mx-auto">
        <div class="row">
            <div class="col-md-6">
                <label style="font-weight: bold">Enter your mobile no</label>
                <div class="form-group">
                    <asp:TextBox CssClass="form-control" ID="txt_entermobile" runat="server" placeholder="Mobile No"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-5">
                <div class="form-group">
                    <br/>
                    <asp:Button class="btn btn-danger btn-block" ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click" />
                    &nbsp;
                    <asp:Button class="btn btn-warning btn-block" ID="btn_completed" runat="server" Text="Completed Complain" OnClick="btn_completed_Click"/>
                    <br />
                </div>
            </div>

            
        </div>
        <asp:Label ID="lbl_complain" runat="server" style="color:red; font-size:40px" Text=""></asp:Label>
        <br />
        <br />
       <asp:GridView runat="server" ID="clientrequest" AutoGenerateColumns="false" AllowPaging="false" AlternatingRowStyle-BackColor="Linen" HeaderStyle-BackColor="Cyan" Width="100%"  >  
    <Columns>  
        <asp:TemplateField HeaderText="Client Name">  
            <ItemTemplate>  
                <asp:Label ID="lblclientname" runat="server" Text='<%#Eval("ClientName")%>' ></asp:Label>  
            </ItemTemplate>  
        </asp:TemplateField>  
    </Columns>  
    <Columns>  
        <asp:TemplateField HeaderText="Mobile No">  
            <ItemTemplate>  
                <asp:Label ID="lblmobileno" runat="server" ToolTip="Name of Product" Text='<%#Eval("MobileNo")%>'></asp:Label>  
            </ItemTemplate>  
        </asp:TemplateField>  
    </Columns>  
    <Columns>  
        <asp:TemplateField HeaderText="Item">  
            <ItemTemplate>  
                <asp:Label ID="lblitemcode" runat="server" ToolTip="Brand of Product" Text='<%#Eval("ItemCode")%>'></asp:Label>  
            </ItemTemplate>  
        </asp:TemplateField>  
    </Columns>  
    <Columns>  
        <asp:TemplateField HeaderText="Description">  
            <ItemTemplate>  
                <asp:Label ID="lbldis" runat="server" ToolTip="Category of Product" Text='<%#Eval("Descripiton")%>'></asp:Label>  
            </ItemTemplate>  
        </asp:TemplateField>  
    </Columns>  
    <Columns>  
        <asp:TemplateField HeaderText="Status">  
            <ItemTemplate>  
                <asp:Label ID="lblstatus" runat="server" ToolTip="Quantity available in Stock" Text='<%#Eval("Status")%>'></asp:Label>  
            </ItemTemplate>  
        </asp:TemplateField>  
    </Columns>
    <Columns>  
        <asp:TemplateField HeaderText="Success">  
            <ItemTemplate>  
                <asp:Label ID="lblsuceess_fail" runat="server" ToolTip="Quantity available in Stock" Text='<%#Eval("Success_Failed")%>'></asp:Label>  
            </ItemTemplate>  
        </asp:TemplateField>  
    </Columns>
</asp:GridView> 
        
    </div>
  <br />
</asp:Content>
