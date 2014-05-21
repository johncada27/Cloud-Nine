<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dummylogin.aspx.cs" Inherits="dummylogin" %>

<%@ Register Assembly="DayPilot" Namespace="DayPilot.Web.Ui" TagPrefix="DayPilot" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <script type="text/javascript">
         function showModal() {
  


             var modal = new DayPilot.Modal();
          
            
             modal.showUrl("CCPTest.aspx");
         }



         
    </script>
    <script type="text/javascript" src="Scripts/modal.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
            <tr><td> Username:<asp:TextBox ID="usernametb" runat="server"></asp:TextBox></td></tr>
            <tr><td>  Password:<asp:TextBox ID="passwordtb" runat="server"></asp:TextBox></td></tr>
            <tr><td> <asp:Button ID="loginbtn" runat="server" OnClientClick="showModal()" Text="Login"/></td></tr>
        </table>
    </div>
    </form>
</body>
</html>
