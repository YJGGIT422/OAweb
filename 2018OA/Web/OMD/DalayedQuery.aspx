<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DalayedQuery.aspx.cs" Inherits="OMD_DalayedQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
    <SCRIPT LANGUAGE="JavaScript">
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
    <div> 
     <table style="width: 100%" border="0" cellpadding="0" cellspacing="0">            
            <tr>
                <td valign="middle" style="border-bottom: #006633 1px dashed; height: 30px; ">&nbsp;<img src="../images/BanKuaiJianTou.gif" />
                <a class="hei" href="../Main/MyDesk.aspx">桌面</a>&nbsp;>>&nbsp;延迟查询
                </td>
                <td align="right" valign="middle" style="border-bottom: #006633 1px dashed; height: 30px;">
					查询：<asp:DropDownList ID="DropDownList2" runat="server">
					<asp:ListItem Value="OrderNo">维修单号</asp:ListItem>
					<asp:ListItem Value="FauleEquipment">维修服务编号</asp:ListItem>
			        <asp:ListItem Value="RepairDepartment">报修科室</asp:ListItem>
					</asp:DropDownList>
                    <asp:TextBox ID="TextBox3" runat="server" Width="80px"></asp:TextBox>
                     <asp:ImageButton ID="ImageButton4" runat="server" ImageAlign="AbsMiddle" ImageUrl="../images/Button/BtnSerch.jpg" OnClick="ImageButton4_Click" />
                   <img src="../images/Button/JianGe.jpg" /><img class="HerCss" onclick="javascript:window.history.go(-1)" src="../images/Button/BtnExit.jpg" />&nbsp;</td>
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
                                <asp:Label ID="LabVisible" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "ID")%>'
                                    Visible="False"></asp:Label><asp:CheckBox ID="CheckSelect" runat="server" />
                            </ItemTemplate>
                            <HeaderStyle Width="20px" />
                            <HeaderTemplate>
                                <input id="CheckBoxAll" onclick="CheckAll()"  type="checkbox" />
                            </HeaderTemplate>
                        </asp:TemplateField>
					
                    <asp:BoundField DataField="OrderNo" HeaderText="维修单号" HeaderStyle-Width="40px" ></asp:BoundField>
					<asp:BoundField DataField="RepairDepartment" HeaderText="报修科室" HeaderStyle-Width="50px" ></asp:BoundField>
                    <asp:BoundField DataField="RepairPeople" HeaderText="报修人" HeaderStyle-Width="30px"  ></asp:BoundField>      
					<asp:BoundField DataField="DelayPeople" HeaderText="延迟人" HeaderStyle-Width="100px" ></asp:BoundField>  
					<asp:BoundField DataField="DelayDate" HeaderText="延迟时间" HeaderStyle-Width="50px" ></asp:BoundField>     
					<asp:BoundField DataField="Phenomenon" HeaderText="故障现象" HeaderStyle-Width="300px"  ></asp:BoundField>       
					<asp:BoundField DataField="HeadPeople" HeaderText="维修员" HeaderStyle-Width="100px" ></asp:BoundField>
                   <asp:TemplateField HeaderText="操作"  SortExpression="OrderNo" HeaderStyle-Font-Size="12px"  ItemStyle-Width="200px"   ItemStyle-HorizontalAlign="center" HeaderStyle-HorizontalAlign="center"  ItemStyle-VerticalAlign="Bottom" >
          <ItemTemplate>
             <a href="#"  onclick="javascript:window.open('registration_result.aspx?ID=<%# DataBinder.Eval(Container.DataItem, "ID")%>','_self');"><asp:Image ID="Image3" runat="server"  ImageUrl="../images/Button/result.jpg"  ToolTip="结果登记" /></a> 
             &nbsp; &nbsp;<a href="#"  onclick="javascript:window.open('registration_return.aspx?ID=<%# DataBinder.Eval(Container.DataItem, "ID")%>','_self');"><asp:Image ID="Image1" runat="server"  ImageUrl="../images/Button/BtnReturn.jpg"  ToolTip="转单" /></a> 
             &nbsp; &nbsp;<a href="#"  onclick="javascript:window.open('registration_stop.aspx?ID=<%# DataBinder.Eval(Container.DataItem, "ID")%>','_self');"><asp:Image ID="Image2" runat="server"  ImageUrl="../images/Button/BtnStop.jpg"  ToolTip="延迟" /></a> 
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
                <asp:ImageButton ID="BtnFirst" runat="server" CommandName="First" ImageUrl="../images/Button/First.jpg"
                    OnClick="PagerButtonClick" />
                <asp:ImageButton ID="BtnPre" runat="server" CommandName="Pre" ImageUrl="../images/Button/Pre.jpg"
                    OnClick="PagerButtonClick" />
                <asp:ImageButton ID="BtnNext" runat="server" CommandName="Next" ImageUrl="../images/Button/Next.jpg"
                    OnClick="PagerButtonClick" />
                <asp:ImageButton ID="BtnLast" runat="server" CommandName="Last" ImageUrl="../images/Button/Last.jpg"
                    OnClick="PagerButtonClick" />
                &nbsp;第<asp:Label ID="LabCurrentPage" runat="server" Text="Label"></asp:Label>页&nbsp; 共<asp:Label
                    ID="LabPageSum" runat="server" Text="Label"></asp:Label>页&nbsp;
                <asp:TextBox ID="TxtPageSize" runat="server" CssClass="TextBoxCssUnder2" Height="20px"
                    Width="35px">15</asp:TextBox>
                行每页 &nbsp; 转到第<asp:TextBox ID="GoPage" runat="server" CssClass="TextBoxCssUnder2"
                    Height="20px" Width="33px"></asp:TextBox>
                页&nbsp;
                <asp:ImageButton ID="ButtonGo" runat="server" OnClientClick="javascript:return CheckValuePiece();"  ImageUrl="../images/Button/Jump.jpg" OnClick="ButtonGo_Click" /></td>
        </tr>
        </table>
    </form>
</body>
</html>
