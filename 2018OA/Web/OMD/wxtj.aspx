<%@ Page Language="C#" AutoEventWireup="true" CodeFile="wxtj.aspx.cs" Inherits="wxtj" Debug="true" %>
<html>
	<head>
		<title><%=System.Configuration.ConfigurationManager.AppSettings["SYSTitle"]%>延迟</title>
       
  <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
  <script src="../JS/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
   <script src="../JS/My97DatePicker/jquery-1.8.3.min.js" type="text/javascript"></script>   
    <script src="../JS/My97DatePicker/highcharts.js" type="text/javascript"></script>
    <script src="../JS/My97DatePicker/highcharts-more.js" type="text/javascript"></script>
        <script src="../JS/My97DatePicker/funnel.js" type="text/javascript"></script>
    <script  language="javascript">
        
        var Xdata ;//= <%=get_XAxisCategories()%>
        var Xdata2;//= <%=get_XAxisData()%>
        var value;
        $(function () {
            value = <%=Codestr%>
            $('#container18').highcharts({
                chart: {
                    type: 'column'
                },
                title: {
                    text: '科室工作量排行'
                },
                subtitle: {
                    text: '数据截止 2017-03，来源: <a href="https://en.wikipedia.org/wiki/List_of_cities_proper_by_population">Wikipedia</a>'
                },
                xAxis: {
                    type: 'category',
                    labels: {
                        rotation: -45  // 设置轴标签旋转角度
                    }
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: '次数'
                    }
                },
                legend: {
                    enabled: false
                },
                tooltip: {
                    pointFormat: '派工总量: <b>{point.y:.1f} 百万</b>'
                },
                series: [{
                    name: '总派工量',
                    data: [
                        
                        
                         <%=Codestr%> // 取后台变量显示出来 
                    ],
                    dataLabels: {
                        enabled: true,
                        rotation: -90,
                        color: '#FFFFFF',
                        align: 'right',
                        format: '{point.y:.1f}', // :.1f 为保留 1 位小数
                        y: 10
                    }
                }]
            });
        });
        var chart;
        $(document).ready(function () {

            // Build the chart
            $('#container7').highcharts({
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false
                },
                title: {
                    text: '2010年浏览器市场份额'
                },
                tooltip: {
                    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            color: '#000000',
                            connectorColor: '#000000',
                            format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                        },
                        showInLegend: true
                    }
                },
                series: [{
                    type: 'pie',
                    name: '百分比：',
                    data: [
                        <%=percentage_str%>
                    ]
                }]
            });
        });
        



    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button id="test" onclick="type_SQLquery" runat="server"></asp:Button>
        <iframe src="Navigation_Menu.aspx" scrolling="no" name="left" style=" height: 900px; width:150px;" ></iframe>
        <iframe src="Personal_Query.aspx" scrolling="yes" name="main"style="height: 900px; width:550px" id="IFRAME1" onclick="return IFRAME1_onclick()" ></iframe> 
        <div id="container18" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
        <div id="container7" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
    </form>
</body>
</html>
