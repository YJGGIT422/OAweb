<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="OMD_test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="../JS/My97DatePicker/jquery-1.8.3.min.js" type="text/javascript"></script>   
    <script src="../JS/ECharts/echarts.js" type="text/javascript"></script>
    <script  type="text/javascript">
        // 路径配置
        require.config({
            paths: {
                echarts: 'echarts' //echarts路径
            }
        });
        // 使用
        require(
            [
                'echarts', //echarts路径
                'echarts/chart/bar', // 使用柱状图就加载bar模块，按需加载
                 'echarts/chart/line' // 使用柱状图就加载bar模块，按需加载
            ],

            function (ec) {
                // 基于准备好的dom，初始化echarts图表
                var myChart = ec.init(document.getElementById('main'));

                option = {
                    tooltip: {
                        trigger: 'axis'
                    },

                    //右侧工具栏
                    /* toolbox: {
                         show: true,
                         feature: {
                             mark: { show: true },
                             dataView: { show: true, readOnly: false },
                             magicType: { show: true, type: ['line', 'bar'] },
                             restore: { show: true },
                             saveAsImage: { show: true }
                         }
                     },
                     calculable: true,*/
                    legend: {
                        data: ['蒸发量', '降水量', '平均温度']
                    },
                    //横轴信息
                    xAxis: [
                        {
                            type: 'category',
                            data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月']
                        }
                    ],
                    //纵轴信息
                    yAxis: [
                            {
                                type: 'value',
                                name: '水量',
                                axisLabel: {
                                    formatter: '{value} ml'
                                }
                            },
                            {
                                type: 'value',
                                name: '温度',
                                axisLabel: {
                                    formatter: '{value} °C'
                                }
                            }
                    ],
                    //数据系列
                    series: [

                                {
                                    name: '蒸发量',
                                    type: 'bar',
                                    data: [2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20.0, 6.4, 3.3]
                                },
                                {
                                    name: '降水量',
                                    type: 'line',
                                    data: [2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6, 182.2, 48.7, 18.8, 6.0, 2.3]
                                },
                                {
                                    name: '平均温度',
                                    type: 'line',
                                    yAxisIndex: 1,
                                    data: [2.0, 2.2, 3.3, 4.5, 6.3, 10.2, 20.3, 23.4, 23.0, 16.5, 12.0, 6.2]
                                }
                    ]
                };




                // 为echarts对象加载数据 
                myChart.setOption(option);
            }
        );
        $(document).ready(function () {
            $('#containerx').highcharts({
                chart: {
                    spacing: [40, 0, 40, 0]
                },
                title: {
                    floating: true,
                    text: '圆心显示的标题'
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
                            format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                            style: {
                                color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                            }
                        },
                        point: {
                            events: {
                                mouseOver: function (e) {  // 鼠标滑过时动态更新标题
                                    // 标题更新函数，API 地址：https://api.hcharts.cn/highcharts#Chart.setTitle
                                    chart.setTitle({
                                        text: e.target.name + '\t' + e.target.y + ' %'
                                    });
                                }
                            }
                        },
                    }
                },
                series: [{
                    type: 'pie',
                    innerSize: '80%',
                    name: '市场份额',
                    data: [
                        { name: 'Firefox', y: 45.0, url: 'http://bbs.hcharts.cn' },
                        ['IE', 26.8],
                        {
                            name: 'Chrome',
                            y: 12.8,
                            sliced: true,
                            selected: true,
                            url: 'http://www.hcharts.cn'
                        },
                        ['Safari', 8.5],
                        ['Opera', 6.2],
                        ['其他', 0.7]
                    ]
                }]
            }, function (c) { // 图表初始化完毕后的会掉函数
                // 环形图圆心
                var centerY = c.series[0].center[1],
                    titleHeight = parseInt(c.title.styles.fontSize);
                // 动态设置标题位置
                c.setTitle({
                    y: centerY + titleHeight / 2
                });


            })

        })

        $(function () {
            $('#container2').highcharts({
                chart: {
                    spacing: [40, 0, 40, 0]
                },
                title: {
                    floating: true,
                    text: '圆心显示的标题'
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
                            format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                            style: {
                                color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                            }
                        },
                        point: {
                            events: {
                                /*mouseOver: function (e) {  // 鼠标滑过时动态更新标题
                                    // 标题更新函数，API 地址：https://api.hcharts.cn/highcharts#Chart.setTitle
                                    chart.setTitle({
                                        text: e.target.name + '\t' + e.target.y + ' %'
                                    });
                                }*/
                                 
                                 click: function(e) { // 同样的可以在点击事件里处理
                                     chart.setTitle({
                                         text: e.point.name+ '\t'+ e.point.y + ' %'
                                     });
                                 }
                            }
                        },
                    }
                },
                series: [{
                    type: 'pie',
                    innerSize: '80%',
                    name: '市场份额',
                    data: [
                        { name: 'Firefox', y: 45.0, url: 'http://bbs.hcharts.cn' },
                        ['IE', 26.8],
                        {
                            name: 'Chrome',
                            y: 12.8,
                            sliced: true,
                            selected: true,
                            url: 'http://www.hcharts.cn'
                        },
                        ['Safari', 8.5],
                        ['Opera', 6.2],
                        ['其他', 0.7]
                    ]
                }]
            }, function (c) { // 图表初始化完毕后的会掉函数
                // 环形图圆心
                var centerY = c.series[0].center[1],
                    titleHeight = parseInt(c.title.styles.fontSize);
                // 动态设置标题位置
                c.setTitle({
                    y: centerY + titleHeight / 2
                });
            

            })
        })



    </script>
</head>
<body>
    <form id="form1" runat="server">
    
    <div  id="main" style="min-width: 310px; height: 400px; margin: 0 auto" data-highcharts-chart="0">   </div>

    
    </form>
</body>
</html>
