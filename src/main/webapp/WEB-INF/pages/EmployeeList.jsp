<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<?xml version="1.0" encoding="UTF-8" ?>
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
    <link rel="stylesheet" href="/assets/css/amaze.min.css" type="text/css">
    <link rel="stylesheet" href="assets/css/app.css"/>
    <link rel="stylesheet" href="assets/css/admin.css"/>
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
<div class="am-cf admin-main">
    <header id="amz-header">
        <div class="amz-container am-cf"><h1><a href="index.html">Ameco ERP</a> <span
                class="am-badge am-badge-danger">1.0</span></h1>
            <button class="am-btn am-btn-primary am-show-sm-only"
                    data-am-collapse="{target: &#39;.amz-header-nav&#39;}">
                <span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>
            <nav>
                <ul class="amz-header-nav am-collapse">
                    <li><a href="#">首页</a></li>
                    <li class="am-active nav-react"><a href="index.html">员工查询<span
                            class="am-badge am-badge-warning">New</span></a></li>
                    <li><a href="#">器材查询</a></li>
                    <li><a href="#">About</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <div class="am-cf admin-main">
        <!-- sidebar start -->
        <div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
            <div class="am-offcanvas-bar admin-offcanvas-bar">
                <ul class="am-list admin-sidebar-list">
                    <li><a href="index.html"><span class="am-icon-home"></span> 首页</a></li>
                    <li class="admin-parent">
                        <a class="am-cf" data-am-collapse="{target: '#collapse-nav'}"><span
                                class="am-icon-file"></span>
                            企业小助手<span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                        <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
                            <li><a href="index.html" class="am-cf"><span class="am-icon-check"></span>
                                员工查询<span
                                        class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a>
                            </li>
                            <li><a href="#"><span class="am-icon-puzzle-piece"></span> 器材查询</a></li>
                            <li><a href="#"><span class="am-icon-calendar"></span> 系统日志</a></li>
                        </ul>
                    </li>
                    <li><a href="#"><span class="#"></span> 关于</a></li>
                </ul>

                <div class="am-panel am-panel-default admin-sidebar-panel">
                    <div class="am-panel-bd">
                        <p><span class="am-icon-bookmark"></span> 公告</p>

                        <p>时光静好，与君语；细水流年，与君同。—— Note4j</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- sidebar end -->

        <!--content begin-->
        <div class="admin-content">
            <div class="header">
                <div class="header">
                    <div class="am-g">
                        <div class="amz-banner">
                            <div class="amz-container am-scrollspy-init am-scrollspy-inview am-animation-scale-up"
                                 data-am-scrollspy="{animation: &#39;scale-up&#39;, repeat: false}"><h2>企业通讯录查询</h2>

                                <p>Enterprise Directory Query</p>
                            </div>
                        </div>
                        <div class="am-alert am-alert-secondary" data-am-alert>
                            <button type="button" class="am-close">&times;</button>
                            <p>${message}</p>
                        </div>
                    </div>
                    <hr/>
                </div>

                <div class="am-g">
                    <div class="am-u-lg-6 am-u-md-8 am-u-sm-centered am-scrollable-horizontal">
                        <form class="am-form">
                            <table class="am-table am-table-striped am-table-hover table-main am-table-centered">
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
                                                href="${pageContext.request.contextPath}/employee.do?method=info&id=${employee.employee_id}">
                                            <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span
                                                    class="am-icon-pencil-square-o"></span> 查看
                                            </button>
                                        </a><br/>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </form>
                        <p>
                            <a href="${pageContext.request.contextPath}/index.html">Home page</a>
                        </p>
                    </div>
                </div>
            </div>
            <!--content end-->

            <!--- sidebar usage begin -->
            <a href="#" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu"
               data-am-offcanvas="{target: '#admin-offcanvas'}"></a>
            <!--- sidebar usage end -->


            <!--页面底部适配-->
            <footer data-am-widget="footer"
                    class="am-footer am-footer-default"
                    data-am-footer="{  }">
                <hr data-am-widget="divider" style="" class="am-divider am-divider-dashed"/>
                <div class="am-footer-switch">
    <span class="am-footer-ysp" data-rel="mobile"
          data-am-modal="{target: '#am-switch-mode'}">
          云适配版
    </span>

                </div>
                <div class="am-footer-miscs ">

                    <p>由 <a href="http://www.xyit.com.cn/" title="北京信源电子信息技术公司"
                            target="_blank" class="">北京市信源电子信息技术公司</a>
                        提供技术支持</p>

                    <p>CopyRight©2015 note4j.com.cn</p>
                </div>
            </footer>

            <div id="am-footer-modal"
                 class="am-modal am-modal-no-btn am-switch-mode-m am-switch-mode-m-default">
                <div class="am-modal-dialog">
                    <div class="am-modal-hd am-modal-footer-hd">
                        <a href="javascript:void(0)" data-dismiss="modal" class="am-close am-close-spin "
                           data-am-modal-close>&times;</a>
                    </div>
                    <div class="am-modal-bd">
                        您正在浏览的是
        <span class="am-switch-mode-owner">
            北京市信源电子信息技术公司
        </span>

        <span class="am-switch-mode-slogan">
              为您当前手机订制的移动网站。
        </span>
                    </div>
                </div>
            </div>
            <!--回到顶部-->
            <div data-am-widget="gotop" class="am-gotop am-gotop-fixed" style="right:20px;bottom: 90px;">
                <a href="#top" title="回到顶部">
                    <span class="am-gotop-title">回到顶部</span>
                    <i class="am-icon-btn am-icon-arrow-up am-active"></i>
                </a>
            </div>

        </div>
    </div>
</body>
</html>