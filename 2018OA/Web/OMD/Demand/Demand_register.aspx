<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demand_register.aspx.cs" Inherits="OMD_Demand_Demand_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
         <table id="PrintHide" style="width: 100%" border="0" cellpadding="0" cellspacing="0">            
            <tr>
                <td valign="middle" style="border-bottom: #006633 1px dashed; " class="auto-style1">&nbsp;<img src="../../images/BanKuaiJianTou.gif" />
                <a class="hei" href="../Main/MyDesk.aspx">桌面</a>&nbsp;>>&nbsp;运维管理&nbsp;>>&nbsp;需求登记
                </td>
                <td align="right" valign="middle" style="border-bottom: #006633 1px dashed; " class="auto-style1">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../../images/Button/Submit.jpg"
                        OnClick="ImageButton1_Click" />
                    <img src="../../images/Button/JianGe.jpg" />&nbsp;
                    <img class="HerCss" onclick="javascript:window.history.go(-1)" src="../../images/Button/BtnExit.jpg" />&nbsp;</td>
            </tr>
            <tr>
            <td height="3px" colspan="2" style="background-color: #ffffff"></td>
        </tr>
        </table>
        <table style="width: 100%" bgcolor="#999999" border="0" cellpadding="2" cellspacing="1">
	        <tr>
	            <td style="background-color: #D6E2F3" align="right" class="auto-style2">需求提出科室：</td>
	            <td style="padding-left: 5px; background-color: #ffffff" class="auto-style3" > &nbsp;
                    <asp:DropDownList ID="department1" runat="server" OnSelectedIndexChanged="Department_Click"  AutoPostBack="true" ></asp:DropDownList>&nbsp;&nbsp;
                    <asp:DropDownList ID="department2" runat="server"  OnSelectedIndexChanged="Department2_Click" AutoPostBack="true" ></asp:DropDownList>
	            </td>
	        </tr>
            <tr>
	            <td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">登记人：</td>
	            <td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
                    <asp:TextBox id="registrant" runat="server" Width="350px" ></asp:TextBox>
               </td>
            </tr>

	        <tr id="DShowA5"  runat="server" >
	            <td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">需求类型：</td>
	            <td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
                       <asp:DropDownList id="demand_type" runat="server"  Width="350px" OnSelectedIndexChanged="FaultClassification_SelectedIndexChanged"  AutoPostBack="true">
                       <asp:ListItem Value=" "></asp:ListItem> 
                       <asp:ListItem Value="3">界面修改</asp:ListItem>
                       <asp:ListItem Value="3">功能修改</asp:ListItem>
                       <asp:ListItem Value="3">流程修改</asp:ListItem>
		            </asp:DropDownList>
	            </td>
	        </tr>
    
            <tr id="DShowA7"  runat="server" >
	            <td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">软件模块：</td>
	            <td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		            <asp:DropDownList id="software_type1" runat="server"   OnSelectedIndexChanged="FaultClassification_SelectedIndexChanged"  AutoPostBack="true">
                       <asp:ListItem Value=" "></asp:ListItem> 
                       <asp:ListItem Value="0">HIS</asp:ListItem>
                       <asp:ListItem Value="1">PACS</asp:ListItem>
                       <asp:ListItem Value="2">LIS</asp:ListItem>
                       <asp:ListItem Value="3">其他</asp:ListItem>
		            </asp:DropDownList>
                     <asp:DropDownList id="software_type2" runat="server"   OnSelectedIndexChanged="FaultClassification_SelectedIndexChanged"  AutoPostBack="true">
                       <asp:ListItem Value=" "></asp:ListItem> 
		            </asp:DropDownList>
	            </td>
            </tr>
            <tr id="DShowA6"  runat="server" >
	                <td  id="FaultType" style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">软件模块：</td>
	                <td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
                        <asp:DropDownList id="FaultType1" runat="server" Width="350px"  OnSelectedIndexChanged="txtSf_SelectedIndexChanged"  AutoPostBack="true">
                            <asp:ListItem Value=" "></asp:ListItem>
		                </asp:DropDownList>
		            </td>
             </tr>

	        <tr>
	            <td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">登记日期：</td>
	            <td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		            <asp:TextBox id="registerdate" runat="server" onClick="WdatePicker({startDate:'%y-%M-01',dateFmt:'yyyy-MM-dd',alwaysUseStartDate:true})" Width="350px" ></asp:TextBox>
	            </td>
	        </tr>
	        <tr>
	            <td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">需求描述：</td>
	            <td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		            <asp:TextBox id="describe" runat="server" Width="550px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Phenomenon" ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator>
	            </td>
	        </tr>
            <tr>
	            <td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">反馈电话：</td>
	            <td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		            <asp:TextBox id="FeedBackCall" runat="server" Width="550px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RepairCall" ErrorMessage="*该项不可以为空"></asp:RequiredFieldValidator>
	            </td>
            </tr>
	
        </table>
    </div>
    </form>
</body>
</html>
