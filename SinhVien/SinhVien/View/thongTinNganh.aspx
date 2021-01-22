<%@ Page Title="" Language="C#" MasterPageFile="~/QLSV.Master" AutoEventWireup="true" CodeBehind="thongTinNganh.aspx.cs" Inherits="SinhVien.View.thongTinNganh" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript" src="js/JScript.js" ></script>

    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="16pt" 
        ForeColor="#33CC33" Text="Thông Tin Ngành Học"></asp:Label>
    <br /><br />
    <asp:GridView ID="grvNganh" runat="server" AutoGenerateColumns="False" DataKeyNames="manganh" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="manganh" HeaderText="manganh" ReadOnly="True" SortExpression="manganh" />
            <asp:BoundField DataField="tennganh" HeaderText="tennganh" SortExpression="tennganh" />
            <asp:BoundField DataField="makhoa" HeaderText="makhoa" SortExpression="makhoa" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DM_QLSVConnectionString %>" DeleteCommand="DELETE FROM [nganh] WHERE [manganh] = @original_manganh AND (([tennganh] = @original_tennganh) OR ([tennganh] IS NULL AND @original_tennganh IS NULL)) AND (([makhoa] = @original_makhoa) OR ([makhoa] IS NULL AND @original_makhoa IS NULL))" InsertCommand="INSERT INTO [nganh] ([manganh], [tennganh], [makhoa]) VALUES (@manganh, @tennganh, @makhoa)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [nganh]" UpdateCommand="UPDATE [nganh] SET [tennganh] = @tennganh, [makhoa] = @makhoa WHERE [manganh] = @original_manganh AND (([tennganh] = @original_tennganh) OR ([tennganh] IS NULL AND @original_tennganh IS NULL)) AND (([makhoa] = @original_makhoa) OR ([makhoa] IS NULL AND @original_makhoa IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_manganh" Type="String" />
            <asp:Parameter Name="original_tennganh" Type="String" />
            <asp:Parameter Name="original_makhoa" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="manganh" Type="String" />
            <asp:Parameter Name="tennganh" Type="String" />
            <asp:Parameter Name="makhoa" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="tennganh" Type="String" />
            <asp:Parameter Name="makhoa" Type="String" />
            <asp:Parameter Name="original_manganh" Type="String" />
            <asp:Parameter Name="original_tennganh" Type="String" />
            <asp:Parameter Name="original_makhoa" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />    
        <br />

    <center>
        <table>
            <tr>
                <td>Mã ngành</td>
                <td><asp:TextBox ID="txtmanganh" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Tên ngành</td>
                <td><asp:TextBox ID="txttennganh" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Mã khoa</td>
                <td><asp:DropDownList ID="dr_khoa" runat="server"></asp:DropDownList></td>
            </tr>

        </table>
    </center>
    <table>
        <tr>
            <td><asp:Button ID="Button1" runat="server" Text="Them" OnClick="Button1_Click" /></td>
            <td><asp:Button ID="Button2" runat="server" Text="lam moi" OnClick="Button2_Click" /></td>
        </tr>
    </table>
    <td style="padding-right: 10px; color:red; text-align: center" colspan="2">
                <asp:Label ID="lb_thongbao" runat="server" />
              </td>
    &nbsp;&nbsp;&nbsp;
    </asp:Content>
    
