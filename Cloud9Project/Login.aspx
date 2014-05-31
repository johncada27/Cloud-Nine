<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Cloud9Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
            <link rel="stylesheet" href="css/MasterPage.css" />
        <style type="text/css">

        #imageContainer
        {
           position:relative;
           padding-left:460px;
        }

        #titleImage
        {
        text-align:center;
        font-size:23px;
          color:navy;
        }

        #instruction
        {
        font-size:18px;
          color:navy;
          text-align:center;
      
        }

   
    
    </style>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <div id="headertop">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/C9Logo2.png" Height="90px" Width="90px" /> 
    </div>

           <div id="middle">
           <h1 id="headerTitle">Authentication Page</h1>
           <p id="instruction">Please enter your username.</p>

                    <div id="imageContainer">
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Username"></asp:TextBox>
                        
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" style="height: 26px" />
                        

    </div></div>
    </form>
</body>
</html>
