<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Operations_Print.aspx.cs" Inherits="Operations_Print" %>




<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="/css/knetPrint.css" type="text/css">

<script type="text/javascript" language="javascript">
    function preview() {
        bdhtml = window.document.body.innerHTML;
        sprnstr = "<!--startprint-->";
        eprnstr = "<!--endprint-->";
        prnhtml = bdhtml.substr(bdhtml.indexOf(sprnstr) + 17);
        prnhtml = prnhtml.substring(0, prnhtml.indexOf(eprnstr));
        window.document.body.innerHTML = prnhtml;
        window.print();
        window.document.body.innerHTML = bdhtml;

    }
</script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0">
    <form id="form1" runat="server">
    <div style="width:1075px; height:1567px">
<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="93%" height="30" align="center" style="border-bottom:#333333 1px dotted;"><img src="/images/print.gif" width="36" height="34" border="0" style="cursor:hand;" onClick="preview();window.close()" /></td>
    <td width="7%" height="30" align="left" style="border-bottom:#333333 1px dotted;"><img src="/images/Close.gif" width="32" height="32" border="0" style="cursor:hand;" onClick="window.close()" ></td>
  </tr>
</table>
<!--startprint-->
        <table  width="95%" height="10" border="0" align="center" cellpadding="0" cellspacing="0" style="font-size:12px;">
             
        <tr>
             <td width="10%"   style="border-right:#333333 1px dashed;"></td>
          <td width="3%"  ></td>
         <td width="87%"></td>
        </tr>
</table>
<table width="95%" height="45" border="0" align="center" cellpadding="0" cellspacing="0" style="font-size:27px; font-weight:bolder; font-family:LiSu;">  
    
    <tr height="45">
       <td width="10%" style="border-right:#333333 1px dashed;"></td>
          <td width="3%" ></td>
        <td width="55%" align="left">临床工程信息部维护/维修单</td>
       <%-- <td width="84%" align="center"   style="background-image:url(../images/Orderprint.gif);">--%>
             <td width="29%" align="right"   >
            <table width="100%" style="font-size:12px; font-weight:normal; font-family:SimSun;" >
                
                <tr><td  height="20"></td></tr>
                <tr>
                    <td height="10" width="100%" align="right">工单号：<asp:Label ID="OrderNo" runat="server"></asp:Label></td>
               </tr>
                <tr>
                    <td height="15" align="right">□机电 □信息 □医疗设备 □其他</td>
                </tr>
            </table>
        </td>
        <td width="3%"></td>
   </tr> 
</table>
<table  width="95%" height="20" border="0" align="center" cellpadding="0" cellspacing="0" style="font-size:12px;">
             
        <tr>
         <td width="10%" height="20" style="border-right:#333333 1px dashed;"></td>
          <td width="3%" height="20"></td>
         <td width="21%" height="20" align="left" style="border-bottom:#333333 1px solid;">报修科室：<asp:Label ID="RepairDepartment" runat="server"></asp:Label></td>    
        <td width="21%" align="left" style="border-bottom:#333333 1px solid;">报修人：<asp:Label ID="RepairPeople" runat="server"></asp:Label> </td>
        <td width="21%" align="left" style="border-bottom:#333333 1px solid;">报修电话：<asp:Label ID="RepairCall" runat="server"></asp:Label> </td>
        <td width="21%" align="left" style="border-bottom:#333333 1px solid;"> 报修时间：<asp:Label ID="repairdate" runat="server"></asp:Label></td>
         <td width="3%"></td>     
        </tr>
</table>
 <table  width="95%" height="74" border="0" align="center" cellpadding="0" cellspacing="0" style="font-size:12px;">
             
        <tr>
         <td width="10%" height="74" style="border-right:#333333 1px dashed;"></td>
          <td width="3%" height="74"></td>
          <td width="2%"align="center" style="border-bottom:#333333 1px solid; border-left:#333333 1px solid; border-right:#333333 1px solid; background-color: #D6E2F3;">基本情况</td>
         <td width="82%" align="left" style="border-bottom:#333333 1px solid;  border-right:#333333 1px solid;">
            <table width="100%"  style="font-size:12px;" height="17" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr><td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid; " width="10%" align="center">故障时间</td>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid; " width="30%" align="left">&nbsp;<asp:Label ID="FauleDate" runat="server"></asp:Label> </td>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid; " width="10%" align="center">故障地点</td>
                    <td style="border-bottom:#333333 1px solid;" width="50%" align="left">&nbsp;<asp:Label ID="CunfangAddr" runat="server"></asp:Label> </td></tr>
            </table>
             <table width="100%"  style="font-size:12px;" height="40" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr><td style="border-bottom:#333333 1px solid;  border-right:#333333 1px solid; " width="10%" align="center">故障现象</td>
                    <td style="border-bottom:#333333 1px solid;" width="90%" align="left">&nbsp;<asp:Label ID="Phenomenon" width="95%" Height="32" style="word-break:break-all;word-wrap:break-word" runat="server"></asp:Label> </td>
                </tr>
            </table>
             <table width="100%"  style="font-size:12px;" height="17" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr><td style="border-right:#333333 1px solid; " width="10%" align="center">服务编码</td>
                    <td style="border-right:#333333 1px solid; " width="15%" align="left">&nbsp;<asp:Label ID="FauleEquipment" runat="server"></asp:Label> </td>
                    <td style=" border-right:#333333 1px solid; " width="10%" align="center">设备名称</td>
                    <td style="border-right:#333333 1px solid;" width="15%" align="left">&nbsp;<asp:Label ID="EquipmentName" runat="server"></asp:Label> </td>
                    <td style=" border-right:#333333 1px solid; " width="10%" align="center">设备型号</td>
                    <td style=" border-right:#333333 1px solid; " width="15%" align="left">&nbsp;<asp:Label ID="XingHao" runat="server"></asp:Label> </td>
                    <td style="border-right:#333333 1px solid; " width="10%" align="center">设备类型</td>
                    <td   width="15%" align="left"><asp:Label ID="EquipmentType" runat="server"></asp:Label> </td>
                </tr>
            </table>
         </td>    
               <td width="3%"></td>     
        </tr>
</table>  
        <table  width="95%" height="201" border="0" align="center" cellpadding="0" cellspacing="0" style="font-size:12px;">
             
        <tr>
         <td width="10%" height="201" style="border-right:#333333 1px dashed;" align="center"  style="font-size:19px; font-color:#333333">装<br />订<br />区</td>
          <td width="3%" height="201"></td>
          <td width="2%" height="201" align="center" style="border-bottom:#333333 1px solid; border-left:#333333 1px solid; border-right:#333333 1px solid; background-color: #D6E2F3;" >维修基本情况</td>
         <td width="82%" height="201" align="left" style="border-bottom:#333333 1px solid;  border-right:#333333 1px solid;">
           
             <table width="100%"  style="font-size:12px;" height="60" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr><td style="border-bottom:#333333 1px solid;  border-right:#333333 1px solid; " width="10%" align="center">故障原因<br />及处理</td>
                    <td style="border-bottom:#333333 1px solid;" width="90%" align="left">&nbsp;</td>
                </tr>
            </table>
                <table width="100%"  style="font-size:12px;" height="34" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid; " width="10%" align="center">故障类型</td>
                    <td style="border-bottom:#333333 1px solid; " width="90%" align="left">&nbsp;□硬件故障 □业务系统故障 □应用软件故障 □系统软件故障 □新装 □更换 □迁移 □其他</td>
                    </tr>
                     <tr>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid; " width="10%" align="center">故障分析</td>
                    <td style="border-bottom:#333333 1px solid; " width="90%" align="left">&nbsp;□设备老化 □操作不当 □接触不良 □系统问题 □其他</td>
                    </tr>
                    
            </table>
             <table width="100%"  style="font-size:12px;" height="17" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                    <td style="border-bottom:#333333 1px solid;  " width="100%" align="left">&nbsp;使用/更换配件情况： 是否更换？ □否 □是（如选择是，请在以下写明配件明细）</td>
                    </tr>
            </table>
              <table width="100%"  style="font-size:12px;" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr><td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;"  width="5%"align="center" height="15">序号</td>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;"  width="30%"align="center">名称</td>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;"   width="20%"align="center">规格/型号</td>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;"  width="5%"align="center">单位</td>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;" width="5%"align="center">数量</td>
                    <td style="border-bottom:#333333 1px solid; " width="35%"align="center">备注</td>     
                </tr>
                   <tr><td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;" width="5%"align="center">1</td>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;"align="right" width="30%"></td>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;" align="right" width="20%"></td>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;"align="right" width="5%"></td>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;"align="right" width="5%"></td>
                    <td style="border-bottom:#333333 1px solid; "align="right" width="35%"></td>
                </tr>
                      <tr><td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;"  width="5%" align="center">2</td>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;"align="right" width="30%"></td>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;" align="right" width="20%"></td>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;"align="right" width="5%"></td>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;"align="right" width="5%"></td>
                    <td style="border-bottom:#333333 1px solid;"align="right" width="35%"></td>
                </tr>
                   <tr><td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;"  width="5%"align="center">3</td>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;"align="right" width="30%"></td>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;" align="right" width="20%"></td>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;"align="right" width="5%"></td>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;"align="right" width="5%"></td>
                    <td style="border-bottom:#333333 1px solid;"align="right" width="35%"></td>
                </tr>
                   <tr><td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;" width="5%"align="center">4</td>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;"align="right" width="30%"></td>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;" align="right" width="20%"></td>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;"align="right" width="5%"></td>
                    <td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid;"align="right" width="5%"></td>
                    <td style="border-bottom:#333333 1px solid;"align="right" width="35%"></td>
              
           
            </table>
             <table width="100%"  style="font-size:12px;" height="17" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr><td style="border-bottom:#333333 1px solid; border-right:#333333 1px solid; " width="50%" align="left">&nbsp;是否送修？□否  □是（送修单号：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;）</td>
                    <td style="border-bottom:#333333 1px solid; " width="50%" align="left">&nbsp;是否报废？□否  □是（报废单号：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;）</td></tr>
            </table>
              <table width="100%"  style="font-size:12px;" height="17" border="0" align="center" cellpadding="0" cellspacing="0">
                 <tr>
                    <td style="border-right:#333333 1px solid; " width="10%" align="center">解决情况</td>
                    <td style=" border-right:#333333 1px solid; " width="28%" align="center">&nbsp;□解决 □未解决 □转单</td>
                     <td style=" border-right:#333333 1px solid; " width="12%" align="center">维修员签字</td>
                    <td  width="50%" align="right">&nbsp;&nbsp;&nbsp;年&nbsp;&nbsp;&nbsp;月&nbsp;&nbsp;&nbsp;日</td>
                    </tr>
            </table>
         </td>    
               <td width="3%"></td>     
        </tr>
</table>     
        <table  width="95%" height="50" border="0" align="center" cellpadding="0" cellspacing="0" style="font-size:12px;">
             
        <tr>
         <td width="10%" height="100" style="border-right:#333333 1px dashed;"></td>
          <td width="3%" height="100"></td>
          <td width="2%" height="100" align="center" style="border-bottom:#333333 1px solid; border-left:#333333 1px solid; border-right:#333333 1px solid; background-color: #D6E2F3;">科室确认</td>
         <td width="82%" height="100" align="left" style="border-bottom:#333333 1px solid;  border-right:#333333 1px solid;">
             <table style="font-size:12px;" width="100%">
                 <tr><td align="left" height="3">对本次维修评价：□满意 □基本满意 □不满意 </td></tr>
                 <tr><td align="left" height="3">意见及建议：</td></tr>
                 <tr><td align="left" height="50"></td></tr>
                 <tr><td align="right" height="15">
                   科室负责人签名：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年&nbsp;&nbsp;&nbsp;月&nbsp;&nbsp;&nbsp;日</td></tr>
             </table>
         </td>    
               <td width="3%"></td>     
        </tr>
</table>  
<table  width="95%" height="15" border="0" align="center" cellpadding="0" cellspacing="0" style="font-size:12px; ">
             
        <tr>
        <td width="10%"  style="border-right:#333333 1px dashed;"></td>
          <td width="3%" ></td>
         <td width="12%" height="15" align="left">派工员：<asp:Label ID="DispatchingPeople" runat="server"></asp:Label></td>    
        <td width="23%" align="left"  >派工时间：<asp:Label ID="DispatchingDate" runat="server"></asp:Label> </td>
        <td width="26%" align="left" > 维修员：<asp:Label ID="HeadPeople" runat="server"></asp:Label></td>
        <td width="23%" align="left" > 打印时间：<asp:Label ID="Orderdate" runat="server"></asp:Label></td>
         <td width="3%"></td>     
        </tr>
</table>    
        <table  width="95%" height="5" border="0" align="center" cellpadding="0" cellspacing="0" style="font-size:12px;">
             
        <tr>
            <td width="10%"   style="border-right:#333333 1px dashed;"></td>
          <td width="3%"  ></td>
         <td  width="87%" ></td>
        </tr>
</table>
<!--endprint-->
    </div>
    </form>
</body>
</html>
