<%--
  Created by IntelliJ IDEA.
  User: 86187
  Date: 2019/12/20
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link language="JavaScript" type="text/javascript" rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap-theme.min.css" >
    <script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.12.4.js"></script>
    <script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.js"></script>
    <%--引入分页查询的js文件--%>
    <script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
    <script language="JavaScript" type="text/javascript">
        $(function () {
            $("#but").click(function(){
                $("#table").datagrid({
                    url:'getAll2',
                    pagination:true,
                    pageSize:5,
                    pageList:[3,5,8,10],
                    columns:[[
                        {field:'id',title:'编号',width:100,align:'right'},
                        {field:'categoryid',title:'姓名',width:100,align:'right'},
                        {field:'title',title:'标题',width:100,align:'right'},
                        {field:'summary',title:'详细内容',width:100,align:'right'},
                        {field:'uploaduser',title:'上传人',width:100,align:'right'},
                        {field:'createdate',title:'上传日期',width:100,align:'right',
                            formatter: function(value){
                                //return "<input type='text' value='"+value+"'>";  //内容就是显示在单元格中的内容
                                var date=new Date(value);
                                var year=date.getFullYear();
                                var moneth=date.getMonth()+1;
                                var day=date.getDay();
                                return year+"年"+moneth+"月"+day+"日";
                            }}
                    ]]
                });
            });
        });
    </script>
</head>
<body>

<input type="button" value="按钮"  name="but" id="but">
<table name="table" id="table"></table>
</body>

</html>
