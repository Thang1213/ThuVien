<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dangNhap.aspx.cs" Inherits="SinhVien.View.dangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng Nhập</title>
    <style type="text/css">
        .style1
        {
            border-top: 2px solid #2a44e5;
            width: 100%;
        }
        #form1{
            border-color:blue;
            border:solid;8
            border-color:antiquewhite;
            height:500px;
            width:400px;
        }
        tr{
            line-height: 2.5;
        }
        div{
            line-height: 3.5;
        }
    </style>
</head>
<body>
    <center>
    <form id="form1" colspan="7" runat="server" >
    <div align="center" style="margin: 30px 50px 0px 50px;">
            <img src="../banner/img/qnu.png" />
    </div>
    <table align="center" class="style1" style="text-align: right; width: 200px;">
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="15pt" ForeColor="#0066FF" Text="<b>HỆ THỐNG ĐĂNG NHẬP</b> "></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Label ID="Label2" runat="server" Text="Username" Font-Bold="True"  ForeColor="Black"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtusername" runat="server" Placeholder="Nhập Tài Khoản..." ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Label ID="Label3" runat="server" Text="Password" Font-Bold="True" ForeColor="Black"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txtpassword" runat="server" Placeholder="Nhập Mật Khẩu..." ></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td colspan="2">
                <center>
                    <asp:Button ID="Button1" runat="server" Text="Đăng nhập" OnClick="Button1_Click"></asp:Button><br />
                    <asp:Label style="color:red" ID="lblThongBao" runat="server" Text=""></asp:Label>
                </center>
            </td>
        </tr>
    </table>
    </form>
    </center>
</body>
</html>
