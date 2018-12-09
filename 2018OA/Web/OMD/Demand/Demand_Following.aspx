<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demand_Following.aspx.cs" Inherits="OMD_Demand_Demand_Following" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
        <SCRIPT language="JavaScript" >
            var a;
            function CheckValuePiece() {
                if (window.document.form1.GoPage.value == "") {
                    alert("请输入跳转的页码！");
                    window.document.form1.GoPage.focus();
                    return false;
                }
                return true;
            }
            function CheckAll() {
                if (a == 1) {
                    for (var i = 0; i < window.document.forms['form1'].elements.length; i++) {
                        var e = form1.elements[i];
                        e.checked = false;
                    }
                    a = 0;
                }
                else {
                    for (var i = 0; i < window.document.forms['form1'].elements.length; i++) {
                        var e = form1.elements[i];
                        e.checked = true;
                    }
                    a = 1;
                }
            }
            function CheckDel() {
                var number = 0;
                for (var i = 0; i < window.document.forms['form1'].elements.length; i++) {
                    var e = form1.elements[i];
                    if (e.Name != "CheckBoxAll") {
                        if (e.checked == true) {
                            number = number + 1;
                        }
                    }
                }
                if (number == 0) {
                    alert("请选择需要删除的项！");
                    return false;
                }
                if (window.confirm("你确认删除吗？")) {
                    return true;
                }
                else {
                    return false;
                }
            }

            function CheckModify() {
                var Modifynumber = 0;
                for (var i = 0; i < window.document.forms['form1'].elements.length; i++) {
                    var e = form1.elements[i];
                    if (e.Name != "CheckBoxAll") {
                        if (e.checked == true) {
                            Modifynumber = Modifynumber + 1;
                        }
                    }
                }
                if (Modifynumber == 0) {
                    alert("请至少选择一项！");
                    return false;
                }
                if (Modifynumber > 1) {
                    alert("只允许选择一项！");
                    return false;
                }

                return true;
            }
</SCRIPT> 
<body>
    <form id="form1" runat="server">
 <table style="width: 100%" border="0" cellpadding="0" cellspacing="0">            
            <tr>
                <td valign="middle" style="border-bottom: #006633 1px dashed; height: 30px; ">&nbsp;<img src="../../images/BanKuaiJianTou.gif" />
                <a class="hei" href="../Main/MyDesk.aspx">桌面</a>&nbsp;>>&nbsp;需求处理
                </td>
                <td align="right" valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">
					查询：<asp:DropDownList ID="DropDownList2" runat="server">
					<asp:ListItem Value="Number">需求编号</asp:ListItem>
					<asp:ListItem Value="Registerdate">登记日期</asp:ListItem>
			        <asp:ListItem Value="Department">提出科室</asp:ListItem>
					</asp:DropDownList>
                    <asp:TextBox ID="TextBox3" runat="server" Width="80px"></asp:TextBox>
                     <asp:ImageButton ID="ImageButton4" runat="server" ImageAlign="AbsMiddle" ImageUrl="../../images/Button/BtnSerch.jpg" OnClick="ImageButton4_Click" />
                   <img src="../../images/Button/JianGe.jpg" /><img class="HerCss" onclick="javascript:window.history.go(-1)" src="../../images/Button/BtnExit.jpg" />&nbsp;</td>
            </tr>
        </table>
        
    </div>
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
                                <asp:Label ID="LabVisible" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Number")%>'
                                    Visible="False"></asp:Label><asp:CheckBox ID="CheckSelect" runat="server" />
                            </ItemTemplate>
                            <HeaderStyle Width="20px" />
                            <HeaderTemplate>
                                <input id="CheckBoxAll" onclick="CheckAll()"  type="checkbox" />
                            </HeaderTemplate>
                        </asp:TemplateField>
					
                    <asp:BoundField DataField="Number" HeaderText="需求编号" HeaderStyle-Width="40px" ></asp:BoundField>
					<asp:BoundField DataField="Registerdate" HeaderText="登记日期" HeaderStyle-Width="50px" ></asp:BoundField>
                    <asp:BoundField DataField="Registrant" HeaderText="登记人" HeaderStyle-Width="30px"  ></asp:BoundField>  
                    <asp:BoundField DataField="Auditor" HeaderText="审核人" HeaderStyle-Width="30px"  ></asp:BoundField>  
                    <asp:BoundField DataField="Examinedate" HeaderText="审核时间" HeaderStyle-Width="30px"  ></asp:BoundField>      
					<asp:BoundField DataField="Describe" HeaderText="需求描述" HeaderStyle-Width="400px" ></asp:BoundField>  
					<asp:BoundField DataField="Department" HeaderText="提出科室" HeaderStyle-Width="50px" ></asp:BoundField>     
					<asp:BoundField DataField="TYPE" HeaderText="需求类型" HeaderStyle-Width="100px"  ></asp:BoundField>       
					<asp:BoundField DataField="SoftWareType" HeaderText="软件类型" HeaderStyle-Width="100px" ></asp:BoundField>
                    <asp:BoundField DataField="Followupperson" HeaderText="处理人" HeaderStyle-Width="100px" ></asp:BoundField>
                    <asp:BoundField DataField="AuditOpinion" HeaderText="审核意见" HeaderStyle-Width="100px" ></asp:BoundField>
                    <asp:BoundField DataField="FeedBackCall" HeaderText="反馈电话" HeaderStyle-Width="100px" ></asp:BoundField>
                    <asp:BoundField DataField="EstimatedDate" HeaderText="预计时间" HeaderStyle-Width="100px" ></asp:BoundField>
                    
                   <asp:TemplateField HeaderText="操作"  SortExpression="OrderNo" HeaderStyle-Font-Size="12px"  ItemStyle-Width="100px"   ItemStyle-HorizontalAlign="center" HeaderStyle-HorizontalAlign="center"  ItemStyle-VerticalAlign="Bottom" >
          <ItemTemplate>

              <a href="#"  onclick="javascript:leftVal = (screen.width - 300) / 2;topVal = (screen.height - 500) / 2;window.open('DistributionBox.aspx?Number=<%# DataBinder.Eval(Container.DataItem, "Number")%>','_blank','width=450,height=150,toolbars=yes,resizable=yes,scrollbars=yes,left='+leftVal+',top='+topVal);"><asp:Image ID="Image3" runat="server"  ImageUrl="../../images/Button/Auditor.jpg"  ToolTip="处理" /></a> 
              &nbsp;&nbsp;
              <a href="#"  onclick="javascript:window.open('Rejected.aspx?ID=<%# DataBinder.Eval(Container.DataItem, "Number")%>','_self');"><asp:Image ID="Image1" runat="server"  ImageUrl="../../images/Button/refused.gif"  ToolTip="驳回" /></a> 
         </ItemTemplate>
        </asp:TemplateField>
        
</Columns>
                    <RowStyle HorizontalAlign="Center" Height="25px" />
                <EmptyDataTemplate>
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td align="center" style="border-right: black 1px; border-top: black 1px;
                                border-left: black 1px; border-bottom: black 1px; background-color: whitesmoke;">
                                该列表中暂时无数据！</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                </asp:GridView>
                </td>
        </tr>
        <tr>
            <td style="border-top: #000000 1px solid;border-bottom: #000000 1px solid">
                <asp:ImageButton ID="BtnFirst" runat="server" CommandName="First" ImageUrl="../../images/Button/First.jpg"
                    OnClick="PagerButtonClick" />
                <asp:ImageButton ID="BtnPre" runat="server" CommandName="Pre" ImageUrl="../../images/Button/Pre.jpg"
                    OnClick="PagerButtonClick" />
                <asp:ImageButton ID="BtnNext" runat="server" CommandName="Next" ImageUrl="../../images/Button/Next.jpg"
                    OnClick="PagerButtonClick" />
                <asp:ImageButton ID="BtnLast" runat="server" CommandName="Last" ImageUrl="../../images/Button/Last.jpg"
                    OnClick="PagerButtonClick" />
                &nbsp;第<asp:Label ID="LabCurrentPage" runat="server" Text="Label"></asp:Label>页&nbsp; 共<asp:Label
                    ID="LabPageSum" runat="server" Text="Label"></asp:Label>页&nbsp;
                <asp:TextBox ID="TxtPageSize" runat="server" CssClass="TextBoxCssUnder2" Height="20px"
                    Width="35px">15</asp:TextBox>
                行每页 &nbsp; 转到第<asp:TextBox ID="GoPage" runat="server" CssClass="TextBoxCssUnder2"
                    Height="20px" Width="33px"></asp:TextBox>
                页&nbsp;
                <asp:ImageButton ID="ButtonGo" runat="server" OnClientClick="javascript:return CheckValuePiece();"  ImageUrl="../../images/Button/Jump.jpg" OnClick="ButtonGo_Click" /></td>
        </tr>
        </table>
    </form>
</body>
</html>
