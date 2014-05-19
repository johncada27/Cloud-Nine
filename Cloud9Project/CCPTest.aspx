<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CCPTest.aspx.cs" Inherits="CCPTest" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
  

    </style>

     <script type="text/javascript" src="Scripts/modal.js"></script>
    <title>Cued Click Points</title>
</head>
<body>
    <form id="form1" runat="server">
  
        <div id="Container">
        
       
       
            <asp:ImageMap ID="ImageMap1" runat="server"  Height="400" Width="400" OnClick="ImageMap1_Click">
            <asp:RectangleHotSpot  AlternateText="Click Point 1" Left="0" Top="0" Bottom="100" Right="200" HotSpotMode="PostBack" PostBackValue="Hotspot1"/>
            <asp:RectangleHotSpot  AlternateText="Click Point 2" Left="200" Top="0" Bottom="100" Right="400" HotSpotMode="PostBack" PostBackValue="Hotspot2"/>
             <asp:RectangleHotSpot  AlternateText="Click Point 3" Left="0" Top="100" Bottom="200" Right="200" HotSpotMode="PostBack" PostBackValue="Hotspot3"/>
            <asp:RectangleHotSpot  AlternateText="Click Point 4" Left="200" Top="100" Bottom="200" Right="400" HotSpotMode="PostBack" PostBackValue="Hotspot4"/>
             <asp:RectangleHotSpot  AlternateText="Click Point 5" Left="0" Top="200" Bottom="300" Right="200" HotSpotMode="PostBack" PostBackValue="Hotspot5"/>
            <asp:RectangleHotSpot  AlternateText="Click Point 6" Left="200" Top="200" Bottom="300" Right="400" HotSpotMode="PostBack" PostBackValue="Hotspot6"/>
             <asp:RectangleHotSpot  AlternateText="Click Point 7" Left="0" Top="300" Bottom="400" Right="200" HotSpotMode="PostBack" PostBackValue="Hotspot7"/>
            <asp:RectangleHotSpot  AlternateText="Click Point 8" Left="200" Top="300" Bottom="400" Right="400" HotSpotMode="PostBack" PostBackValue="Hotspot8"/>
             <asp:RectangleHotSpot  AlternateText="Click Point 9" Left="0" Top="400" Bottom="500" Right="200" HotSpotMode="PostBack" PostBackValue="Hotspot9"/>
            <asp:RectangleHotSpot  AlternateText="Click Point 10" Left="200" Top="400" Bottom="500" Right="400" HotSpotMode="PostBack" PostBackValue="Hotspot10"/>
                   
             </asp:ImageMap>
       
        
            <asp:Button ID="Button1" runat="server" Text="Confirm" />
        
        
    </div>
    </form>
</body>
</html>
