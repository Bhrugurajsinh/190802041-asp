<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmasterpage.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="_Default" enableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-group">
    <label for="exampleInputEmail1">Name</label>
     <%--<asp:TextBox ID="TextBox1"  runat="server"></asp:TextBox> --%>  
    <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
  </div>

   <%--<asp:Button ID="Button3"runat="server" Text="Update"--%>
    <asp:Button   ID="Button1"  class="btn btn-primary"  runat="server" 
        Text="INSERT" onclick="Button1_Click" />
          </><br /><br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        Width="582px" HorizontalAlign="Center" BackColor="#DEBA84" 
    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
    CellSpacing="2">
        <Columns>
            <asp:TemplateField HeaderText="ID">
                <ItemTemplate>
                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("id") %>'></asp:Literal>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("name") %>'></asp:Literal>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:Button ID="Button3" runat="server" CommandArgument='<%# Eval("id") %>' 
                        onclick="Button3_Click" Text="Delete" Width="105px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Update">
                <ItemTemplate>
                    <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("id") %>' 
                        onclick="Button2_Click" Text="Update" Width="103px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" BackColor="#A55129" 
            Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" HorizontalAlign="Center" 
            VerticalAlign="Middle" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>

</asp:Content>

