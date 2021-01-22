<%@ Page Title="" Language="C#" MasterPageFile="~/QLSV.Master" AutoEventWireup="true" CodeBehind="thongTinKhoaHoc.aspx.cs" Inherits="SinhVien.View.thongTinKhoaHoc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript" src="js/JScript.js" ></script>

    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="16pt" 
        ForeColor="#33CC33" Text="Thông Tin Khóa Học"></asp:Label>
    <br /><br />
    <center>
        <asp:GridView ID="grvKhoa" runat="server" AutoGenerateColumns="False" DataKeyNames="makhoahoc" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="makhoahoc" HeaderText="makhoahoc" ReadOnly="True" SortExpression="makhoahoc" />
                <asp:BoundField DataField="tenkhoahoc" HeaderText="tenkhoahoc" SortExpression="tenkhoahoc" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DM_QLSVConnectionString %>" DeleteCommand="DELETE FROM [khoahoc] WHERE [makhoahoc] = @original_makhoahoc AND (([tenkhoahoc] = @original_tenkhoahoc) OR ([tenkhoahoc] IS NULL AND @original_tenkhoahoc IS NULL))" InsertCommand="INSERT INTO [khoahoc] ([makhoahoc], [tenkhoahoc]) VALUES (@makhoahoc, @tenkhoahoc)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [khoahoc]" UpdateCommand="UPDATE [khoahoc] SET [tenkhoahoc] = @tenkhoahoc WHERE [makhoahoc] = @original_makhoahoc AND (([tenkhoahoc] = @original_tenkhoahoc) OR ([tenkhoahoc] IS NULL AND @original_tenkhoahoc IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_makhoahoc" Type="String" />
                <asp:Parameter Name="original_tenkhoahoc" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="makhoahoc" Type="String" />
                <asp:Parameter Name="tenkhoahoc" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="tenkhoahoc" Type="String" />
                <asp:Parameter Name="original_makhoahoc" Type="String" />
                <asp:Parameter Name="original_tenkhoahoc" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DM_QLSVConnectionString %>" DeleteCommand="DELETE FROM [khoa] WHERE [makhoa] = @original_makhoa AND (([tenkhoa] = @original_tenkhoa) OR ([tenkhoa] IS NULL AND @original_tenkhoa IS NULL)) AND (([diachi] = @original_diachi) OR ([diachi] IS NULL AND @original_diachi IS NULL)) AND (([ngaythanhlap] = @original_ngaythanhlap) OR ([ngaythanhlap] IS NULL AND @original_ngaythanhlap IS NULL)) AND (([sdt] = @original_sdt) OR ([sdt] IS NULL AND @original_sdt IS NULL))" InsertCommand="INSERT INTO [khoa] ([makhoa], [tenkhoa], [diachi], [ngaythanhlap], [sdt]) VALUES (@makhoa, @tenkhoa, @diachi, @ngaythanhlap, @sdt)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [khoa]" UpdateCommand="UPDATE [khoa] SET [tenkhoa] = @tenkhoa, [diachi] = @diachi, [ngaythanhlap] = @ngaythanhlap, [sdt] = @sdt WHERE [makhoa] = @original_makhoa AND (([tenkhoa] = @original_tenkhoa) OR ([tenkhoa] IS NULL AND @original_tenkhoa IS NULL)) AND (([diachi] = @original_diachi) OR ([diachi] IS NULL AND @original_diachi IS NULL)) AND (([ngaythanhlap] = @original_ngaythanhlap) OR ([ngaythanhlap] IS NULL AND @original_ngaythanhlap IS NULL)) AND (([sdt] = @original_sdt) OR ([sdt] IS NULL AND @original_sdt IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_makhoa" Type="String" />
                <asp:Parameter Name="original_tenkhoa" Type="String" />
                <asp:Parameter Name="original_diachi" Type="String" />
                <asp:Parameter DbType="Date" Name="original_ngaythanhlap" />
                <asp:Parameter Name="original_sdt" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="makhoa" Type="String" />
                <asp:Parameter Name="tenkhoa" Type="String" />
                <asp:Parameter Name="diachi" Type="String" />
                <asp:Parameter DbType="Date" Name="ngaythanhlap" />
                <asp:Parameter Name="sdt" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="tenkhoa" Type="String" />
                <asp:Parameter Name="diachi" Type="String" />
                <asp:Parameter DbType="Date" Name="ngaythanhlap" />
                <asp:Parameter Name="sdt" Type="Int32" />
                <asp:Parameter Name="original_makhoa" Type="String" />
                <asp:Parameter Name="original_tenkhoa" Type="String" />
                <asp:Parameter Name="original_diachi" Type="String" />
                <asp:Parameter DbType="Date" Name="original_ngaythanhlap" />
                <asp:Parameter Name="original_sdt" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <center>
        <br />
    <table>
        <tr>
            <td >Mã Khóa Học </td>
            <td> <asp:TextBox ID="txtmakhoahoc" runat="server" Height="31px"></asp:TextBox></td>
        </tr>
        <tr>
            <td >Tên Khóa Học</td>
            <td ><asp:TextBox ID="txttenkhoahoc" runat="server" Height="31px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="padding-right: 10px; color:red; text-align: center" colspan="2">
                <asp:Label ID="lb_thongbao" runat="server" />
              </td>
        </tr>
        </table>
    </center>
    
                <asp:Button ID="btnthem" runat="server" Text="Thêm" Width="85px" Height="25px" OnClick="btnthem_Click"/>&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" Text="Làm Mới" Width="85px"  Height="25px"/>
</asp:Content>
