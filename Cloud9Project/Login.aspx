<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Cloud9Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Username" CssClass="TextUser"></asp:TextBox>
                <p></p>
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" EnableViewState="false" TextMode="Password" CssClass="TextField" ></asp:TextBox>
                <p></p>
                <asp:Button ID="Button1" runat="server" Text="Login" CssClass="login" />
    </div>
    </form>
</body>
</html>
