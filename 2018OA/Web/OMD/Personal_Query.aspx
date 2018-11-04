<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Personal_Query.aspx.cs" Inherits="OMD_Personal_Query" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>个人查询</title>     
    <LINK href="../Style/Style.css" type="text/css" rel="STYLESHEET">
    <script src="../JS/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
    <script src="../JS/My97DatePicker/jquery-1.8.3.min.js" type="text/javascript"></script>   
    <script src="../JS/My97DatePicker/highcharts.js" type="text/javascript"></script>
    <script src="../JS/My97DatePicker/exporting.js" type="text/javascript"></script> 

    <script src="../JS/My97DatePicker/highcharts-more.js" type="text/javascript"></script>
    <script src="../JS/My97DatePicker/highcharts-3d.js" type="text/javascript"></script>
    
    <script src="../JS/My97DatePicker/funnel.js" type="text/javascript"></script>
    <script  language="javascript">
        $(function () {
            $('#container').highcharts({
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
            });
        
        
        });


        var chart = Highcharts.chart('container3', {
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
                    },
                    point: {
                        events: {
                            mouseOver: function (e) {  // 鼠标滑过时动态更新标题
                                // 标题更新函数，API 地址：https://api.hcharts.cn/highcharts#Chart.setTitle
                                chart.setTitle({
                                    text: e.target.name + '\t' + e.target.y + ' %'
                                });
                            }
                            , 
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
        });



     </script>

</head>
<body>
    <form id="form1" runat="server">
     <div id="container3" style="min-width:400px;height:400px">
        <div class="highcharts-container " id="highcharts-b89pdvf-0" style="width: 938px; height: 400px; text-align: left; line-height: normal; overflow: hidden; position: relative; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dir="ltr">
            <svg xmlns="http://www.w3.org/2000/svg" class="highcharts-root" style="font-family:&quot;Lucida Grande&quot;, &quot;Lucida Sans Unicode&quot;, Arial, Helvetica, sans-serif;font-size:12px;" viewBox="0 0 938 400" width="938" height="400" version="1.1">
                <desc>Created with Highcharts 6.1.2</desc>
                <defs>
                    <clipPath id="highcharts-b89pdvf-1">
                        <rect fill="none" x="0" y="0" width="938" height="320" />
                    </clipPath>
                </defs>
                <rect class="highcharts-background" fill="#ffffff" x="0" y="0" width="938" height="400" rx="0" ry="0" />
                <rect class="highcharts-plot-background" fill="none" x="0" y="40" width="938" height="320" />
                <rect class="highcharts-plot-border" fill="none" x="0" y="40" width="938" height="320" data-z-index="1" />
                <g class="highcharts-series-group" data-z-index="3"><g class="highcharts-series highcharts-series-0 highcharts-pie-series  highcharts-tracker" style="cursor:pointer;" transform="translate(0 40) scale(1)" data-z-index="0.1">
                    <path class="highcharts-halo highcharts-color-0" visibility="hidden" fill="#7cb5ec" fill-opacity="0.25" d="M 951.974 42 A 129 129 0 0 1 991.941 293.661 L 991.632 292.71 A 128 128 0 0 0 951.974 43 Z" data-z-index="-1" />
                    <path class="highcharts-point highcharts-color-0 " fill="#7cb5ec" stroke="#ffffff" stroke-linejoin="round" stroke-width="1" transform="translate(0)" d="M 468.974 42 A 129 129 0 0 1 508.941 293.661 L 500.953 269.129 A 103.2 103.2 0 0 0 468.979 67.8 Z" />
                    <path class="highcharts-point highcharts-color-1 " fill="#434348" stroke="#ffffff" stroke-linejoin="round" stroke-width="1" transform="translate(0)" d="M 508.819 293.701 A 129 129 0 0 1 342.612 196.83 L 367.89 191.664 A 103.2 103.2 0 0 0 500.855 269.161 Z" />
                    <path class="highcharts-point highcharts-point-select highcharts-color-2" fill="#90ed7d" stroke="#ffffff" stroke-linejoin="round" stroke-width="1" transform="translate(-10 -2)" d="M 342.587 196.703 A 129 129 0 0 1 362.707 97.905 L 383.966 112.524 A 103.2 103.2 0 0 0 367.869 191.563 Z" />
                    <path class="highcharts-point highcharts-color-3 " fill="#f7a35c" stroke="#ffffff" stroke-linejoin="round" stroke-width="1" transform="translate(0)" d="M 362.781 97.7988 A 129 129 0 0 1 414.71 53.9806 L 425.568 77.3845 A 103.2 103.2 0 0 0 384.024 112.439 Z" />
                    <path class="highcharts-point highcharts-color-4 " fill="#8085e9" stroke="#ffffff" stroke-linejoin="round" stroke-width="1" transform="translate(0)" d="M 414.827 53.9263 A 129 129 0 0 1 463.147 42.1329 L 464.317 67.9063 A 103.2 103.2 0 0 0 425.661 77.3411 Z" />
                    <path class="highcharts-point highcharts-color-5 " fill="#f15c80" stroke="#ffffff" stroke-linejoin="round" stroke-width="1" transform="translate(0)" d="M 463.276 42.1271 A 129 129 0 0 1 468.821 42.0001 L 468.857 67.8001 A 103.2 103.2 0 0 0 464.421 67.9017 Z" />
                </g>
                <g class="highcharts-markers highcharts-series-0 highcharts-pie-series " transform="translate(0 40) scale(1)" data-z-index="0.1" /></g>
                <g class="highcharts-exporting-group" data-z-index="3">
                    <g class="highcharts-button highcharts-contextbutton" stroke-linecap="round" transform="translate(914 40)">
                        <title>Chart context menu</title>
                        <rect class=" highcharts-button-box" fill="#ffffff" stroke="none" stroke-width="1" x="0.5" y="0.5" width="24" height="22" rx="2" ry="2" />
                        <path class="highcharts-button-symbol" fill="#666666" stroke="#666666" stroke-width="3" d="M 6 6.5 L 20 6.5 M 6 11.5 L 20 11.5 M 6 16.5 L 20 16.5" data-z-index="1" />
                        <text style="font-weight:normal;color:#333333;cursor:pointer;fill:#333333;" x="0" y="12" data-z-index="1"></text>
                    </g>
                </g>
                <text class="highcharts-subtitle" style="color:#666666;fill:#666666;" text-anchor="middle" x="469" y="54" data-z-index="4" /><text class="highcharts-title" style="color:#333333;font-size:18px;fill:#333333;" text-anchor="middle" x="469" y="220" data-z-index="4">
                    <tspan>Firefox	45 %</tspan></text><g class="highcharts-data-labels highcharts-series-0 highcharts-pie-series  highcharts-tracker" visibility="visible" style="cursor:pointer;" opacity="1" transform="translate(0 40) scale(1)" data-z-index="6">
                        <path class="highcharts-data-label-connector highcharts-color-0" fill="none" stroke="#7cb5ec" stroke-width="1" d="M 631.042 146.127 C 626.042 146.127 608.264 148.943 602.338 149.881 L 596.412 150.82" />
                        <path class="highcharts-data-label-connector highcharts-color-1" fill="none" stroke="#434348" stroke-width="1" d="M 383.924 308.364 C 388.924 308.364 397.989 292.813 401.011 287.63 L 404.033 282.446" />
                        <path class="highcharts-data-label-connector highcharts-color-2" fill="none" stroke="#90ed7d" stroke-width="1" d="M 308.203 139.246 C 313.203 139.246 330.84 142.841 336.72 144.039 L 342.599 145.237" />
                        <path class="highcharts-data-label-connector highcharts-color-3" fill="none" stroke="#f7a35c" stroke-width="1" d="M 350.158 60 C 355.158 60 378.103 63.2095 381.971 67.7963 L 385.839 72.3832" />
                        <path class="highcharts-data-label-connector highcharts-color-4" fill="none" stroke="#8085e9" stroke-width="1" d="M 380 36 C 385 36 435.654 33.9999 437.073 39.8297 L 438.492 45.6595" />
                        <path class="highcharts-data-label-connector highcharts-color-5" fill="none" stroke="#f15c80" stroke-width="1" d="M 460.504 12 C 465.504 12 465.9 30.0341 466.031 36.0326 L 466.163 42.0312" />
                        <g class="highcharts-label highcharts-data-label highcharts-data-label-color-0 " transform="translate(636 136)" data-z-index="1"><text style="font-size:11px;font-weight:bold;color:black;cursor:pointer;fill:black;" x="5" y="16" data-z-index="1">
                            <tspan class="highcharts-text-outline" style="font-weight: bold;" fill="#ffffff" stroke="#ffffff" stroke-linejoin="round" stroke-width="2px" x="5" y="16">Firefox</tspan>
                            <tspan class="highcharts-text-outline" fill="#ffffff" stroke="#ffffff" stroke-linejoin="round" stroke-width="2px" dx="0">: 45.0 %</tspan>
                            <tspan style="font-weight:bold" x="5" y="16">Firefox</tspan>
                            <tspan dx="0">: 45.0 %</tspan>
                </text>

                        </g>
                        <g class="highcharts-label highcharts-data-label highcharts-data-label-color-1 " transform="translate(316 298)" data-z-index="1">
                            <text style="font-size:11px;font-weight:bold;color:black;cursor:pointer;fill:black;" x="5" y="16" data-z-index="1">
                                <tspan class="highcharts-text-outline" style="font-weight: bold;" fill="#ffffff" stroke="#ffffff" stroke-linejoin="round" stroke-width="2px" x="5" y="16">IE</tspan>
                                <tspan class="highcharts-text-outline" fill="#ffffff" stroke="#ffffff" stroke-linejoin="round" stroke-width="2px" dx="0">: 26.8 %</tspan>
                                <tspan style="font-weight:bold" x="5" y="16">IE</tspan><tspan dx="0">: 26.8 %</tspan>

                            </text>

                        </g>
                        <g class="highcharts-label highcharts-data-label highcharts-data-label-color-2 " transform="translate(206 129)" data-z-index="1">
                            <text style="font-size:11px;font-weight:bold;color:black;cursor:pointer;fill:black;" x="5" y="16" data-z-index="1">
                                <tspan class="highcharts-text-outline" style="font-weight: bold;" fill="#ffffff" stroke="#ffffff" stroke-linejoin="round" stroke-width="2px" x="5" y="16">Chrome</tspan>
                                <tspan class="highcharts-text-outline" fill="#ffffff" stroke="#ffffff" stroke-linejoin="round" stroke-width="2px" dx="0">: 12.8 %</tspan>
                                <tspan style="font-weight:bold" x="5" y="16">Chrome</tspan>
                                <tspan dx="0">: 12.8 %</tspan></text>

                        </g>
                        <g class="highcharts-label highcharts-data-label highcharts-data-label-color-3 " transform="translate(268 50)" data-z-index="1">
                            <text style="font-size:11px;font-weight:bold;color:black;cursor:pointer;fill:black;" x="5" y="16" data-z-index="1">
                                <tspan class="highcharts-text-outline" style="font-weight: bold;" fill="#ffffff" stroke="#ffffff" stroke-linejoin="round" stroke-width="2px" x="5" y="16">Safari</tspan>
                                <tspan class="highcharts-text-outline" fill="#ffffff" stroke="#ffffff" stroke-linejoin="round" stroke-width="2px" dx="0">: 8.5 %</tspan>
                                <tspan style="font-weight:bold" x="5" y="16">Safari</tspan><tspan dx="0">: 8.5 %</tspan>

                            </text>

                        </g>
                        <g class="highcharts-label highcharts-data-label highcharts-data-label-color-4 " transform="translate(295 26)" data-z-index="1">
                            <text style="font-size:11px;font-weight:bold;color:black;cursor:pointer;fill:black;" x="5" y="16" data-z-index="1">
                                <tspan class="highcharts-text-outline" style="font-weight: bold;" fill="#ffffff" stroke="#ffffff" stroke-linejoin="round" stroke-width="2px" x="5" y="16">Opera</tspan>
                                <tspan class="highcharts-text-outline" fill="#ffffff" stroke="#ffffff" stroke-linejoin="round" stroke-width="2px" dx="0">: 6.2 %</tspan>
                                <tspan style="font-weight:bold" x="5" y="16">Opera</tspan><tspan dx="0">: 6.2 %</tspan>

                            </text>

                        </g>
                        <g class="highcharts-label highcharts-data-label highcharts-data-label-color-5 " transform="translate(387 2)" data-z-index="1">
                            <text style="font-size:11px;font-weight:bold;color:black;cursor:pointer;fill:black;" x="5" y="16" data-z-index="1">
                                <tspan class="highcharts-text-outline" style="font-weight: bold;" fill="#ffffff" stroke="#ffffff" stroke-linejoin="round" stroke-width="2px" x="5" y="16">其他</tspan>
                                <tspan class="highcharts-text-outline" fill="#ffffff" stroke="#ffffff" stroke-linejoin="round" stroke-width="2px" dx="0">: 0.7 %</tspan>
                                <tspan style="font-weight:bold" x="5" y="16">其他</tspan><tspan dx="0">: 0.7 %</tspan>
                            </text>
                        </g>
                    </g>
                        <g class="highcharts-legend" data-z-index="7">
                            <rect class="highcharts-legend-box" visibility="hidden" fill="none" x="0" y="0" width="8" height="8" rx="0" ry="0" />
                                <g data-z-index="1"><g />

                                </g>

                        </g>
                <text class="highcharts-credits" style="cursor:pointer;color:#999999;font-size:9px;fill:#999999;" text-anchor="end" x="928" y="395" data-z-index="8">Highcharts.com</text>
                <g class="highcharts-label highcharts-tooltip highcharts-color-0" visibility="visible" style="pointer-events:none;white-space:nowrap;" opacity="0" transform="translate(1008 -9999)" data-z-index="8">
                    <path class="highcharts-label-box highcharts-tooltip-box" fill="none" stroke="#000000" stroke-opacity="0.05" stroke-width="5" transform="translate(1 1)" d="M 3.5 0.5 L 104.5 0.5 C 107.5 0.5 107.5 0.5 107.5 3.5 L 107.5 44.5 C 107.5 47.5 107.5 47.5 104.5 47.5 L 3.5 47.5 C 0.5 47.5 0.5 47.5 0.5 44.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" isShadow="true" />
                    <path class="highcharts-label-box highcharts-tooltip-box" fill="none" stroke="#000000" stroke-opacity="0.1" stroke-width="3" transform="translate(1 1)" d="M 3.5 0.5 L 104.5 0.5 C 107.5 0.5 107.5 0.5 107.5 3.5 L 107.5 44.5 C 107.5 47.5 107.5 47.5 104.5 47.5 L 3.5 47.5 C 0.5 47.5 0.5 47.5 0.5 44.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" isShadow="true" />
                    <path class="highcharts-label-box highcharts-tooltip-box" fill="none" stroke="#000000" stroke-opacity="0.15" stroke-width="1" transform="translate(1 1)" d="M 3.5 0.5 L 104.5 0.5 C 107.5 0.5 107.5 0.5 107.5 3.5 L 107.5 44.5 C 107.5 47.5 107.5 47.5 104.5 47.5 L 3.5 47.5 C 0.5 47.5 0.5 47.5 0.5 44.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" isShadow="true" />
                    <path class="highcharts-label-box highcharts-tooltip-box" fill="rgba(247, 247, 247, 0.85)" stroke="#7cb5ec" stroke-width="1" d="M 3.5 0.5 L 104.5 0.5 C 107.5 0.5 107.5 0.5 107.5 3.5 L 107.5 44.5 C 107.5 47.5 107.5 47.5 104.5 47.5 L 3.5 47.5 C 0.5 47.5 0.5 47.5 0.5 44.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" />
                    <text style="font-size:12px;color:#333333;cursor:default;fill:#333333;" x="8" y="20" data-z-index="1">
                        <tspan style="font-size: 10px">Firefox</tspan><tspan x="8" dy="15">市场份额: </tspan>
                        <tspan style="font-weight:bold" dx="0">45.0%</tspan>

                    </text>

                </g>

            </svg>

        </div>
    
    </div>
    </form>
</body>
</html>
