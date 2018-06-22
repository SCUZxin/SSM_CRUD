<%--
  Created by IntelliJ IDEA.
  User: zxin
  Date: 2018/6/21
  Time: 23:47
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工列表</title>
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());

    %>
    <%--
        Web 路径：
        1. 不已/开头的相对路径，找资源是以当前资源的路径为基准的，经常容易出问题
        2. 以/开头的相对路径，找资源，以服务器的根路径为标准(http://localhost:3306):需要加上项目名
        http://localhost:3306/SSM_CRUD
     --%>



    <%--引入JQuery--%>
    <script type="text/javascript" src="${APP_PATH}/static/js/jquery-3.3.1.min.js"></script>
    <%--引入样式--%>
    <link href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <%-- 标题 --%>
        <div class="row">
            <h1 class="col-md-12">SSM-CRUD</h1>
        </div>
        <%-- 按钮 --%>
        <div class="row">
            <div class="col-md-offset-10">
                <button class="btn btn-primary">新增</button>
                <button class="btn alert-danger">删除</button>
            </div>
        </div>
        <%-- 显示表格数据 --%>
        <div class="row">
            <div class="col-md-12">
                <table class="table table-hover">
                    <tr>
                        <th>#</th>
                        <th>empName</th>
                        <th>gender</th>
                        <th>email</th>
                        <th>deptName</th>
                        <th>操作</th>
                    </tr>
                    <tr>
                        <th>1</th>
                        <th>tom</th>
                        <th>男</th>
                        <th>tom@atguigu.com</th>
                        <th>deptName</th>
                        <th>
                            <button class="btn btn-primary btn-sm">
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                编辑
                            </button>
                            <button class="btn btn-danger btn-sm">
                                <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                删除
                            </button>
                        </th>
                    </tr>
                </table>
            </div>
        </div>
        <%-- 显示分页信息 --%>
        <div class="row">
            <%-- 分页文字信息 --%>
            <div class="col-md-6">
                当前记录条数：xxx
            </div>
            <%-- 分页条信息 --%>
            <div class="col-md-6">
                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <li><a href="#">首页</a></li>
                        <li>
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                        <li><a href="#">末页</a></li>
                    </ul>
                </nav>
            </div>

        </div>


    </div>

</body>
</html>
