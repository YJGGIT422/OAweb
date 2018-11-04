<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dispatching.aspx.cs" Inherits="dispatching" %>




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
<table width="98%" height="261" border="0" align="center" cellpadding="0" cellspacing="0">
   <tr>
        <td height="40" colspan="4" align="center" style="border-bottom:#333333 4px solid;" ><span class="font18px">维修派工</span></td>
      </tr>
	  
      <tr>
        <td width="16%" height="25" align="right" style="border-bottom:#333333 1px solid;">工单号:</td>
        <td style="border-bottom:#333333 1px solid;" align="left">&nbsp;<asp:Label ID="OrderNo" runat="server" Text="" BorderWidth="0"></asp:Label></td>
        <td align="right" style="border-bottom:#333333 1px solid;">报修科室:</td>
        <td style="border-bottom:#333333 1px solid;"><asp:Label ID="RepairDepartment" runat="server" Text=""></asp:Label></td>
      </tr>
      <tr>
        <td width="16%" height="25" align="right" style="border-bottom:#333333 1px solid;">报修人:</td>
        <td width="34%" style="border-bottom:#333333 1px solid;"><asp:Label ID="RepairPeople" runat="server" Text="" BorderWidth="0"></asp:Label></td>
        <td width="25%" align="right" style="border-bottom:#333333 1px solid;">设备服务编码:</td>
        <td width="25%" style="border-bottom:#333333 1px solid;"><asp:Label ID="FauleEquipment" runat="server" Text="" BorderWidth="0"></asp:Label></td>
      </tr>
       <tr>
        <td width="16%" height="25" align="right" style="border-bottom:#333333 1px solid;">设备名称:</td>
        <td width="34%" style="border-bottom:#333333 1px solid;"><asp:Label ID="EquipmentName" runat="server" Text="" BorderWidth="0"></asp:Label></td>
        <td width="25%" align="right" style="border-bottom:#333333 1px solid;">设备型号:</td>
        <td width="25%" style="border-bottom:#333333 1px solid;"><asp:Label ID="XingHao" runat="server" Text="" BorderWidth="0"></asp:Label></td>
      </tr>
       <tr>
        <td width="16%" height="25" align="right" style="border-bottom:#333333 1px solid;">设备类型:</td>
        <td width="34%" style="border-bottom:#333333 1px solid;"><asp:Label ID="EquipmentType" runat="server" Text="" BorderWidth="0"></asp:Label></td>
        <td width="25%" align="right" style="border-bottom:#333333 1px solid;">维修地点:</td>
        <td width="25%" style="border-bottom:#333333 1px solid;"><asp:Label ID="CunFangAddr" runat="server" Text="" BorderWidth="0"></asp:Label></td>
      </tr>
       <tr>
        <td width="16%" height="25" align="right" style="border-bottom:#333333 1px solid;">报修日期:</td>
        <td width="34%" style="border-bottom:#333333 1px solid;"><asp:Label ID="RepairDate" runat="server" Text="" BorderWidth="0"></asp:Label></td>
        <td width="25%" align="right" style="border-bottom:#333333 1px solid;">故障日期:</td>
        <td width="25%" style="border-bottom:#333333 1px solid;"><asp:Label ID="FauleDate" runat="server" Text="" BorderWidth="0"></asp:Label></td>
      </tr>
</table>
        <table  width="98%" height="90" border="0" align="center" cellpadding="0" cellspacing="0">
            
          <tr>
        <td width="16%" height="55" align="right" style="border-bottom:#333333 1px solid;">故障现象:</td>
        <td width="84%" style="border-bottom:#333333 1px solid;"><asp:Label ID="Phenomenon" runat="server" Text="" BorderWidth="0"></asp:Label></td>
       
      </tr>
         <tr>
        <td width="16%" height="30" align="right" style="border-bottom:#333333 1px solid;">维修负责人:</td>
        <td width="84%" style="border-bottom:#333333 1px solid;">
            &nbsp;<asp:DropDownList ID="jsy1" runat="server" OnSelectedIndexChanged="jsy1changed"  AutoPostBack="true" >
					</asp:DropDownList>&nbsp;&nbsp;
            <asp:DropDownList ID="HeadPeople" runat="server" >
					</asp:DropDownList>
        </td>
      </tr>
            <tr>
        <td width="16%" height="30" align="right" style="border-bottom:#333333 1px solid;">协助技术员:</td>
        <td width="84%" style="border-bottom:#333333 1px solid;">
           &nbsp;<asp:DropDownList ID="jsy2" runat="server" OnSelectedIndexChanged="jsy2changed"  AutoPostBack="true" >
					</asp:DropDownList>&nbsp;&nbsp;
            <asp:DropDownList ID="AssistPeople1" runat="server" >
					</asp:DropDownList>
        </td>
       
      </tr>
            <tr>
        <td width="16%" height="30" align="right" style="border-bottom:#333333 1px solid;">协助技术员:</td>
        <td width="84%" style="border-bottom:#333333 1px solid;">
            &nbsp;<asp:DropDownList ID="jsy3" runat="server" OnSelectedIndexChanged="jsy3changed"  AutoPostBack="true" >
					</asp:DropDownList>&nbsp;&nbsp;
            <asp:DropDownList ID="AssistPeople2" runat="server" >
					</asp:DropDownList></td>
       
      </tr>
      <tr>
        <td height="15" align="right" style="border-bottom:#333333 1px solid;">&nbsp;</td>
        <td colspan="3" style="border-bottom:#333333 1px solid;" >&nbsp;</td>
      </tr>
      <tr>
        <td height="20" align="right">&nbsp;</td>
        <td colspan="2" align="center">
        <asp:Button ID="button1" runat="server" Text="确认" OnClick="button1_onclick" />
        <asp:Button ID="button2" runat="server" Text="取消" OnClick="button2_onclick" />
               
      </tr>
        </table>
<!--endprint-->
    </div>
    </form>
</body>
</html>
