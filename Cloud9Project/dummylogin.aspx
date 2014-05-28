<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dummylogin.aspx.cs" Inherits="dummylogin" %>

<%@ Register Assembly="DayPilot" Namespace="DayPilot.Web.Ui" TagPrefix="DayPilot" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <script type="text/javascript">
         function showModal() {
  


             var modal = new DayPilot.Modal();
          
            
          
             modal.top = 100;
             modal.width = 421;
             modal.opacity = 70;
             modal.height = 421;
    
             modal.border = "2px solid black";
             modal.closed = function () {
                 Response.Redirect("http://www.youtube.com");
             };
             modal.showUrl("CCPTest.aspx");
            

             return false;
         }



         
    </script>
    <script type="text/javascript" src="Scripts/modal.js"></script>
        <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.10.3.custom.js"></script>
    <style type="text/css">
        #loginTable
        {
        margin:0 auto;
        position:relative;
        top:100px;
        }

    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table id="loginTable">
            <tr><td> Username:<asp:TextBox ID="usernametb" runat="server"></asp:TextBox></td></tr>
            <tr><td>  Password:<asp:TextBox ID="passwordtb" runat="server"></asp:TextBox></td></tr>
            <tr><td> <asp:Button ID="loginbtn" runat="server" Text="Go" OnClick="loginbtn_Click"/></td></tr>
        </table>
    </div>
    </form>
</body>
</html>
