<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SheBeiView1.aspx.cs" Inherits="Office_SheBeiView1" %>
<html>
	<head>
		<title><%=System.Configuration.ConfigurationManager.AppSettings["SYSTitle"]%></title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
  <script language="javascript">
  function PrintTable()
    {
        document.getElementById("PrintHide") .style.visibility="hidden"    
        print();
        document.getElementById("PrintHide") .style.visibility="visible"    
    }
  </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>    
     <table id="PrintHide" style="width: 100%; " border="0" cellpadding="0" cellspacing="0">            
            <tr>
                <td valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">&nbsp;<img src="../images/BanKuaiJianTou.gif" />
                <a class="hei" href="../Main/MyDesk.aspx">桌面</a>&nbsp;>>&nbsp;仪器设备&nbsp;>>&nbsp;查看信息（条码）
                </td>
                <td align="right" valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">
                    <img class="HerCss" onclick="PrintTable()" src="../images/Button/BtnPrint.jpg" />
                    <img src="../images/Button/JianGe.jpg" />&nbsp;
                    <img class="HerCss" onclick="javascript:window.history.go(-1)" src="../images/Button/BtnExit.jpg" />&nbsp;</td>
            </tr>
            <tr>
            <td height="3px" colspan="2" style="background-color: #ffffff"></td>
        </tr>
        </table>
        <table style="align-content:center">
            <tr >
                <td aling="center">
                 <font size="3px">-临床工程信息部维修服务-</font>
                </td>
            </tr>
            <tr>
                <td>
<table style="width: 100%" bgcolor="#999999" border="1" cellpadding="0" cellspacing="0">
    <tr>
	<td style="width: 90px; height: 25px; background-color: #D6E2F3" align="right">
		设备名称：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblSheBeiName" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 90px; height: 25px; background-color: #D6E2F3" align="right">
		维修服务编号：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblYuanBianHao" runat="server"></asp:Label>
	</td></tr>
	
	<tr>
	<td style="width: 90px; height: 25px; background-color: #D6E2F3" align="right">
		设备类别：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblSheBeiLeiBie" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 90px; height: 25px; background-color: #D6E2F3" align="right">
		型号：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblXingHao" runat="server"></asp:Label>
	</td></tr>
	
	<tr>
	<td style="width: 90px; height: 25px; background-color: #D6E2F3" align="right">
		出厂编号：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblChuChangBianHao" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 90px; height: 25px; background-color: #D6E2F3" align="right">
		使用部门：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblShiYongBuMen" runat="server"></asp:Label>
	</td></tr>
	
	<tr>
	<td style="width: 90px; height: 25px; background-color: #D6E2F3" align="right">
		管理人：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblGuanLiUser" runat="server"></asp:Label>
	</td></tr>
	
</table>
                </td>
            </tr>
        </table>

		</div>
	</form>
</body>
</html>
