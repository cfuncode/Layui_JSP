<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>layuiAdmin 控制台主页一</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="../../layuiadmin/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../../layuiadmin/style/admin.css" media="all">
</head>
<body>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-tab layui-tab-brief layadmin-latestData">
                            <ul class="layui-tab-title">
                                <li class="layui-this">登录历史</li>
                            </ul>
                            <div class="layui-tab-content">
                                <div class="layui-tab-item layui-show">
                                    <!--                  <table id="LAY-index-topSearch"></table>-->
                                    <table class="layui-hide" id="test"></table>
                                </div>
                                <div class="layui-tab-item">
                                    <table id="LAY-index-topCard"></table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="layui-col-md12">
            <!-- 底部固定区域 -->
            <b>Version</b> 1.0.0
            <strong>Copyright &copy; 2020-2021 编程要快乐 <a href="http://beian.miit.gov.cn/">粤ICP备20056073号</a>.</strong> All rights reserved.
        </div>

    </div>
</div>


<script src="../../layuiadmin/layui/layui.js?t=1"></script>
<script>
    layui.use('table', function () {
        var table = layui.table;

        table.render({
            elem: '#test'
            , url: '/demo/table/user/'
            , cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            , cols: [[
                {field: 'id', width: 80, title: 'ID', sort: true}
                , {field: 'username', width: 80, title: '用户名'}
                , {field: 'addtime', width: 80, title: '注册时间', width: '15%', minWidth: 100, sort: true}
                , {field: 'lasttime', width: 80, title: '最后登录', width: '10%', minWidth: 100,}
                , {field: 'loginNum', title: '登录次数', width: '20%', minWidth: 100} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
                // , {field: 'loginNum', title: '登录次数', width: '30%', minWidth: 100} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
                // , {field: 'tel', title: '积分', sort: true}
                // , {field: 'score', title: '评分', sort: true}
                // , {field: 'classify', title: '职业'}
                // , {field: 'wealth', width: 137, title: '财富', sort: true}
            ]]
        });
    });
</script>
</body>
</html>

