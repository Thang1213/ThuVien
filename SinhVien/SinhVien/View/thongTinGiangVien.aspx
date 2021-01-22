<%@ Page Title="" Language="C#" MasterPageFile="~/QLSV.Master" AutoEventWireup="true" CodeBehind="thongTinGiangVien.aspx.cs" Inherits="SinhVien.View.thongTinGiangVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <script type="text/javascript" src="js/JScript.js" ></script>

    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="16pt" 
        ForeColor="#33CC33" Text="Thông Tin Giảng Viên"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="grvGiangVien" runat="server" AutoGenerateColumns="False" DataKeyNames="magiaovien" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="magiaovien" HeaderText="magiaovien" ReadOnly="True" SortExpression="magiaovien" />
            <asp:BoundField DataField="hovaten" HeaderText="hovaten" SortExpression="hovaten" />
            <asp:BoundField DataField="ngaysinh" HeaderText="ngaysinh" SortExpression="ngaysinh" />
            <asp:BoundField DataField="gioitinh" HeaderText="gioitinh" SortExpression="gioitinh" />
            <asp:BoundField DataField="chucvu" HeaderText="chucvu" SortExpression="chucvu" />
            <asp:BoundField DataField="hocvi" HeaderText="hocvi" SortExpression="hocvi" />
            <asp:BoundField DataField="makhoa" HeaderText="makhoa" SortExpression="makhoa" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DM_QLSVConnectionString %>" DeleteCommand="DELETE FROM [giaovien] WHERE [magiaovien] = @original_magiaovien AND (([hovaten] = @original_hovaten) OR ([hovaten] IS NULL AND @original_hovaten IS NULL)) AND (([ngaysinh] = @original_ngaysinh) OR ([ngaysinh] IS NULL AND @original_ngaysinh IS NULL)) AND (([gioitinh] = @original_gioitinh) OR ([gioitinh] IS NULL AND @original_gioitinh IS NULL)) AND (([chucvu] = @original_chucvu) OR ([chucvu] IS NULL AND @original_chucvu IS NULL)) AND (([hocvi] = @original_hocvi) OR ([hocvi] IS NULL AND @original_hocvi IS NULL)) AND (([makhoa] = @original_makhoa) OR ([makhoa] IS NULL AND @original_makhoa IS NULL))" InsertCommand="INSERT INTO [giaovien] ([magiaovien], [hovaten], [ngaysinh], [gioitinh], [chucvu], [hocvi], [makhoa]) VALUES (@magiaovien, @hovaten, @ngaysinh, @gioitinh, @chucvu, @hocvi, @makhoa)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [giaovien]" UpdateCommand="UPDATE [giaovien] SET [hovaten] = @hovaten, [ngaysinh] = @ngaysinh, [gioitinh] = @gioitinh, [chucvu] = @chucvu, [hocvi] = @hocvi, [makhoa] = @makhoa WHERE [magiaovien] = @original_magiaovien AND (([hovaten] = @original_hovaten) OR ([hovaten] IS NULL AND @original_hovaten IS NULL)) AND (([ngaysinh] = @original_ngaysinh) OR ([ngaysinh] IS NULL AND @original_ngaysinh IS NULL)) AND (([gioitinh] = @original_gioitinh) OR ([gioitinh] IS NULL AND @original_gioitinh IS NULL)) AND (([chucvu] = @original_chucvu) OR ([chucvu] IS NULL AND @original_chucvu IS NULL)) AND (([hocvi] = @original_hocvi) OR ([hocvi] IS NULL AND @original_hocvi IS NULL)) AND (([makhoa] = @original_makhoa) OR ([makhoa] IS NULL AND @original_makhoa IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_magiaovien" Type="String" />
            <asp:Parameter Name="original_hovaten" Type="String" />
            <asp:Parameter Name="original_ngaysinh" Type="String" />
            <asp:Parameter Name="original_gioitinh" Type="String" />
            <asp:Parameter Name="original_chucvu" Type="String" />
            <asp:Parameter Name="original_hocvi" Type="String" />
            <asp:Parameter Name="original_makhoa" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="magiaovien" Type="String" />
            <asp:Parameter Name="hovaten" Type="String" />
            <asp:Parameter Name="ngaysinh" Type="String" />
            <asp:Parameter Name="gioitinh" Type="String" />
            <asp:Parameter Name="chucvu" Type="String" />
            <asp:Parameter Name="hocvi" Type="String" />
            <asp:Parameter Name="makhoa" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="hovaten" Type="String" />
            <asp:Parameter Name="ngaysinh" Type="String" />
            <asp:Parameter Name="gioitinh" Type="String" />
            <asp:Parameter Name="chucvu" Type="String" />
            <asp:Parameter Name="hocvi" Type="String" />
            <asp:Parameter Name="makhoa" Type="String" />
            <asp:Parameter Name="original_magiaovien" Type="String" />
            <asp:Parameter Name="original_hovaten" Type="String" />
            <asp:Parameter Name="original_ngaysinh" Type="String" />
            <asp:Parameter Name="original_gioitinh" Type="String" />
            <asp:Parameter Name="original_chucvu" Type="String" />
            <asp:Parameter Name="original_hocvi" Type="String" />
            <asp:Parameter Name="original_makhoa" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    

    <center>
    <table>
        <tr>
            <td > Mã Giáo Viên</td>
            <td ><asp:TextBox ID="txtmagiaovien" runat="server" Height="25px" Width="265px"></asp:TextBox> </td>
        </tr>
        <tr>
            <td>Họ Và Tên</td>
            <td><asp:TextBox ID="txthovaten" runat="server" Height="25px" Width="265px"></asp:TextBox></td>
        </tr>
        <tr>
            <td> Ngày Sinh</td>
            <td > <asp:TextBox ID="txtngaysinh" runat="server" Height="25px" Width="265px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Giới Tính </td>
            <td>
                <asp:DropDownList ID="dr_gioitinh" runat="server" Height="25px" Width="273px">
                    <asp:ListItem>Nam</asp:ListItem>
                    <asp:ListItem>Nữ</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td> Chức Vụ</td>
            <td >
                <asp:DropDownList ID="dr_chucvu" runat="server" Height="25px" Width="273px">
                    <asp:ListItem>Trưởng Khoa</asp:ListItem>
                    <asp:ListItem>Phó Khoa</asp:ListItem>
                    <asp:ListItem>Giảng Viên</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Học Vị</td>
            <td>
                <asp:DropDownList ID="dr_hocvi" runat="server" Height="31px" Width="273px">
                    <asp:ListItem>Thạc Sĩ</asp:ListItem>
                    <asp:ListItem>Tiến Sĩ</asp:ListItem>
                    <asp:ListItem>Giáo Sư</asp:ListItem>
                    <asp:ListItem>Phó Giáo Sư</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Mã Khoa</td>
            <td >
                <asp:DropDownList ID="dr_makhoa" runat="server" Height="31px" Width="273px">

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
    
    <asp:Button ID="btnthem" runat="server" Text="Thêm" Width="85px" OnClick="btnthem_Click" Height="25px" />&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnlammoi" runat="server" Text="Làm Mới" Width="85px" OnClick="btnlammoi_Click" Height="25px"/>&nbsp;&nbsp;&nbsp;

</asp:Content>
