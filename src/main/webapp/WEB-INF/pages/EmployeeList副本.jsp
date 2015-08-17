<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<?xml version="1.0" encoding="UTF-8" ?>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>企业通讯录查询</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="alternate icon" type="/image/png" href="/assets/i/favicon.png">
    <link rel="stylesheet" href="/assets/css/amazeui.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/app.css"/>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <style>
        .header {
            text-align: center;
        }

        .header h1 {
            font-size: 200%;
            color: #333;
            margin-top: 30px;
        }

        .header p {
            font-size: 14px;
        }
    </style>
</head>

<body>

<!-- Header -->
<header data-am-widget="header" class="am-header am-header-default">
    <div class="am-header-left am-header-nav">
        <a href="#left-link" class="">

            <i class="am-header-icon am-icon-home"></i>
        </a>
    </div>
    <h1 class="am-header-title">
        <a href="#title-link">Ameco ERP</a>
    </h1>
</header>

<!-- Menu -->
<nav data-am-widget="menu" class="am-menu  am-menu-offcanvas1" data-am-menu-offcanvas>
    <a href="javascript: void(0)" class="am-menu-toggle">
        <i class="am-menu-toggle-icon am-icon-bars"></i>
    </a>

    <div class="am-offcanvas">
        <div class="am-offcanvas-bar">
            <ul class="am-menu-nav sm-block-grid-1">
                <li class="am-parent">
                    <a href="##">公司</a>
                    <ul class="am-menu-sub am-collapse  sm-block-grid-2 ">
                        <li class="">
                            <a href="##">公司</a>
                        </li>
                        <li class="">
                            <a href="##">人物</a>
                        </li>
                        <li class="">
                            <a href="##">趋势</a>
                        </li>
                        <li class="">
                            <a href="##">投融资</a>
                        </li>
                        <li class="">
                            <a href="##">创业公司</a>
                        </li>
                        <li class="">
                            <a href="##">创业人物</a>
                        </li>
                        <li class="am-menu-nav-channel">
                            <a href="##" title="公司">进入栏目 &raquo;</a>
                        </li>
                    </ul>
                </li>
                <li class="am-parent">
                    <a href="##">人物</a>
                    <ul class="am-menu-sub am-collapse  sm-block-grid-3 ">
                        <li class="">
                            <a href="##">公司</a>
                        </li>
                        <li class="">
                            <a href="##">人物</a>
                        </li>
                        <li class="">
                            <a href="##">趋势</a>
                        </li>
                        <li class="">
                            <a href="##">投融资</a>
                        </li>
                        <li class="">
                            <a href="##">创业公司</a>
                        </li>
                        <li class="">
                            <a href="##">创业人物</a>
                        </li>
                    </ul>
                </li>
                <li class="am-parent">
                    <a href="#c3">趋势</a>
                    <ul class="am-menu-sub am-collapse am-avg-sm-4">
                        <li class="">
                            <a href="##">公司</a>
                        </li>
                        <li class="">
                            <a href="##">人物</a>
                        </li>
                        <li class="">
                            <a href="##">趋势</a>
                        </li>
                        <li class="">
                            <a href="##">投融资</a>
                        </li>
                        <li class="">
                            <a href="##">创业公司</a>
                        </li>
                        <li class="">
                            <a href="##">创业人物</a>
                        </li>
                        <li class="am-menu-nav-channel">
                            <a href="#c3" title="趋势">泥煤 &raquo;</a>
                        </li>
                    </ul>
                </li>
                <li class="am-parent">
                    <a href="##">投融资</a>
                    <ul class="am-menu-sub am-collapse am-avg-sm-3">
                        <li class="">
                            <a href="##">公司</a>
                        </li>
                        <li class="">
                            <a href="##">人物</a>
                        </li>
                        <li class="">
                            <a href="##">趋势</a>
                        </li>
                        <li class="">
                            <a href="##">投融资</a>
                        </li>
                        <li class="">
                            <a href="##">创业公司</a>
                        </li>
                        <li class="">
                            <a href="##">创业人物</a>
                        </li>
                    </ul>
                </li>
                <li class="">
                    <a href="##">创业公司</a>
                </li>
                <li class="">
                    <a href="##">创业人物</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="header">
    <div class="am-g">
        <h2>员工查询结果</h2>

        <p>Employee Query Result</p>

        <p>${message}</p>
    </div>
    <hr/>
</div>


<div class="am-g" style="font-size: 50%;">
    <div class="am-u-lg-6 am-u-md-8 am-u-sm-centered am-scrollable-horizontal">
        <table border="1px" cellpadding="0" cellspacing="0"
               class="am-table am-table-striped am-table-hover table-main">
            <thead>
            <tr class="am-primary">
                <th>编号（ID）</th>
                <th>姓名（NAME）</th>
                <th>手机（MOBILE）</th>
                <th>部门（DEPARTMENT）</th>
                <th>全拼（SPELL）</th>
                <th>详情（DETAIL）</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="employee" items="${employees}">
                <tr>
                    <td>${employee.employee_id}</td>
                    <td>${employee.employee_name}</td>
                    <td>${employee.employee_mobile}</td>
                    <td>${employee.employee_department}</td>
                    <td>${employee.employee_spell}</td>
                    <td><a
                            href="${pageContext.request.contextPath}/employee.do?method=info&id=${employee.employee_id}">Detail</a><br/>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <p>
            <a href="${pageContext.request.contextPath}/index.html">Home page</a>
        </p>
    </div>
</div>

<!--页面底部适配-->
<footer data-am-widget="footer"
        class="am-footer am-footer-default"
        data-am-footer="{  }">
    <hr data-am-widget="divider" style="" class="am-divider am-divider-dashed"/>
    <div class="am-footer-switch">
    <span class="am-footer-ysp" data-rel="mobile"
          data-am-modal="{target: '#am-switch-mode'}">
          北京市信源电子信息技术公司
    </span>

    </div>
    <div class="am-footer-miscs ">

        <p>由 <a href="http://www.xyit.com.cn/" title="北京信源电子信息技术公司"
                target="_blank" class="">北京市信源电子信息技术公司</a>
            提供技术支持</p>

        <p>CopyRight©2015 xyit.com.cn.</p>
    </div>
</footer>



<!--回到顶部-->
<div data-am-widget="gotop" class="am-gotop am-gotop-fixed">
    <a href="#top" title="回到顶部">
        <span class="am-gotop-title">回到顶部</span>
        <i class="am-gotop-icon am-icon-chevron-up"></i>
    </a>
</div>

</body>
</html>