﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Navigation_Menu.aspx.cs" Inherits="OMD_Navigation_Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table style="height: 100px">
            <tr>
                <td style="width: 100px; height: 12px; text-align: center; background-color: #ccccff;">
                    <a href="./DeMand/Demand_register.aspx" target="main" > 个人统计</a>&nbsp;<br /><br />
                </td>
                <td style="width: 100px; height: 23px; text-align: center; background-color: #ccccff;">
                    <span style="color: #0000ff; text-decoration: underline"> 
                        <a href="registration.aspx" target="main" >添加信息</a><br /><br />
                    </span><br />
                </td>
                <td style="width: 100px; height: 23px; text-align: center; background-color: #ccccff;">
                    <span style="color: #0000ff; text-decoration: underline; background-color: #ccccff;">
                        <a href="Personal_Query.aspx" target="main" >修改密码</a><br /><br /><br />
                    </span>
                </td>
                <td style="width: 100px; height: 23px; text-align: center; background-color: #ccccff;">
                    <span style="color: #0000ff; text-decoration: underline; background-color: #ccccff;">
                        <a href="./DeMand/Demand_register.aspx" target="main" >需求提交</a><br /><br /><br />
                    </span>
                </td>
                <td style="width: 100px; height: 23px; text-align: center; background-color: #ccccff;">
                    <span style="color: #0000ff; text-decoration: underline; background-color: #ccccff;">
                        <a href="./DeMand/Demand_Check.aspx" target="main" >需求审核</a><br /><br /><br />
                    </span>
                </td>
                <td style="width: 100px; height: 23px; text-align: center; background-color: #ccccff;">
                    <span style="color: #0000ff; text-decoration: underline; background-color: #ccccff;">
                        <a href="./DeMand/Demand_Distribution.aspx.aspx" target="main" >需求分配</a><br /><br /><br />
                    </span>
                </td>
                <td style="width: 100px; height: 23px; text-align: center; background-color: #ccccff;">
                    <span style="color: #0000ff; text-decoration: underline; background-color: #ccccff;">
                        <a href="./DeMand/Demand_Following.aspx.aspx" target="main" >需求处理</a><br /><br /><br />
                    </span>
                </td>
                 <td style="width: 100px; height: 23px; text-align: center; background-color: #ccccff;">
                    <span style="color: #0000ff; text-decoration: underline; background-color: #ccccff;">
                        <a href="./DeMand/Demand_Distribution.aspx.aspx" target="main" >需求查询</a><br /><br /><br />
                    </span>
                </td>

            </tr>

        </table>
    </form>
</body>
</html>
