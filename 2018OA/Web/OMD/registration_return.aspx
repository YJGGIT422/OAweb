﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration_return.aspx.cs" Inherits="registration_return" %>




<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="/css/knetPrint.css" type="text/css">

<script language=javascript>
function preview() { 

}


</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0">
    <form id="form1" runat="server">
    <div>

<!--startprint-->
<table width="98%" height="150" border="0" align="center" cellpadding="0" cellspacing="0">  
      <tr>
        <td width="16%" height="30" align="right" style="border-bottom:#333333 1px solid; background-color: #D6E2F3"">工单号:</td>
        <td style="border-bottom:#333333 1px solid;" align="left">&nbsp;<asp:Label ID="OrderNo" runat="server" Text=""></asp:Label></td>
        <td align="right" style="border-bottom:#333333 1px solid; background-color: #D6E2F3">报修科室:</td>
        <td style="border-bottom:#333333 1px solid;"><asp:Label ID="RepairDepartment" runat="server" Text=""></asp:Label></td>
      </tr>
      <tr>
        <td width="16%" height="30" align="right" style="border-bottom:#333333 1px solid; background-color: #D6E2F3">报修人:</td>
        <td width="34%" style="border-bottom:#333333 1px solid;"><asp:Label ID="RepairPeople" runat="server" Text=""></asp:Label></td>
        <td width="25%" align="right" style="border-bottom:#333333 1px solid; background-color: #D6E2F3">设备服务编码:</td>
        <td width="25%" style="border-bottom:#333333 1px solid;"><asp:Label ID="FauleEquipment" runat="server" Text=""></asp:Label></td>
      </tr>
       <tr>
        <td width="16%" height="30" align="right" style="border-bottom:#333333 1px solid; background-color: #D6E2F3">设备名称:</td>
        <td width="34%" style="border-bottom:#333333 1px solid;"><asp:Label ID="EquipmentName" runat="server" Text=""></asp:Label></td>
        <td width="25%" align="right" style="border-bottom:#333333 1px solid; background-color: #D6E2F3">设备型号:</td>
        <td width="25%" style="border-bottom:#333333 1px solid;"><asp:Label ID="XingHao" runat="server" Text=""></asp:Label></td>
      </tr>
       <tr>
        <td width="16%" height="30" align="right" style="border-bottom:#333333 1px solid; background-color: #D6E2F3">设备类型:</td>
        <td width="34%" style="border-bottom:#333333 1px solid;"><asp:Label ID="EquipmentType" runat="server" Text=""></asp:Label></td>
        <td width="25%" align="right" style="border-bottom:#333333 1px solid; background-color: #D6E2F3">暂放地址:</td>
        <td width="25%" style="border-bottom:#333333 1px solid;"><asp:Label ID="CunFangAddr" runat="server" Text=""></asp:Label></td>
      </tr>
       <tr>
        <td width="16%" height="30" align="right" style="border-bottom:#333333 1px solid; background-color: #D6E2F3">报修日期:</td>
        <td width="34%" style="border-bottom:#333333 1px solid;"><asp:Label ID="RepairDate" runat="server" Text=""></asp:Label></td>
        <td width="25%" align="right" style="border-bottom:#333333 1px solid; background-color: #D6E2F3">故障日期:</td>
        <td width="25%" style="border-bottom:#333333 1px solid;"><asp:Label ID="FauleDate" runat="server" Text=""></asp:Label></td>
      </tr>
</table>
        <table  width="98%" height="175" border="0" align="center" cellpadding="0" cellspacing="0">
             <tr>
        <td width="16%" height="30" align="right" style="border-bottom:#333333 1px solid; background-color: #D6E2F3">维修人员:</td>
        <td width="84%" style="border-bottom:#333333 1px solid;"><asp:Label ID="headpeople" runat="server" Text=""></asp:Label>&nbsp;<asp:Label ID="AssistPeople1" runat="server" Text=""></asp:Label>&nbsp;<asp:Label ID="AssistPeople2" runat="server" Text=""></asp:Label></td>
       
      </tr>
          <tr>
        <td width="16%" height="40" align="right" style="border-bottom:#333333 1px solid; background-color: #D6E2F3">故障现象:</td>
        <td width="84%" style="border-bottom:#333333 1px solid;"><asp:Label ID="Phenomenon" runat="server" Text=""></asp:Label></td>
       
      </tr>
       
         <tr>
        <td width="16%" height="30" align="right" style="border-bottom:#333333 1px solid; background-color: #D6E2F3">转单原因:</td>
        <td width="84%" style="border-bottom:#333333 1px solid;">
            <asp:DropDownList ID="returnreason" runat="server">
					<asp:ListItem Value="维修员无法解决">维修员无法解决</asp:ListItem>
					<asp:ListItem Value="工作重新安排">工作重新安排</asp:ListItem>
					</asp:DropDownList>
        </td>
      </tr>
      <tr>
        <td height="15" align="right" >&nbsp;</td>
        <td colspan="3"  >&nbsp;</td>
      </tr>
      <tr>
        <td height="30" align="right">&nbsp;</td>
        <td colspan="2" align="center">
        <asp:Button ID="button1" runat="server" Text="确定" OnClick="button1_onclick" />
            <input type="button" runat="server" value="取消" onclick="window.close()"  />   
      </tr>
        </table>
<!--endprint-->
    </div>
    </form>
</body>
</html>