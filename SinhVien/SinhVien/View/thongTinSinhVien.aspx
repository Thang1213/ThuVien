<%@ Page Title="" Language="C#" MasterPageFile="~/QLSV.Master" AutoEventWireup="true" CodeBehind="thongTinSinhVien.aspx.cs" Inherits="SinhVien.View.thongTinSinhVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <script type="text/javascript" src="js/JScript.js" ></script>

    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="16pt" 
        ForeColor="#33CC33" Text="Thông Tin Sinh Viên"></asp:Label>
    <br /><br />
    <center>
    
        <asp:GridView ID="grvSinhVien" runat="server" AutoGenerateColumns="False" DataKeyNames="masinhvien" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="masinhvien" HeaderText="masinhvien" ReadOnly="True" SortExpression="masinhvien" />
                <asp:BoundField DataField="hovaten" HeaderText="hovaten" SortExpression="hovaten" />
                <asp:BoundField DataField="gioitinh" HeaderText="gioitinh" SortExpression="gioitinh" />
                <asp:BoundField DataField="sdtgiadinh" HeaderText="sdtgiadinh" SortExpression="sdtgiadinh" />
                <asp:BoundField DataField="matinhtrang" HeaderText="matinhtrang" SortExpression="matinhtrang" />
                <asp:BoundField DataField="malop" HeaderText="malop" SortExpression="malop" />
                <asp:BoundField DataField="ngaysinh" HeaderText="ngaysinh" SortExpression="ngaysinh" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DM_QLSVConnectionString %>" DeleteCommand="DELETE FROM [sinhvien] WHERE [masinhvien] = @original_masinhvien AND (([hovaten] = @original_hovaten) OR ([hovaten] IS NULL AND @original_hovaten IS NULL)) AND (([gioitinh] = @original_gioitinh) OR ([gioitinh] IS NULL AND @original_gioitinh IS NULL)) AND (([sdtgiadinh] = @original_sdtgiadinh) OR ([sdtgiadinh] IS NULL AND @original_sdtgiadinh IS NULL)) AND (([matinhtrang] = @original_matinhtrang) OR ([matinhtrang] IS NULL AND @original_matinhtrang IS NULL)) AND (([malop] = @original_malop) OR ([malop] IS NULL AND @original_malop IS NULL)) AND (([ngaysinh] = @original_ngaysinh) OR ([ngaysinh] IS NULL AND @original_ngaysinh IS NULL))" InsertCommand="INSERT INTO [sinhvien] ([masinhvien], [hovaten], [gioitinh], [sdtgiadinh], [matinhtrang], [malop], [ngaysinh]) VALUES (@masinhvien, @hovaten, @gioitinh, @sdtgiadinh, @matinhtrang, @malop, @ngaysinh)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [sinhvien]" UpdateCommand="UPDATE [sinhvien] SET [hovaten] = @hovaten, [gioitinh] = @gioitinh, [sdtgiadinh] = @sdtgiadinh, [matinhtrang] = @matinhtrang, [malop] = @malop, [ngaysinh] = @ngaysinh WHERE [masinhvien] = @original_masinhvien AND (([hovaten] = @original_hovaten) OR ([hovaten] IS NULL AND @original_hovaten IS NULL)) AND (([gioitinh] = @original_gioitinh) OR ([gioitinh] IS NULL AND @original_gioitinh IS NULL)) AND (([sdtgiadinh] = @original_sdtgiadinh) OR ([sdtgiadinh] IS NULL AND @original_sdtgiadinh IS NULL)) AND (([matinhtrang] = @original_matinhtrang) OR ([matinhtrang] IS NULL AND @original_matinhtrang IS NULL)) AND (([malop] = @original_malop) OR ([malop] IS NULL AND @original_malop IS NULL)) AND (([ngaysinh] = @original_ngaysinh) OR ([ngaysinh] IS NULL AND @original_ngaysinh IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_masinhvien" Type="String" />
                <asp:Parameter Name="original_hovaten" Type="String" />
                <asp:Parameter Name="original_gioitinh" Type="String" />
                <asp:Parameter Name="original_sdtgiadinh" Type="String" />
                <asp:Parameter Name="original_matinhtrang" Type="String" />
                <asp:Parameter Name="original_malop" Type="String" />
                <asp:Parameter Name="original_ngaysinh" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="masinhvien" Type="String" />
                <asp:Parameter Name="hovaten" Type="String" />
                <asp:Parameter Name="gioitinh" Type="String" />
                <asp:Parameter Name="sdtgiadinh" Type="String" />
                <asp:Parameter Name="matinhtrang" Type="String" />
                <asp:Parameter Name="malop" Type="String" />
                <asp:Parameter Name="ngaysinh" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="hovaten" Type="String" />
                <asp:Parameter Name="gioitinh" Type="String" />
                <asp:Parameter Name="sdtgiadinh" Type="String" />
                <asp:Parameter Name="matinhtrang" Type="String" />
                <asp:Parameter Name="malop" Type="String" />
                <asp:Parameter Name="ngaysinh" Type="String" />
                <asp:Parameter Name="original_masinhvien" Type="String" />
                <asp:Parameter Name="original_hovaten" Type="String" />
                <asp:Parameter Name="original_gioitinh" Type="String" />
                <asp:Parameter Name="original_sdtgiadinh" Type="String" />
                <asp:Parameter Name="original_matinhtrang" Type="String" />
                <asp:Parameter Name="original_malop" Type="String" />
                <asp:Parameter Name="original_ngaysinh" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    <br />    
    <br />
    <center>
    <table >
        <tr>
            <td >Mã Sinh Viên</td>
            <td ><asp:TextBox ID="txtmasinhvien" runat="server" Height="25px" Width="177px"></asp:TextBox></td>
        </tr>
        <tr>
            <td> Họ và Tên</td>
             <td> <asp:TextBox ID="txthovaten" runat="server" Height="25px" Width="177px"></asp:TextBox> </td>
        </tr>
        <tr>
             <td>Ngày Sinh</td>
            <td><asp:TextBox ID="txtngaysinh" runat="server" Height="25px" Width="177px"></asp:TextBox></td>
        </tr>
        <tr>
            <td ><asp:Label ID="Label5" runat="server" Text="Giới Tính" Height="25px" Width="177px"></asp:Label> </td>
            <td>
                <asp:DropDownList ID="dr_gioitinh" runat="server" Height="25px" Width="177px">
                    <asp:ListItem>Nam</asp:ListItem>
                    <asp:ListItem>Nữ</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>SĐT Gia Đình</td>
            <td ><asp:TextBox ID="txtsdtgiadinh" runat="server" Height="25px" Width="177px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Mã Tình Trạng</td>
            <td >
                <asp:DropDownList ID="dr_matinhtrang" runat="server" Height="25px" Width="177px">
                    <asp:ListItem>0</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Mã Lớp</td>
            <td>
                <asp:DropDownList ID="dr_malop" runat="server" Height="25px" Width="177px">
                    <asp:ListItem>L11</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="padding-right: 10px; color:red; text-align: center" colspan="2">
                <asp:Label ID="lb_thongbao" runat="server" />
              </td>
        </tr>
        </table>
        </center>
    <br />
    
                <asp:Button ID="btnthem" runat="server" Text="Thêm" Width="78px" OnClick="btn_them" />&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" Text="Làm Mới" Width="78px" OnClick="btn_lammoi"/>

</asp:Content>
