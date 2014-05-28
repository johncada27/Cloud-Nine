<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CCPTest.aspx.cs" Inherits="CCPTest" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link rel="stylesheet" href="css/MasterPage.css" />
    <style type="text/css">

    



        #middle
        {
margin:0 auto;
  background-color:white;
  height:630px;
  width:900px;
  border-left:1px dashed gray;
   border-right:1px dashed gray;
 

        }




        #imageContainer
        {
           position:absolute;
           left:32%;
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

        #homebutton
        {
        text-decoration:none;
        color:white;
        font-weight:bold;
        font-size:30px;
        }
    
    </style>

     <script type="text/javascript" src="Scripts/modal.js"></script>

    <title>Cued Click Points</title>
</head>
<body>
    <form id="form1" runat="server">
  
    <div id="headertop">
        THIS IS A HEADER
    </div>
  

       <div id="middle">
           <h1 id="headerTitle">Authentication Page</h1>
           <p id="instruction">Please enter your password.</p>
          
           <div id="imageContainer">
            <asp:ImageMap ID="ImageMap1" runat="server"  Height="500" Width="500" OnClick="ImageMap1_Click">
               
            <asp:RectangleHotSpot  AlternateText="Click Point 1" Left="0" Top="0" Bottom="100" Right="100" HotSpotMode="PostBack" PostBackValue="Hotspot1"/>
            <asp:RectangleHotSpot  AlternateText="Click Point 2" Left="100" Top="0" Bottom="100" Right="200" HotSpotMode="PostBack" PostBackValue="Hotspot2"/>
             <asp:RectangleHotSpot  AlternateText="Click Point 3" Left="200" Top="0" Bottom="100" Right="300" HotSpotMode="PostBack" PostBackValue="Hotspot3"/>
            <asp:RectangleHotSpot  AlternateText="Click Point 4" Left="300" Top="0" Bottom="100" Right="400" HotSpotMode="PostBack" PostBackValue="Hotspot4"/>
            <asp:RectangleHotSpot  AlternateText="Click Point 5" Left="400" Top="0" Bottom="100" Right="500" HotSpotMode="PostBack" PostBackValue="Hotspot5"/>
             <asp:RectangleHotSpot  AlternateText="Click Point 6" Left="0" Top="100" Bottom="200" Right="100" HotSpotMode="PostBack" PostBackValue="Hotspot6"/>
            <asp:RectangleHotSpot  AlternateText="Click Point 7" Left="100" Top="100" Bottom="200" Right="200" HotSpotMode="PostBack" PostBackValue="Hotspot7"/>
             <asp:RectangleHotSpot  AlternateText="Click Point 8" Left="200" Top="100" Bottom="200" Right="300" HotSpotMode="PostBack" PostBackValue="Hotspot8"/>
            <asp:RectangleHotSpot  AlternateText="Click Point 9" Left="300" Top="100" Bottom="200" Right="400" HotSpotMode="PostBack" PostBackValue="Hotspot9"/>
          <asp:RectangleHotSpot  AlternateText="Click Point 10" Left="400" Top="100" Bottom="200" Right="500" HotSpotMode="PostBack" PostBackValue="Hotspot10"/>
                 <asp:RectangleHotSpot  AlternateText="Click Point 11" Left="0" Top="200" Bottom="300" Right="100" HotSpotMode="PostBack" PostBackValue="Hotspot11"/>
            <asp:RectangleHotSpot  AlternateText="Click Point 12" Left="100" Top="200" Bottom="300" Right="200" HotSpotMode="PostBack" PostBackValue="Hotspot12"/>
             <asp:RectangleHotSpot  AlternateText="Click Point 13" Left="200" Top="200" Bottom="300" Right="300" HotSpotMode="PostBack" PostBackValue="Hotspot13"/>
            <asp:RectangleHotSpot  AlternateText="Click Point 14" Left="300" Top="200" Bottom="300" Right="400" HotSpotMode="PostBack" PostBackValue="Hotspot14"/>
                  <asp:RectangleHotSpot  AlternateText="Click Point 15" Left="400" Top="200" Bottom="300" Right="500" HotSpotMode="PostBack" PostBackValue="Hotspot15"/>
                 <asp:RectangleHotSpot  AlternateText="Click Point 16" Left="0" Top="300" Bottom="400" Right="100" HotSpotMode="PostBack" PostBackValue="Hotspot16"/>
            <asp:RectangleHotSpot  AlternateText="Click Point 17" Left="100" Top="300" Bottom="400" Right="200" HotSpotMode="PostBack" PostBackValue="Hotspot17"/>
             <asp:RectangleHotSpot  AlternateText="Click Point 18" Left="200" Top="300" Bottom="400" Right="300" HotSpotMode="PostBack" PostBackValue="Hotspot18"/>
            <asp:RectangleHotSpot  AlternateText="Click Point 19" Left="300" Top="300" Bottom="400" Right="400" HotSpotMode="PostBack" PostBackValue="Hotspot19"/>
           <asp:RectangleHotSpot  AlternateText="Click Point 20" Left="400" Top="300" Bottom="400" Right="500" HotSpotMode="PostBack" PostBackValue="Hotspot20"/>
                <asp:RectangleHotSpot  AlternateText="Click Point 21" Left="0" Top="400" Bottom="500" Right="100" HotSpotMode="PostBack" PostBackValue="Hotspot21"/>
            <asp:RectangleHotSpot  AlternateText="Click Point 22" Left="100" Top="400" Bottom="500" Right="200" HotSpotMode="PostBack" PostBackValue="Hotspot22"/>
             <asp:RectangleHotSpot  AlternateText="Click Point 23" Left="200" Top="400" Bottom="500" Right="300" HotSpotMode="PostBack" PostBackValue="Hotspot23"/>
            <asp:RectangleHotSpot  AlternateText="Click Point 24" Left="300" Top="400" Bottom="500" Right="400" HotSpotMode="PostBack" PostBackValue="Hotspot24"/>
           <asp:RectangleHotSpot  AlternateText="Click Point 25" Left="400" Top="400" Bottom="500" Right="500" HotSpotMode="PostBack" PostBackValue="Hotspot25"/>


                   
             </asp:ImageMap>
       <h1 id="titleImage">Image <asp:Label ID="NumberImage" runat="server" Text="1"></asp:Label> of <asp:Label ID="TotalImage" runat="server"> </asp:Label></h1> 
         
        </div>
          </div>
          
        
        
  
    </form>
</body>
</html>
