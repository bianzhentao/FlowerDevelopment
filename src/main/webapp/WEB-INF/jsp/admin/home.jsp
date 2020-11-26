<%@ page language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <script src="/js/echarts.js"></script>

    <title>花店后台管理系统</title>

</head>
<body>
<%--头部--%>
<%@ include file="/WEB-INF/jsp/admin/adminheader.jsp" %>
<%--左侧--%>
<%@ include file="/WEB-INF/jsp/admin/left.jsp" %>

<%--横标--%>
<div class="daohang">
    <ul>
        <li>
            <a type="button" class="am-btn am-btn-default am-radius am-btn-xs" href="${pageContext.request.contextPath}/admin/home">
                首页
            </a>
        </li>
    </ul>
</div>

<div class=" admin-content">
    <div class="admin-biaogelist">
        <div class="listbiaoti am-cf">
            <ul class="am-icon-users"> 欢迎页面</ul>
            <dl class="am-icon-home" style="float: right;">当前位置： 首页</dl>
        </div>
    </div>


    <div class="admin-echars" id="demo1" style="width: 1200px; height: 500px;"></div>

</div>

<script>
    var demo1 = echarts.init(document.getElementById("demo1"));
    $.ajax({
        type: "get",
        url: "/admin/adminFlowerController/echarts",
        async: true,
        success: function(res) {
            var x = new Array();　//创建一个数组
            var y = new Array();　//创建一个数组
            for(var i=0;i<res.length;i++){
                x.push(res[i].pname);
                y.push(res[i].shop_price);
            }
            var option1 = {
                title: {
                    left: 'center',
                    text: '鲜花价格折线图'
                },
                xAxis: {
                    type: 'category',
                    data:  x,
                    axisLabel: {
                        interval: 0,
                        formatter:function(value)
                        {
                            var ret = "";//拼接加\n返回的类目项
                            var maxLength = 4;//每项显示文字个数
                            var valLength = value.length;//X轴类目项的文字个数
                            var rowN = Math.ceil(valLength / maxLength); //类目项需要换行的行数
                            if (rowN > 1)//如果类目项的文字大于3,
                            {
                                for (var i = 0; i < rowN; i++) {
                                    var temp = "";//每次截取的字符串
                                    var start = i * maxLength;//开始截取的位置
                                    var end = start + maxLength;//结束截取的位置
                                    //这里也可以加一个是否是最后一行的判断，但是不加也没有影响，那就不加吧
                                    temp = value.substring(start, end) + "\n";
                                    ret += temp; //凭借最终的字符串
                                }
                                return ret;
                            }
                            else {
                                return value;
                            }
                        }
                    }
                },
                yAxis: {
                    type: 'value'
                },
                series: [{
                    data: y,
                    type: 'line'
                }],
                dataZoom:{
                    realtime:true, //拖动滚动条时是否动态的更新图表数据
                    height:100,//滚动条高度
                    start:100,//滚动条开始位置（共100等份）
                    end:0//结束位置（共100等份）
                }
            };
            demo1.setOption(option1);
        }
    });
</script>


</body>
</html>
