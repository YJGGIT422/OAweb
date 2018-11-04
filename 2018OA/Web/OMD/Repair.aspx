<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Repair.aspx.cs" Inherits="Repair" %>
<html>
	<head>
		<title><%=System.Configuration.ConfigurationManager.AppSettings["SYSTitle"]%></title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
  <script src="../JS/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
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
     <table id="PrintHide" style="width: 100%" border="0" cellpadding="0" cellspacing="0">            
            <tr>
                <td valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">&nbsp;<img src="../images/BanKuaiJianTou.gif" />
                <a class="hei" href="../Main/MyDesk.aspx">桌面</a>&nbsp;>>&nbsp;运维管理&nbsp;>>&nbsp;故障报修
                </td>
                <td align="right" valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Button/Submit.jpg"
                        OnClick="ImageButton1_Click" />
                    <img src="../images/Button/JianGe.jpg" />&nbsp;
                    <img class="HerCss" onclick="javascript:window.history.go(-1)" src="../images/Button/BtnExit.jpg" />&nbsp;</td>
            </tr>
            <tr>
            <td height="3px" colspan="2" style="background-color: #ffffff"></td>
        </tr>
        </table>
<table style="width: 100%" bgcolor="#999999" border="0" cellpadding="2" cellspacing="1">
	<tr>
	<td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">
		所属部门：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="RepairDepartment" runat="server" Width="350px" ReadOnly="true" BackColor="#ecedef"></asp:TextBox>
		</td></tr>
    <tr>
	<td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">
		报修人：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="RepairPeople" runat="server" Width="350px" ReadOnly="true" BackColor="#ecedef"></asp:TextBox>
		</td></tr>

	<tr>
	<td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right" >
		是否有设备服务编码：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:DropDownList id="txtSf" runat="server" Width="350px"  OnSelectedIndexChanged="txtSf_SelectedIndexChanged"  AutoPostBack="true">
           <asp:ListItem Value=" "></asp:ListItem> <asp:ListItem Value="1">是</asp:ListItem><asp:ListItem Value="0">否</asp:ListItem>
		</asp:DropDownList>
			</td></tr>
	<tr id="DShowA1"  runat="server" >
	<td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">
		设备服务编码：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="YuanBianHao" runat="server" Width="350px" OnTextChanged="YuanBianHao_TextChanged" AutoPostBack="true"></asp:TextBox>
		</td></tr>
    <tr id="DShowA2"  runat="server" >
	<td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">
		设备类别：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="EquipmentType" runat="server" Width="350px" ReadOnly="true" BackColor="#ecedef"></asp:TextBox>
		</td></tr>
	<tr id="DShowA3"  runat="server" >
	<td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">
		设备名称：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="EquipmentName" runat="server" Width="350px" ReadOnly="true" BackColor="#ecedef"></asp:TextBox>
		</td></tr>
    	<tr id="DShowA4"  runat="server" >
	<td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">
		设备型号：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="XingHao" runat="server" Width="350px" ReadOnly="true" BackColor="#ecedef"></asp:TextBox>
		</td></tr>
	<tr id="DShowA5"  runat="server" >
	<td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">
		暂放地址：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="CunFangAddr" runat="server" Width="350px" ></asp:TextBox>
		</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">
		故障日期：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="FaultDate" runat="server" onClick="WdatePicker({startDate:'%y-%M-01',dateFmt:'yyyy-MM-dd',alwaysUseStartDate:true})" Width="350px" ></asp:TextBox>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">
		故障现象：
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:TextBox id="Phenomenon" runat="server" Width="550px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Phenomenon" ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator>
	
	</td></tr>
	
</table>
		</div>
	</form>
</body>
</html>
