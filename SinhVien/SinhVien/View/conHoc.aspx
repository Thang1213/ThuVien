<%@ Page Title="" Language="C#" MasterPageFile="~/QLSV.Master" AutoEventWireup="true" CodeBehind="conHoc.aspx.cs" Inherits="SinhVien.View.conHoc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Sinh viên còn học</h3>
    Sinh viên: &nbsp;&nbsp; <br />
    <asp:DropDownList ID="drTinhTrang" runat="server" AutoPostBack="true"></asp:DropDownList> <br />
    <asp:Button ID="btnTimKiem" runat="server" Text="Tim kiem" OnClick="btnTimKiem_Click" />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br /><br />
    <asp:GridView ID="grvConHoc" runat="server"></asp:GridView>
</asp:Content>
