<%@ Page Title="" Language="C#" MasterPageFile="~/QLSV.Master" AutoEventWireup="true" CodeBehind="thongTinKhoa.aspx.cs" Inherits="SinhVien.View.thongTinKhoa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script type="text/javascript" src="js/JScript.js" ></script>

    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="16pt" 
        ForeColor="#33CC33" Text="Thông Tin Khoa"></asp:Label>
    <br /><br />
    <asp:GridView ID="grvkhoa" runat="server" AutoGenerateColumns="False" DataKeyNames="makhoa" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="makhoa" HeaderText="makhoa" ReadOnly="True" SortExpression="makhoa" />
            <asp:BoundField DataField="tenkhoa" HeaderText="tenkhoa" SortExpression="tenkhoa" />
            <asp:BoundField DataField="diachi" HeaderText="diachi" SortExpression="diachi" />
            <asp:BoundField DataField="ngaythanhlap" HeaderText="ngaythanhlap" SortExpression="ngaythanhlap" />
            <asp:BoundField DataField="sdt" HeaderText="sdt" SortExpression="sdt" />
        </Columns>
    </asp:GridView>

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

    <br />    
    <br />
    <br />


</asp:Content>
