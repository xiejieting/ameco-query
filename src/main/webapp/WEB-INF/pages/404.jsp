<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>404page</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="alternate icon" type="/image/png" href="/assets/i/favicon.png">
    <link rel="stylesheet" href="/assets/css/amazeui.min.css" type="text/css">
    <link rel="stylesheet" href="/assets/css/amaze.min.css" type="text/css">
    <link rel="stylesheet" href="../../assets/css/app.css"/>
    <link rel="stylesheet" href="../../assets/css/admin.css"/>
    <script src="../../assets/js/jquery.min.js"></script>
    <script src="../../assets/js/amazeui.min.js"></script>

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

        <!-- content start -->
        <div class="admin-content">

            <div class="am-cf am-padding">
                <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">404</strong> /
                    <small>You might get lost.</small>
                </div>
            </div>

            <div class="am-g">
                <div class="am-u-sm-12">
                    <h2 class="am-text-center am-text-xxxl am-margin-top-lg" style=" font-size: 2.6rem;">404. Not
                        Found</h2>

                    <p class="am-text-center">没有找到你要的页面</p>
                    <blockquote>
                        <p>The quick brown fox jumps over the lazy dog.</p>
                        <small>-snoopy</small>
                    </blockquote>
        <pre class="page-404">
          .----.
       _.'__    `.
   .--($)($$)---/#\
 .' @          /###\
 :         ,   #####
  `-..__.-' _.-\###/
        `;_:    `"'
      .'"""""`.
     /,  ya ,\\
    //  404!  \\
    `-._______.-'
    ___`. | .'___
   (______|______)
        </pre>
                </div>
            </div>
        </div>
        <!-- content end -->

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
        <div data-am-widget="gotop" class="am-gotop am-gotop-fixed " style="right:20px;bottom: 90px;">
            <a href="#top" title="回到顶部">
                <span class="am-gotop-title">回到顶部</span>
                <i class="am-icon-btn am-icon-arrow-up am-active"></i>
            </a>
        </div>

    </div>
</div>
</body>
</html>