<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Test iframe download</title>
</head>
<body>
    <form id="form1" method="post" runat="server">
    <div id="box" style="display: none;">
        <p>
            Your file is creating now...</p>
        <iframe id="iframeExportXls" src="" marginwidth="2" marginheight="2" frameborder="1"
            style="border-width: 2px; border-color: #333; background: #FFF; border-style: solid;">
        </iframe>
        <br />
        <br />
        <div style="text-align: center">
            <button onclick="HideModalDiv('box');">Close</button>
        </div>
    </div>
    <p>
        <input id="ButtonExcel" runat="server" type="button" value="Create XLS" onclick="DisplayDiv()"
            style="font-family: Arial;" />
    </p>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </form>
    <script type="text/javascript" language="javascript">
        function DisplayDiv() {
            var iFrameObj = document.getElementById('iframeExportXls');
            iFrameObj.src = 'Default.aspx?q=true';
            iFrameObj.width = 500;
            iFrameObj.height = 0;
            document.getElementById('box').style.display = 'block';
            //DisplayModalDiv('box', 500, 140);
        }
    </script>
</body>
</html>
