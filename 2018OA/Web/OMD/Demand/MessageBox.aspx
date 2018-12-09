<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MessageBox.aspx.cs" Inherits="OMD_Demand_MessageBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body >
    <form id="form1" runat="server" >
    <div>
        <table>
            <tr>
                <td colspan="2"><asp:TextBox ID="AuditOpinion" runat="server" TextMode="MultiLine" Width="430px" Height="50px" ></asp:TextBox></td>

            </tr>
            <tr>
                <td><asp:ImageButton ID="OK" runat="server" OnClientClick="javascript:return CheckValuePiece();"  ImageUrl="../../images/Button/Jump.jpg" OnClick="ButtonGo_Click" /></td>
                <td><asp:ImageButton ID="ImageButton1" runat="server" OnClientClick="javascript:return CheckValuePiece();"  ImageUrl="../../images/Button/BtnExit.jpg" OnClick="ButtonCancel_Click" /></td>
            </tr>
        </table>
        
        
        
    </div>
    </form>
</body>
</html>
