<%@ page language="C#" autoeventwireup="true" inherits="eWebEditor_upload_Default, App_Web_ue2s3jyn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>�ļ��ϴ�</title>
<style type="text/css">
body, a, table, div, span, td, th, input, select{font:9pt;font-family: "����", Verdana, Arial, Helvetica, sans-serif;}
body {padding:0px;margin:0px}
</style>
    <link href="../dialog/dialog.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="myform" runat="server"  >
    <asp:Label ID="lblinfo" runat="server">
        <asp:FileUpload ID="uploadfile" runat="server" Width="80%" />
        <asp:Button ID="ButUpload" runat="server" OnClick="Button1_Click" Text="�ϴ�" OnClientClick="parent.document.all('divProcessing').style.display='';" />        
    </asp:Label>
    </form>
</body>
</html>