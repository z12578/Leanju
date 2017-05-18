<%@ Page Language="C#" AutoEventWireup="true" CodeFile="succeed.aspx.cs" Inherits="succeed" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <meta http-equiv="Cache-Control" content="max-age=86400" />
    <script src="js/jquery-1.6.2.min.js" language="javascript" type="text/javascript"></script>
    <link href="css/public.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery.cookie.js"></script>


    <script type="text/javascript" language="javascript">
        window.onerror = function () { return true; }
    </script>

    <link href="css/register.css" rel="stylesheet" type="text/css" />
   
    <title>注册成功</title>


</head>
<body>


    <div class="wrapper">

      
   

        <div class="wrapper">
            <div class="Registration_main">
                <div class="Registration_left" style="background:url(images/registrationbg.gif) no-repeat 5px bottom;"> </div>
                <div class="Registration_right">
                    <!--2012-07-11注册返回页start-->
                    <div class="ZhuCeBack">
                        <div class="ZhuCeBack_Suc">

                            <h2 class="Suc_Tex Suc_Tex_bg">
                                恭喜您，注册成功！<br />
                                                   <br/>
                            </h2>
                            <p class="Suc_Tex_tip">您的个人资料还不完整，请填写<a href="Login.aspx">详细资料</a></p>
                            <div class="ZhuCeSuc_Btn  seek_btn"><a href="index.aspx">寻找住处</a><span>或者</span><a href="http://www.youtx.com/room/new/">发布房源</a></div>
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>


        <!--尾部2011-9-6修改 start-->
        <div class="footer">
            <dl class="FooterCity clearfix" style="border:none;margin-bottom:-8px;">
                <dd class="footer_link_grey">热门城市：</dd>
                <dt><a href="http://www.youtx.com/beijing/" target="_blank">北京短租房</a>|<a href="http://www.youtx.com/shanghai/" target="_blank">上海短租房</a>|<a href="http://www.youtx.com/guangzhou/" target="_blank">广州短租房</a>|<a href="http://www.youtx.com/shenzhen/" target="_blank">深圳短租房</a>|<a href="http://www.youtx.com/hongkong/" target="_blank">香港短租房</a>|<a href="http://www.youtx.com/sanya/" target="_blank">三亚短租房</a>|<a href="http://www.youtx.com/suzhou/" target="_blank">苏州短租房</a>|<a href="http://www.youtx.com/hangzhou/" target="_blank">杭州短租房</a>|<a href="http://www.youtx.com/nanjing/" target="_blank">南京短租房</a>|<a href="http://www.youtx.com/xian/" target="_blank">西安短租房</a>|<a href="http://www.youtx.com/dalian/" target="_blank">大连短租房</a>|<a href="http://www.youtx.com/qingdao/" target="_blank">青岛短租房</a>|<a href="http://www.youtx.com/chongqing/" target="_blank">重庆短租房</a> <a href="http://www.youtx.com/chengdu/" target="_blank">成都短租房</a>|<a href="http://www.youtx.com/wuhan/" target="_blank">武汉短租房</a>|<a href="http://www.youtx.com/tianjin/" target="_blank">天津短租房</a>|<a href="http://www.youtx.com/kunming/" target="_blank">昆明短租房</a>|<a href="http://www.youtx.com/lijiang/" target="_blank">丽江短租房</a>|<a href="http://www.youtx.com/xiamen/" target="_blank">厦门短租房</a>|<a href="http://www.youtx.com/lasa/" target="_blank">拉萨短租房</a>|<a href="http://www.youtx.com/zhengzhou/" target="_blank">郑州短租房</a>|<a href="http://www.youtx.com/changsha/" target="_blank">长沙短租房</a>|<a href="http://www.youtx.com/changchun/" target="_blank">长春短租房</a>|<a href="http://www.youtx.com/shenyang/" target="_blank">沈阳短租房</a>|<a href="http://www.youtx.com/cities/" target="_blank">更多城市..</a>|<a href="http://www.youtx.com/locations/" target="_blank">更多地标...</a></dt>
            </dl>

            <dl class="FooterCity FooterCity02 clearfix">
                <!--<dd class="footer_link_grey">国外城市：</dd>
                <dt>
                    <span><a href="http://www.youtx.com/chicago/" target="_blank">芝加哥住宿</a>|</span>
                    <span><a href="http://www.youtx.com/hawaii/" target="_blank">夏威夷住宿</a>|</span>
                    <span><a href="http://www.youtx.com/singapore/" target="_blank">新加坡住宿</a>|</span><span><a href="http://www.youtx.com/paris/" target="_blank">巴黎住宿</a>|</span><span><a href="http://www.youtx.com/roma/" target="_blank">罗马住宿</a>|</span><span><a href="http://www.youtx.com/milan/" target="_blank">米兰住宿</a>|</span><span><a href="http://www.youtx.com/venice/" target="_blank">威尼斯住宿</a>|</span><span><a href="http://www.youtx.com/madrid/" target="_blank">马德里住宿</a>|</span><span><a href="http://www.youtx.com/barcelona/" target="_blank">巴塞罗那住宿</a>|</span><span><a href="http://www.youtx.com/london/" target="_blank">伦敦住宿</a>|</span><span><a href="http://www.youtx.com/losangeles/" target="_blank">洛杉矶住宿</a>|</span><span><a href="http://www.youtx.com/newyork/" target="_blank">纽约住宿</a>|</span><span><a href="http://www.youtx.com/lasvegas/" target="_blank">拉斯维加斯住宿</a>|</span><span><a href="http://www.youtx.com/phuket/" target="_blank">普吉岛住宿</a>|</span><span><a href="http://www.youtx.com/bali/" target="_blank">巴厘岛住宿</a>|</span><span><a href="http://www.youtx.com/maldives/" target="_blank">马尔代夫住宿</a>|</span><span><a href="http://www.youtx.com/Sabah/" target="_blank">沙巴住宿</a></span>
                </dt>-->
                <dd class="footer_link_grey">热门别墅：</dd>
                <dt>
                    <span><a href="http://www.youtx.com/beijing/htype2/" target="_blank">北京日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/shanghai/htype2/" target="_blank">上海日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/guangzhou/htype2/" target="_blank">广州日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/shenzhen/htype2/" target="_blank">深圳日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/tianjin/htype2/" target="_blank">天津日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/nanjing/htype2/" target="_blank">南京日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/hangzhou/htype2/" target="_blank">杭州日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/suzhou/htype2/" target="_blank">苏州日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/chongqing/htype2/" target="_blank">重庆日租别墅</a>|</span>

                    <span><a href="http://www.youtx.com/qingdao/htype2/" target="_blank">青岛日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/chengdu/htype2/" target="_blank">成都日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/xiamen/htype2/" target="_blank">厦门日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/sanya/htype2/" target="_blank">三亚日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/wuhan/htype2/" target="_blank">武汉日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/dalian/htype2/" target="_blank">大连日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/xian/htype2/" target="_blank">西安日租别墅</a>|</span>

                    <span><a href="http://www.youtx.com/qinhuangdao/htype2/" target="_blank">秦皇岛日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/changsha/htype2/" target="_blank">长沙日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/shenyang/htype2/" target="_blank">沈阳日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/hefei/htype2/" target="_blank">合肥日租别墅</a>|</span>
                    <span><a href="http://www.youtx.com/zhengzhou/htype2/" target="_blank">郑州日租别墅</a></span>

        </div>
        </dt>
        </dl>
        <ul class="footer_link">
            <li><a href="http://www.youtx.com/help/about/" target="_blank" rel="nofollow">关于我们</a></li>
            <li class="footer_link_space">|</li>
            <li><a href="http://www.youtx.com/help/contact/" target="_blank" rel="nofollow">联系我们</a></li>
            <li class="footer_link_space">|</li>
            <li><a href="http://www.youtx.com/help/jobs/" target="_blank" rel="nofollow">招聘</a></li>
            <li class="footer_link_space">|</li>
            <li><a href="http://www.youtx.com/help/service/" target="_blank" rel="nofollow">服务协议</a></li>
            <li class="footer_link_space">|</li>
            <li><a href="http://www.youtx.com/feedback/" target="_blank" rel="nofollow" id="youtx_34">意见反馈</a></li>
            <li class="footer_link_space">|</li>
            <li class="footer_link_grey footer_link_space" style="margin: 0;">客服热线：400-630-0088，客服邮箱：<span>service</span> <img src="images/at.jpg" /> <span>youtx.com</span></li>
        </ul>
        <ul class="footer_link02">
            <li class="FooterDesktop"><a href="/downloadshortcut/" target="_blank" rel="nofollow">下载桌面游天下</a> | <a href="/mo/" target="_blank" rel="nofollow">手机游天下</a> | <a href="http://www.youtx.com/star/" target="_blank" rel="nofollow">明星房东</a> | <a href="http://www.youtx.com/" target="_blank">日租房</a> | <a href="http://blog.youtx.com/" target="_blank" rel="nofollow">博客</a> | <a href="http://www.youtx.com/jifen/exchange/" target="_blank" rel="nofollow">积分换礼</a> | </li>
            <li class="footer_link_grey footer_link_space" style="margin-right: 0;">关注我们：</li>
            <li class="footer_share" id="youtx_31">
                <a href="http://weibo.com/youtxcom" class="isina" target="_blank" rel="nofollow"> </a><a href="http://youtx.t.sohu.com/" class="isohu" target="_blank" rel="nofollow"></a><a href="http://t.163.com/youtx"
                                                                                                                                                                                             class="i163" target="_blank" rel="nofollow"></a><a href="http://t.qq.com/youtx" class="itengxun"
                                                                                                                                                                                                                                                target="_blank" rel="nofollow"></a><a href="http://t.fang.com/youtx" class="isoufun" target="_blank" rel="nofollow"> </a><a href="http://page.renren.com/600943269" class="irenren" target="_blank" rel="nofollow"> </a>
            </li>
        </ul>
        <ul class="FooterNet">
            <li class="FontArial02">
                Copyright © 2017 Youtx.com, All Rights Reserved<br />
                <a href="http://js.youtx.com/icp.jpg" target="_blank" rel="nofollow" style="font-family:'宋体'">京ICP证041065号</a> <span style="font-family:'宋体'">京公网安备11010602010093号-2</span>
            </li>
            <li><a target="_blank" href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=passport.youtx.com&zoneoff=&lang=zh_CN" rel="nofollow"><img src="images/verisignyoutx.gif" height="35" width="60"></a></li>
            <li><a href="https://www.itrust.org.cn/yz/pjwx.asp?wm=1766253730" rel="nofollow" target=_blank><img src="images/footernetpic.gif" /></a></li>
            <li><a target="_blank" href="https://ss.knet.cn/verifyseal.dll?sn=e12032211010015160307708&ct=df&pa=318891" rel="nofollow"><img src="images/trustyoutx.gif" width="100" height="35px"></a></li>
        </ul>
    </div>
    <!--2013-6-26修改-->
    <script type="text/javascript">
        $(document).ready(function () {
            var a = $(".NewSubNavCur");
            if (a && a.text() == "我是房东") {
                $('body').append('<div id="feedbackbox" class="feedbackbox"><div class="feedback"><div class="FeedBackColseImg"><img class="FeedBackColse" title="关闭" src="images/feedbackclose.gif"></div><a class="feedbackA1" href="/feedback/" target="_blank">意见反馈</a><a href="javascript:void(0)" target="_blank"><img width="95" height="95" src="images/bservice.jpg"></a><a class="feedbackA2" href="javascript:void(0)" target="_blank">游天下房东服务号</br>微信扫一扫</a></div></div>');
            } else {
                $('body').append('<div id="feedbackbox" class="feedbackbox"><div class="feedback"><div class="FeedBackColseImg"><img class="FeedBackColse" title="关闭" src="images/feedbackclose.gif"></div><a class="feedbackA1" href="/feedback/" target="_blank">意见反馈</a><a href="/mo/" target="_blank"><img src="images/ewm.png"></a><a class="feedbackA2" href="/mo/" target="_blank">游天下手机客户端<br>扫描或点击下载</a></div></div>');
            }
            $(".FeedBackColse").click(function () {
                $(".feedbackbox").hide();
            })
        });
    </script>
    <!--2013-6-26修改-结束-->
    <div style="width:0px;height:0px;overflow:hidden;display:none">
        <!--<script type="text/javascript">
            var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
            document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fd6a1c2e211265084b7d12bfc8636a282' type='text/javascript'%3E%3C/script%3E"));
        </script>-->

        <script type="text/javascript">
            var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
            document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Feb4b7b326a601c545c14e8b6b965e4a0' type='text/javascript'%3E%3C/script%3E"));
        </script>

        <script type="text/javascript">
            /* <![CDATA[ */
            var google_conversion_id = 960478029;
            var google_conversion_language = "en";
            var google_conversion_format = "3";
            var google_conversion_color = "ffffff";
            var google_conversion_label = "yFTtCPvC6gMQzfb-yQM";
            var google_conversion_value = 0;
            /* ]]> */
        </script>
        <script type="text/javascript" src="js/conversion.js">
        </script>
        <noscript>
            <div style="display:inline;">
                <img height="1" width="1" style="border-style:none;" alt="" src="images/5093f21d5e594df99c2c2275a71325fb.gif" />
            </div>
        </noscript>

        <script type="text/javascript">
            var bd_cpro_rtid = "nWnknWD";
        </script>
        <script type="text/javascript" src="js/rt.js"></script>
        <noscript>
            <div style="display:none;">
                <img height="0" width="0" style="border-style:none;" src="images/rt.jpg" />
            </div>
        </noscript>
    </div>
    <!-- ClickTale Bottom part -->
    <div id="ClickTaleDiv" style="display: none;"></div>
    <script src="js/clicktale.js" type="text/javascript"></script>
    <script type="text/javascript">
        if (typeof ClickTale == 'function') ClickTale(12600, 0.0005, "www14");
    </script>
    <!-- ClickTale end of Bottom part -->
    <script src="js/youtx_webim_html.js" type="text/javascript"></script>

    <!--尾部2011-9-6修改 end-->
    </div>
</body>
</html>
