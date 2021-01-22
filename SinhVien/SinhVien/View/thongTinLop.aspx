<%@ Page Title="" Language="C#" MasterPageFile="~/QLSV.Master" AutoEventWireup="true" CodeBehind="thongTinLop.aspx.cs" Inherits="SinhVien.View.thongTinLop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script type="text/javascript" src="js/JScript.js" ></script>

     <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="17pt" 
        ForeColor="#0066FF" Text="Thông Tin Lớp Học"></asp:Label>
    <br />
    <br />
   
    <asp:GridView ID="grvLop" runat="server" AutoGenerateColumns="False" DataKeyNames="malop" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="malop" HeaderText="malop" ReadOnly="True" SortExpression="malop" />
            <asp:BoundField DataField="tenlop" HeaderText="tenlop" SortExpression="tenlop" />
            <asp:BoundField DataField="makhoahoc" HeaderText="makhoahoc" SortExpression="makhoahoc" />
            <asp:BoundField DataField="manganh" HeaderText="manganh" SortExpression="manganh" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
   
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DM_QLSVConnectionString %>" DeleteCommand="DELETE FROM [lop] WHERE [malop] = @original_malop AND (([tenlop] = @original_tenlop) OR ([tenlop] IS NULL AND @original_tenlop IS NULL)) AND (([makhoahoc] = @original_makhoahoc) OR ([makhoahoc] IS NULL AND @original_makhoahoc IS NULL)) AND (([manganh] = @original_manganh) OR ([manganh] IS NULL AND @original_manganh IS NULL))" InsertCommand="INSERT INTO [lop] ([malop], [tenlop], [makhoahoc], [manganh]) VALUES (@malop, @tenlop, @makhoahoc, @manganh)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [lop]" UpdateCommand="UPDATE [lop] SET [tenlop] = @tenlop, [makhoahoc] = @makhoahoc, [manganh] = @manganh WHERE [malop] = @original_malop AND (([tenlop] = @original_tenlop) OR ([tenlop] IS NULL AND @original_tenlop IS NULL)) AND (([makhoahoc] = @original_makhoahoc) OR ([makhoahoc] IS NULL AND @original_makhoahoc IS NULL)) AND (([manganh] = @original_manganh) OR ([manganh] IS NULL AND @original_manganh IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_malop" Type="String" />
            <asp:Parameter Name="original_tenlop" Type="String" />
            <asp:Parameter Name="original_makhoahoc" Type="String" />
            <asp:Parameter Name="original_manganh" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="malop" Type="String" />
            <asp:Parameter Name="tenlop" Type="String" />
            <asp:Parameter Name="makhoahoc" Type="String" />
            <asp:Parameter Name="manganh" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="tenlop" Type="String" />
            <asp:Parameter Name="makhoahoc" Type="String" />
            <asp:Parameter Name="manganh" Type="String" />
            <asp:Parameter Name="original_malop" Type="String" />
            <asp:Parameter Name="original_tenlop" Type="String" />
            <asp:Parameter Name="original_makhoahoc" Type="String" />
            <asp:Parameter Name="original_manganh" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
   
    
    <br />    
    <br />
    <center>
    <table>
        <tr>
            <td>Mã Lớp</td>
            <td><asp:TextBox ID="txtmalop" runat="server" Width="171px" Height="25px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Tên Lớp </td>
            <td > <asp:TextBox ID="txttenlop" runat="server" Width="171px" Height="25px"></asp:TextBox></td>
        </tr>
        <tr>
            <td >Mã Khóa Học</td>
            <td >
                <asp:DropDownList ID="dr_khoahoc" runat="server" Width="171px" Height="25px">

                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td >Mã Ngành</td>
            <td>
                <asp:DropDownList ID="dr_nganh" runat="server" Width="171px" Height="25px">

                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="padding-right: 10px; color:red; text-align: center" colspan="2">
                <asp:Label ID="lb_thongbao" runat="server" />
              </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnthem" runat="server" Text="Thêm" Width="78px" OnClick="btn_them" />&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" Text="Làm Mới" Width="78px" OnClick="btn_lammoi"/>

            </td>
        </tr>
    </table>
        </center>

</asp:Content>
