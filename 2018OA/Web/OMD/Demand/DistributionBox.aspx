<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DistributionBox.aspx.cs" Inherits="OMD_Demand_DistributionBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="../JS/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td colspan="2">
                    <asp:DropDownList ID="Followupperson" runat="server" OnSelectedIndexChanged="FollowuppersonChanged"  AutoPostBack="true">
					</asp:DropDownList>

                </td>

            </tr>
            <tr>
                <td><asp:ImageButton ID="OK" runat="server" OnClientClick="javascript:return CheckValuePiece();"  ImageUrl="../../images/Button/Jump.jpg" OnClick="ButtonGo_Click" /></td>
                <td><asp:ImageButton ID="ImageButton1" runat="server" OnClientClick="javascript:return CheckValuePiece();"  ImageUrl="../../images/Button/BtnExit.jpg" OnClick="ButtonCancel_Click" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
