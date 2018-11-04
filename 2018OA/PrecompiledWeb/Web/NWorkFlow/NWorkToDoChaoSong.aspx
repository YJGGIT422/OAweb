<%@ page language="C#" autoeventwireup="true" inherits="NWorkFlow_NWorkToDoChaoSong, App_Web_yveem5xh" %>
<html>
	<head>
		<title><%=System.Configuration.ConfigurationManager.AppSettings["SYSTitle"]%></title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
  <script type="text/javascript" language="javascript" src="../JS/calendar.js"></script>
  <script language="javascript">
  function PrintTable()
    {
        document.getElementById("PrintHide") .style.visibility="hidden"    
        print();
        document.getElementById("PrintHide") .style.visibility="visible"    
    }
    
    function selectUser(imgidstr)
        {            
            var wName;
            var RadNum=Math.random();            
            wName=window.showModalDialog('../Main/SelectUser.aspx?Radstr='+RadNum,'','dialogWidth:350px;DialogHeight=400px;status:no;help:no;resizable:yes;');            
            if(wName==null||wName=="")
            {}
            else
            {
                imgidstr.value=wName;                          
            }                
        }
        
function selectBuMen(imgidstr)
        {            
            var wName;
            var RadNum=Math.random();            
            wName=window.showModalDialog('../Main/SelectDanWei.aspx?Radstr='+RadNum,'','dialogWidth:350px;DialogHeight=400px;status:no;help:no;resizable:yes;');            
            if(wName==null||wName=="")
            {}
            else
            {
                imgidstr.value=wName;                          
            }                
        }


function selectyinzhang(imgidstr)
        {            
            var wName;
            var RadNum=Math.random();            
            wName=window.showModalDialog('../Main/SelectYinZhang.aspx?Radstr='+RadNum,'','dialogWidth:350px;DialogHeight=400px;status:no;help:no;resizable:yes;');            
            if(wName==null||wName=="")
            {}
            else
            {
                imgidstr.src="http://"+window.location.host+"<%=System.Configuration.ConfigurationManager.AppSettings["OARoot"] %>/UploadFile/"+wName;                          
            }                
        }
  function selectShouXie(imgidstr)
        {            
            var wName;
            var RadNum=Math.random();            
            wName=window.showModalDialog('../Main/InsertQianMing.aspx?Radstr='+RadNum,'','dialogWidth:350px;DialogHeight=400px;status:no;help:no;resizable:yes;');            
            if(wName==null||wName=="")
            {}
            else
            {
                imgidstr.src="http://"+window.location.host+"<%=System.Configuration.ConfigurationManager.AppSettings["OARoot"] %>/UploadFile/"+wName;                          
            }                
        }

      function DownloadFile(FileURL)   //���ظ���
      {
          document.getElementById("hdnFileURL").value = FileURL;
          document.getElementById("btnDownloadFile").click();
      } 
  </script>
</head>
<body>
    <form id="form1" runat="server">
    <input id="hdnFileURL" runat="server" type="hidden" />
    <div style="width: 0px; height: 0px; display: none;">
        <asp:Button ID="btnDownloadFile" Width="0px" Height="0px" runat="server" Text="Button"
            OnClick="btnDownloadFile_Click" />
    </div>
    <div>    
     <table id="PrintHide" style="width: 100%" border="0" cellpadding="0" cellspacing="0">            
            <tr>
                <td valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">&nbsp;<img src="../images/BanKuaiJianTou.gif" />
                <a class="hei" href="../Main/MyDesk.aspx">����</a>&nbsp;>>&nbsp;��������&nbsp;>>&nbsp;���͹���
                </td>
                <td align="right" valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">
                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/Button/Submit.jpg"
                        OnClick="ImageButton2_Click" />
                    &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../images/Button/BtnPrint.jpg"
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
		�������ƣ�
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblWorkName" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">
		�����ˣ�
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblUserName" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">
		����ʱ�䣺
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblTimeStr" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">
		�������ݣ�
	</td>
        <td  style="padding-left: 5px; height: 25px; background-color: #ffffff">
		<asp:Label id="lblFormContent" runat="server"></asp:Label>
        </td>
    </tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">
		�����ļ���
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblFuJianList" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">
		ǩע������
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblShenPiYiJian" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">
		��ǰ�ڵ����ƣ�
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblJieDianName" runat="server"></asp:Label></td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">
        ��ǰ�����û���
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblShenPiUserList" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">
        ��ǰ�������û���
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblOKUserList" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">
		��ǰ״̬��
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblStateNow" runat="server"></asp:Label>
	</td></tr>
	<tr>
	<td style="width: 170px; height: 25px; background-color: #D6E2F3" align="right">
        ��ʱʱ�䣺
	</td>
	<td style="padding-left: 5px; height: 25px; background-color: #ffffff" >
		<asp:Label id="lblLateTime" runat="server"></asp:Label>
	</td></tr>
    <tr>
        <td align="right" style="width: 170px; height: 25px; background-color: #D6E2F3">
            ������ѡ��</td>
        <td style="padding-left: 5px; height: 25px; background-color: #ffffff">
            <asp:TextBox ID="txtChaoSong" runat="server" onkeydown="javascript:return false;" Width="349px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtChaoSong"
                Display="Dynamic" ErrorMessage="*����ָ��������"></asp:RequiredFieldValidator><img class="HerCss" id="Img1" onclick="var wName;var RadNum=Math.random();wName=window.showModalDialog('../Main/SelectUser.aspx?TableName=ERPUser&LieName=UserName&Condition='+document.getElementById('txtChaoSong').value+'&Radstr='+RadNum,'','dialogWidth:350px;DialogHeight=400px;status:no;help:no;resizable:yes;');if(wName==null){}else{document.getElementById('txtChaoSong').value=wName;}"
                src="../images/Button/search.gif" /><asp:CheckBox ID="CHKSMS" runat="server" Checked="True" /><img
                    src="../images/TreeImages/@sms.gif" />����Ϣ<asp:CheckBox ID="CHKMOB" runat="server" /><img
                        src="../images/TreeImages/mobile_sms.gif" />����Ϣ</td>
    </tr>
</table>
		</div>
		<script>
		<%=PiLiangSet %>
		</script>
	</form>
</body>
</html>