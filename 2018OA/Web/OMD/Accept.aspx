<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Accept.aspx.cs" Inherits="Accept" %>




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
        <td width="16%" height="30" align="right" style="border-bottom:#333333 1px solid;  border-left:#333333 1px soid;">工单号:</td>
        <td style="border-bottom:#333333 1px solid; border-left:#333333 1px;" align="left">&nbsp;<asp:Label ID="OrderNo" runat="server" Text=" "></asp:Label></td>
        <td align="right" style="border-bottom:#333333 1px solid;">报修科室:</td>
        <td style="border-bottom:#333333 1px solid;"><asp:Label ID="RepairDepartment" runat="server" Text=""></asp:Label></td>
      </tr>
      <tr>
        <td width="16%" height="30" align="right" style="border-bottom:#333333 1px solid;">报修人:</td>
        <td width="34%" style="border-bottom:#333333 1px solid;"><asp:Label ID="RepairPeople" runat="server" Text="" ></asp:Label></td>
        <td width="25%" align="right" style="border-bottom:#333333 1px solid;">设备服务编码:</td>
        <td width="25%" style="border-bottom:#333333 1px solid;"><asp:Label ID="FauleEquipment" runat="server" Text=" " BorderWidth="0"></asp:Label></td>
      </tr>
       <tr>
        <td width="16%" height="30" align="right" style="border-bottom:#333333 1px solid;">设备名称:</td>
        <td width="34%" style="border-bottom:#333333 1px solid;"><asp:Label ID="EquipmentName" runat="server" Text=""  BorderWidth="0"></asp:Label></td>
        <td width="25%" align="right" style="border-bottom:#333333 1px solid;">设备型号:</td>
        <td width="25%" style="border-bottom:#333333 1px solid;"><asp:Label ID="XingHao" runat="server" Text="" BorderStyle="Solid" BorderWidth="0"></asp:Label></td>
      </tr>
       <tr>
        <td width="16%" height="30" align="right" style="border-bottom:#333333 1px solid;">设备类型:</td>
        <td width="34%" style="border-bottom:#333333 1px solid;"><asp:Label ID="EquipmentType" runat="server" Text="322"  BorderWidth="0"></asp:Label></td>
        <td width="25%" align="right" style="border-bottom:#333333 1px solid;">暂放地址:</td>
        <td width="25%" style="border-bottom:#333333 1px solid;"><asp:Label ID="CunFangAddr" runat="server" Text="233"  BorderWidth="0"></asp:Label></td>
      </tr>
       <tr>
        <td width="16%" height="30" align="right" style="border-bottom:#333333 1px solid;">报修日期:</td>
        <td width="34%" style="border-bottom:#333333 1px solid;"><asp:Label ID="RepairDate" runat="server" Text=""></asp:Label></td>
        <td width="25%" align="right" style="border-bottom:#333333 1px solid;">故障日期:</td>
        <td width="25%" style="border-bottom:#333333 1px solid;"><asp:Label ID="FauleDate" runat="server" Text=""></asp:Label></td>
      </tr>
</table>
        <table  width="98%" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
            
          <tr>
        <td width="16%" height="55" align="right" style="border-bottom:#333333 1px solid;">故障现象:</td>
        <td width="84%" style="border-bottom:#333333 1px solid;"><asp:Label ID="Phenomenon" runat="server" Text=""></asp:Label></td>
       
      </tr>
       
      <tr>
        <td height="15" align="right" >&nbsp;</td>
        <td colspan="3"  >&nbsp;</td>
      </tr>
      <tr>
        <td height="30" align="right">&nbsp;</td>
        <td colspan="2" align="center">
        <asp:Button ID="button1" runat="server" Text="受理" OnClick="button1_onclick" />
        <asp:Button ID="button3" runat="server" Text="取消" OnClick="button2_onclick" />
       
          
      </tr>
        </table>
<!--endprint-->
    </div>
    </form>
</body>
</html>
