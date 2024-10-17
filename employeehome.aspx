<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="employeehome.aspx.cs" Inherits="complain_managment.employeehome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
     <asp:Label ID="lblcode" Text="" Visible="False" runat="server" />
    <div class="col-md-10 mx-auto">
            <asp:Button class="btn btn-primary btn-block " ID="btn_newe" runat="server" Text="New Complain" OnClick="btn_newe_Click" />
        <asp:Button class="btn btn-warning btn-block " ID="btn_compe" runat="server" Text="Completed Complain" OnClick="btn_compe_Click"/>
            <br />
            <br/>
          <asp:Label ID="lbl_complain2" style = "color:Blue; font-size:40px" runat="server" Text=""></asp:Label>
            <br/>
           <br/>
          
      <script>
          $(document).ready(function () {
              $("#myModal").modal("show");
          });
      </script>
        <asp:LinkButton ID="btn_up" href="#myModal" class="btn  btn-info" data-bs-toggle="modal" runat="server">Update</asp:LinkButton>
        <div id="myModal" class="modal fade" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Update Complain</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    </div>
                    <div class="modal-body">
                        <asp:Label ID="lblstatus" runat="server" Text="Label" Visible="False"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="txtup" runat="server" placeholder="Service No" Enabled="false"></asp:TextBox>
                        <br />
                        <asp:TextBox CssClass="form-control" ID="txtremark" runat="server" placeholder="Employee Remark"></asp:TextBox>
                        <br />
                       <div class="col-md-4">
                            <div class="form-check">
                                <asp:RadioButtonList ID="radio_com" runat="server">  
                                    <asp:ListItem>Success</asp:ListItem>  
                                    <asp:ListItem>Failed</asp:ListItem>  
                                </asp:RadioButtonList>  
                            </div>
                        </div>
                         <br />
                        <div class="col-md-4 mx-auto">
                            <asp:Button class="btn btn-primary btn-block form-control " ID="btn_employeeupdate" runat="server" Text="Update"   OnClick="btn_employeeupdate_Click"/>
                        </div>
                    </div>

                </div>
            </div>
        </div>
            <br />
            <br />
            <asp:GridView runat="server" class="mx-auto" ID="employee" HeaderStyle-BackColor="SkyBlue" AutoGenerateColumns="false" AllowPaging="false" AlternatingRowStyle-BackColor="cyan" Width="100%" AutoGenerateSelectButton="True" OnSelectedIndexChanged="employee_SelectedIndexChanged" >
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
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("ServiceManname")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <Columns>
                    <asp:TemplateField HeaderText="Employee Remark">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("EmployeeRemark")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <Columns>
                    <asp:TemplateField HeaderText="Status ">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("Status")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

                <Columns>
                    <asp:TemplateField HeaderText="Success/Failed">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Success_Failed")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
       <br/>
</asp:Content>
