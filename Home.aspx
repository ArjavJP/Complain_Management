<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="complain_managment.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
   
    <br />
    <div class="col-md-10 mx-auto">

        
            <asp:Button class="btn btn-primary btn-block" ID="btn_new" runat="server" Text="New Complain" OnClick="btn_new_Click" Enabled="False" Visible="False" />
            <asp:Button class="btn btn-dark btn-block " ID="btn_assigned" runat="server" Text="Assigned Complain" OnClick="btn_assigned_Click" />
            <asp:Button class="btn btn-warning btn-block " ID="btn_complete" runat="server" Text="Complete Complain" OnClick="btn_complete_Click" />
            <br />
            <br/>
            <asp:Label ID="lbl_complain" style = "color:Blue; font-size:40px" runat="server" Text=""></asp:Label>
            <br/>
            <br />
      <script>
          $(document).ready(function () {
              $("#myModal").modal("show");
          });
      </script>
        <asp:LinkButton ID="btn_serviceman" href="#myModal" class="btn  btn-info" data-bs-toggle="modal" runat="server">Update</asp:LinkButton>
        <div id="myModal" class="modal fade" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Assign ServiceMan</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    </div>
                    <div class="modal-body">
                        <asp:Label ID="lblstatus" runat="server" Text="Label" Visible="False"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="txtser" runat="server" placeholder="Service No"></asp:TextBox>
                        <br />
                        <div>
                            <div>
                                <asp:DropDownList CssClass="form-control" ID="drop_service" runat="server">
                                    <asp:ListItem Text="-----Select items-----" Value="select" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="Harshit(1001)" Value="1001"></asp:ListItem>
                                    <asp:ListItem Text="Maanan(1002)" Value="1002"></asp:ListItem>
                                    <asp:ListItem Text="Nikhil(1003)" Value="1003"></asp:ListItem>
                                    <asp:ListItem Text="Dhruv(1004)" Value="1004"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <br />
                        <div class="col-md-4 mx-auto">
                            <asp:Button class="btn btn-success btn-block form-control " ID="btn_service" runat="server" Text="Assign" OnClick="btn_service_Click" />
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <br />
            <br />
            <asp:GridView runat="server" class="mx-auto" ID="admincomplain" HeaderStyle-BackColor="SkyBlue" AutoGenerateColumns="false" AllowPaging="false" AlternatingRowStyle-BackColor="cyan" Width="100%" AutoGenerateSelectButton="True" OnSelectedIndexChanged="admincomplain_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="ServiceNo" HeaderText="Service No" />
                    
                </Columns>
                <Columns>
                    <asp:TemplateField HeaderText="Client Name">
                        <ItemTemplate>
                            <asp:Label ID="lblProductName" runat="server" Text='<%#Eval("ClientName")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <Columns>
                    <asp:TemplateField HeaderText="Mobile No">
                        <ItemTemplate>
                            <asp:Label ID="lblBrandName" runat="server" Text='<%#Eval("MobileNo")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <Columns>
                    <asp:TemplateField HeaderText="Item Name">
                        <ItemTemplate>
                            <asp:Label ID="lblProductCat" runat="server" Text='<%#Eval("ItemName")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <Columns>
                    <asp:TemplateField HeaderText="Descripiton">
                        <ItemTemplate>
                            <asp:Label ID="lblProductinStock" runat="server" Text='<%#Eval("Descripiton")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <Columns>
                    <asp:TemplateField HeaderText="Service Man Name">
                        <ItemTemplate>
                            <asp:Label ID="lblService" runat="server" Text='<%#Eval("ServiceManname")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <Columns>
                    <asp:TemplateField HeaderText="Employee Remark">
                        <ItemTemplate>
                            <asp:Label ID="lblProductinStock" runat="server" Text='<%#Eval("EmployeeRemark")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <Columns>
                    <asp:TemplateField HeaderText="Status ">
                        <ItemTemplate>
                            <asp:Label ID="lblProductinStock" runat="server" Text='<%#Eval("Status")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

                <Columns>
                    <asp:TemplateField HeaderText="Success/Failed">
                        <ItemTemplate>
                            <asp:Label ID="lblProductinStock" runat="server" Text='<%#Eval("Success_Failed")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
       <br/>
</asp:Content>
