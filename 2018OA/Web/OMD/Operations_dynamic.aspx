<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Operations_dynamic.aspx.cs" Inherits="Operations_dynamic" %>
<html>
	<head>
		<title><%=System.Configuration.ConfigurationManager.AppSettings["SYSTitle"]%></title>
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
        

</head>
<SCRIPT LANGUAGE="JavaScript">
		  		  var a;    
          function CheckValuePiece(){
           if(window.document.form1.GoPage.value == "")
            {
              alert("��������ת��ҳ�룡");
              window.document.form1.GoPage.focus();
              return false; 
            }
           return true;
           }
           function CheckAll(){            
            if(a==1)
            {
            for(var i=0;i<window.document.forms['form1'].elements.length;i++)
               {                
                  var e = form1.elements[i];
                  e.checked =false;                  
               }
               a=0;
           }       
           else
           {
                for(var i=0;i<window.document.forms['form1'].elements.length;i++)
               {                
                  var e = form1.elements[i];
                  e.checked =true;                  
               }
               a=1;
           }     
         }
           function CheckDel(){
             var number=0;
             for(var i=0;i<window.document.forms['form1'].elements.length;i++)
               {
                  var e = form1.elements[i];
                  if (e.Name != "CheckBoxAll")
                  {
                    if(e.checked==true)
                    {
                        number=number+1;
                    }
                  }
               }
               if(number==0)
                {
                  alert("��ѡ����Ҫɾ�����");
                  return false;
                }
               if (window.confirm("��ȷ��ɾ����"))
				{
				  return true;
				}
				else
				{
				  return false;
				}
             } 
             
             function CheckModify(){
             var Modifynumber=0;
             for(var i=0;i<window.document.forms['form1'].elements.length;i++)
               {
                  var e = form1.elements[i];
                  if (e.Name != "CheckBoxAll")
                  {
                    if(e.checked==true)
                    {
                        Modifynumber=Modifynumber+1;
                    }
                  }
               }
               if(Modifynumber==0)
                {
                  alert("������ѡ��һ�");
                  return false;
                }
                if(Modifynumber>1)
                {
                  alert("ֻ����ѡ��һ�");
                  return false;
                }
               
				  return true;							
             }
             
             
             
		</SCRIPT>  
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" ></asp:ScriptManager>  
    <div>    
     <table style="width: 100%" border="0" cellpadding="0" cellspacing="0">            
            <tr>
                <td valign="middle" style="border-bottom: #006633 1px dashed; height: 30px; ">&nbsp;<img src="../images/BanKuaiJianTou.gif" />
                <a class="hei" href="../Main/MyDesk.aspx">����</a>&nbsp;>>&nbsp;ά��Ա��̬
                </td>
                <td align="right" valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">
                    �ӵ������뿨�ţ�<asp:TextBox  ID="SeachKey" runat="server" CssClass="Boxx" Width="120px" OnTextChanged="SeachKeyTextChanged" AutoPostBack="True"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;��ѯ��<asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem Value="ȫ����Ա">ȫ����Ա</asp:ListItem>
					<asp:ListItem Value="����ά����Ա">����ά����Ա</asp:ListItem>
					<asp:ListItem Value="��Ϣά����Ա">��Ϣά����Ա</asp:ListItem>
			        <asp:ListItem Value="ҽ���豸ά����Ա">ҽ���豸ά����Ա</asp:ListItem>
                     <asp:ListItem Value="����ά����Ա">����ά����Ա</asp:ListItem>
					</asp:DropDownList>
                     <asp:ImageButton ID="ImageButton4" runat="server" ImageAlign="AbsMiddle" ImageUrl="../images/Button/BtnSerch.jpg" OnClick="ImageButton4_Click" />
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    ���У�<asp:DropDownList ID="call" runat="server"></asp:DropDownList>
                     <asp:Button ID="Button1" runat="server" Text="����"  onclick="Button1_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="../images/Button/JianGe.jpg" /><img class="HerCss" onclick="javascript:window.history.go(-1)" src="../images/Button/BtnExit.jpg" />&nbsp;</td>
            </tr>
        </table>
        
    </div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"> <ContentTemplate></ContentTemplate> <Triggers> <asp:AsyncPostBackTrigger ControlID="ImageButton4" EventName="Click" />  </Triggers> </asp:UpdatePanel>
    <asp:Timer ID="timerTest" runat="server" Interval="10000" OnTick="timerTest_Tick">
        </asp:Timer>
        <table style="width: 100%">
            <tr>
            <td ><asp:GridView ID="GVData" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
                    BorderStyle="Groove" BorderWidth="1px" OnRowDataBound="GVData_RowDataBound" PageSize="15"
                    Width="100%">
                    <PagerSettings Mode="NumericFirstLast" Visible="False" />
                    <PagerStyle BackColor="LightSteelBlue" HorizontalAlign="Right" />
                    <HeaderStyle BackColor="#F3F3F3" Font-Size="12px" ForeColor="Black" Height="20px" /><AlternatingRowStyle BackColor="WhiteSmoke" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="LabVisible" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "ID")%>'
                                    Visible="False"></asp:Label><asp:CheckBox ID="CheckSelect" runat="server" />
                            </ItemTemplate>
                            <HeaderStyle Width="20px" />
                            <HeaderTemplate>
                                <input id="CheckBoxAll" onclick="CheckAll()"  type="checkbox" />
                            </HeaderTemplate>
                        </asp:TemplateField>
					<asp:BoundField DataField="jiaose" HeaderText="����" HeaderStyle-Width="40px" ></asp:BoundField>  
                    <asp:BoundField DataField="Serils" HeaderText="����" HeaderStyle-Width="50px"  ></asp:BoundField> 
                     <asp:BoundField DataField="TrueName" HeaderText="�û���" HeaderStyle-Width="60px" ></asp:BoundField>
                        
           <asp:TemplateField HeaderText="״̬"  ItemStyle-Width="110px"   ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
           <ItemStyle HorizontalAlign="center"    Width="110px" />
            <ItemTemplate>
               <%# GetOrderStateYN(DataBinder.Eval(Container.DataItem, "truename"))%>    <!username  truename>
          </ItemTemplate> 
          <HeaderStyle HorizontalAlign="center" Width="110px"   />     
        </asp:TemplateField>
<asp:BoundField DataField="DispatchingDate" HeaderText="�ɹ�ʱ��" HeaderStyle-Width="50px" ></asp:BoundField>
                        <asp:BoundField DataField="orderdate" HeaderText="�ӵ�ʱ��" HeaderStyle-Width="50px" ></asp:BoundField>
			<asp:TemplateField HeaderText="��̬"   ItemStyle-Width="420px"   ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
           <ItemStyle HorizontalAlign="center"     Width="420px" />
           <ItemTemplate>
               <%# GetOrderStateNN(DataBinder.Eval(Container.DataItem, "OrderNo"))%>
          </ItemTemplate>
          <HeaderStyle HorizontalAlign="center"  Width="420px"   />
        </asp:TemplateField>		
        
</Columns>
                    <RowStyle HorizontalAlign="Center" Height="25px" />
                <EmptyDataTemplate>
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td align="center" style="border-right: black 1px; border-top: black 1px;
                                border-left: black 1px; border-bottom: black 1px; background-color: whitesmoke;">
                                ���б�����ʱ�����ݣ�</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                </asp:GridView>
                </td>
        </tr>
        <tr>
            <td style="border-top: #000000 1px solid;border-bottom: #000000 1px solid">
                <asp:ImageButton ID="BtnFirst" runat="server" CommandName="First" ImageUrl="../images/Button/First.jpg"
                    OnClick="PagerButtonClick" />
                <asp:ImageButton ID="BtnPre" runat="server" CommandName="Pre" ImageUrl="../images/Button/Pre.jpg"
                    OnClick="PagerButtonClick" />
                <asp:ImageButton ID="BtnNext" runat="server" CommandName="Next" ImageUrl="../images/Button/Next.jpg"
                    OnClick="PagerButtonClick" />
                <asp:ImageButton ID="BtnLast" runat="server" CommandName="Last" ImageUrl="../images/Button/Last.jpg"
                    OnClick="PagerButtonClick" />
                &nbsp;��<asp:Label ID="LabCurrentPage" runat="server" Text="Label"></asp:Label>ҳ&nbsp; ��<asp:Label
                    ID="LabPageSum" runat="server" Text="Label"></asp:Label>ҳ&nbsp;
                <asp:TextBox ID="TxtPageSize" runat="server" CssClass="TextBoxCssUnder2" Height="20px"
                    Width="35px">15</asp:TextBox>
                ��ÿҳ &nbsp; ת����<asp:TextBox ID="GoPage" runat="server" CssClass="TextBoxCssUnder2"
                    Height="20px" Width="33px"></asp:TextBox>
                ҳ&nbsp;
                <asp:ImageButton ID="ButtonGo" runat="server" OnClientClick="javascript:return CheckValuePiece();"  ImageUrl="../images/Button/Jump.jpg" OnClick="ButtonGo_Click" /></td>
        </tr>
        </table>
    </form>
</body>
</html>
