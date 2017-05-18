<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="js/jquery-1.6.2.min.js" type="text/javascript"></script>
    <script src="js/jquery.cookie.js" type="text/javascript"></script>
    <link href="css/public_passport.css" rel="Stylesheet" type="text/css" />
    <title>登录-乐安居</title>
    <link href="css/login_passport.css" rel="stylesheet" type="text/css" />

    <script src="js/jquery.validate.min.js" type="text/javascript"></script>
</head>
<body>
    <!--头 未登录 start-->
    <div id="youtxloginw" class="header">
        <p class="logo">
            <a href="index.html" target="_blank">
                <img src="images/my.jpg" alt="乐安居 专业短租房、日租房网站" title="乐安居 专业短租房、日租房网站" />
            </a>
        </p>

        <ul class="subnav">
            <li><a href="http://www.youtx.com/help/" rel="nofollow">帮助</a></li>
        </ul>
    </div>
    <!--背景图片-->
    <style type="text/css">
        body {
            background: url("images/loginbg.jpg") no-repeat center 70px;
        }
    </style>

    <div class="logIn">

        <div class="logInCon clearfix">

            <!--left-->
            <div class="logInLeft clearfix">
                <img class="logInPor" src="images/loginpor.png" width="150" height="150"
                    alt="明星房东头像" />
                <div class="logInTxt">
                    <p class="porBasicMsg">
                        开心租<span class="porAddr">北京</span><span class="porStar">明星房东</span>
                    </p>
                    <img src="images/loginmotto.png" width="246" height="19" alt="座右铭" />
                    <a href="http://www.youtx.com/star/" target="_blank" class="seeMoreStarL">查看更多明星房东
                    </a>
                </div>
            </div>

            <!--right-->
            <div class="logInRight">
                <!--会员登录-->
                <div class="logInMember">
                    <h1 class="logInTit">乐安居会员登录
                    </h1>
                    <p class="logInError" style="visibility: hidden;">
                        用户名或密码错误/手机号格式不正确
                    </p>
                    <!--普通登录-->

                    <div id="Member">
                        <div class="logInAccount">
                            <input class="logInInput" id="signin_email" name="signin_email" type="text" value="电子邮件/手机号" onfocus="if (value =='电子邮件/手机号'){value =''};this.style.color='#000'"
                                onblur="if (value ==''){value='电子邮件/手机号'};this.style.color='#aaa'" style="color: rgb(170, 170, 170);">
                        </div>
                        <div class="logInPwd PosRe">
                            <input class="logInInput" type="password" name="password" id="signin_password">
                            <div class="logInPwdTip">
                                密码
                            </div>
                            
                        </div>
                    </div>

                    <div class="logInOverSeas">
                        <div class="logInAccount PosRe">
                            <select class="telAreaSel" id="selArea">
                                <option value="94_852" selected="selected">中国香港 +852</option>
                                <option value="122_853">中国澳门 +853</option>
                                <option value="206_886">中国台湾 +886</option>
                                <option value="13_61">澳大利亚 +61</option>
                                <option value="79_49">德国 +49</option>
                                <option value="174_7">俄罗斯 +7</option>
                                <option value="72_33">法国 +33</option>
                                <option value="194_82">韩国 +82</option>
                                <option value="38_1">加拿大 +1</option>
                                <option value="127_960">马尔代夫 +960</option>
                                <option value="126_60">马来西亚 +60</option>
                                <option value="223_1">美国 +1</option>
                                <option value="105_81">日本 +81</option>
                                <option value="209_66">泰国 +66</option>
                                <option value="188_65">新加坡 +65</option>
                                <option value="195_34">西班牙 +34</option>
                                <option value="222_44">英国 +44</option>
                                <option value="103_39">意大利 +39</option>
                                <option value="43_56">智利 +56</option>
                            </select>
                            <input class="logInInput" type="text" id="signin_email2" value="境外手机号" onfocus="if (value =='境外手机号'){value =''};this.style.color='#000'"
                                onblur="if (value ==''){value='境外手机号'};this.style.color='#aaa'" style="color: rgb(170, 170, 170);">
                        </div>
                        <div class="logInPwd PosRe">
                            <input class="logInInput" type="password" id="signin_password2" />
                            <div class="logInPwdTip">
                                密码
                            </div>
                            
                        </div>
                    </div>

                    <div class="logInOper">
                        <label class="saveLogInTime" for="">
                            <input type="checkbox" value="false" id="remember_me" name="remember_me" />两周内免登录
                        </label>
                        <a href="javascript:;;" id="forgetpw" class="forgetPwd">忘记密码？</a>
                    </div>
                    <input id="bSignIn" type="button" value="登录" class="logInBtn" />
                    <div class="rigLoginLink clearfix">
                        <a href="regist.aspx">立即注册</a>
                        <a href="javascript:void(0);" class="FR" id="logOverSeas">境外手机号登录</a>
                        <a href="javascript:void(0);" class="FR" id="logMember" style="display: none;">返回普通登录</a>
                    </div>

                    <!--warmLink-->
                    <div class="cooToLogin">
                        <h2 class="cooToLogTit">
                            <p class="logInLine">
                            </p>
                            <span>合作网站账号登录</span>
                        </h2>
                        <div class="cooLinks">
                            <a href="http://openapi.qzone.qq.com/oauth/show?which=Login&response_type=code&client_id=100235923&redirect_uri=http://www.youtx.com%2Fprofile%2Fajax%2Floginopenid.ashx%3Fo%3Dqq%26fromurl%3Dhttp%3a%2f%2fwww.youtx.com%2fhome%2fdashboard%2f&scope=get_user_info,get_fanslist,get_idollist"
                                class="cooToQQ"></a><a href="https://api.weibo.com/oauth2/authorize?client_id=3568509101&with_offical_account=1&response_type=code&redirect_uri=http://www.youtx.com%2Fprofile%2Fajax%2Floginopenid.ashx%3Fo%3Dsina%26fromurl%3Dhttp%3a%2f%2fwww.youtx.com%2fhome%2fdashboard%2f"
                                    class="cooToSina"></a><a href="https://oauth.taobao.com/authorize?response_type=code&client_id=21036824&redirect_uri=http://www.youtx.com%2Fprofile%2Fajax%2Floginopenid.ashx%3Fo%3Dtaobao%26fromurl%3Dhttp%3a%2f%2fwww.youtx.com%2fhome%2fdashboard%2f&state=1212&scope=item,promotion,item,usergrade"
                                        class="cooToTao"></a><a href="https://passport.youtx.com/profile/soufun.aspx?response_type=code&redirect_uri=http://www.youtx.com%2Fprofile%2Fajax%2Floginopenid.ashx%3Fo%3Dsoufun%26fromurl%3Dhttp%3a%2f%2fwww.youtx.com%2fhome%2fdashboard%2f"
                                            class="cooToFang"></a>
                        </div>
                    </div>
                </div>
            </div>
            <input type="hidden" value="1" id="loginState" />
        </div>



        <script type="text/javascript">
            var isPostBack = "<%= IsPostBack %>";
           
               //最后一个用户
            function SetLastUser(usr) {
                var id = "49BAC005-7D5B-4231-8CEA-16939BEACD67";
                var expdate = new Date();
                //当前时间加上两周的时间
                expdate.setTime(expdate.getTime() + 14 * (24 * 60 * 60 * 1000));
                SetCookie(id, usr, expdate);
            }
          

            function GetLastUser() {

                var id = "49BAC005-7D5B-4231-8CEA-16939BEACD67";//GUID标识符
                var usr = GetCookie(id);
                if (usr != null) {
                    document.getElementById('signin_email').value = usr;
                }
               
                GetPwdAndChk();
            }
            //取出密码
            function GetPwdAndChk() {
                var usr = document.getElementById('signin_email').value;
                var pwd = GetCookie(usr);
                if (pwd != null) {

                    document.getElementById('signin_password').value = pwd;
                   // document.getElementById('remember_me').checked = true;
                }

            }
            //取Cookie的值
            function GetCookie(name) {
                var arg = name + "=";
                var alen = arg.length;
                var clen = document.cookie.length;
                var i = 0;
                while (i < clen) {
                    var j = i + alen;
                    //alert(j);
                    if (document.cookie.substring(i, j) == arg) return getCookieVal(j);
                    i = document.cookie.indexOf(" ", i) + 1;
                    if (i == 0) break;
                }
                return null;
            }
            function getCookieVal(offset) {
                var endstr = document.cookie.indexOf(";", offset);
                if (endstr == -1) endstr = document.cookie.length;
                return unescape(document.cookie.substring(offset, endstr));
            }
            //写入到Cookie
            function SetCookie(name, value, expires) {
                var argv = SetCookie.arguments;
                //本例中length = 3
                var argc = SetCookie.arguments.length;
                var expires = (argc > 2) ? argv[2] : null;
                var path = (argc > 3) ? argv[3] : null;
                var domain = (argc > 4) ? argv[4] : null;
                var secure = (argc > 5) ? argv[5] : false;
                document.cookie = name + "=" + escape(value) + ((expires == null) ? "" : ("; expires=" + expires.toGMTString())) + ((path == null) ? "" : ("; path=" + path)) + ((domain == null) ? "" : ("; domain=" + domain)) + ((secure == true) ? "; secure" : "");
            }


            function ResetCookie() {
                var usr = document.getElementById('signin_email').value;
                var expdate = new Date();
                SetCookie(usr, null, expdate);
               
            }









            $(document).ready(function () {
                //刷新页面
                if (isPostBack == "true") {
                   
                }
                else {  GetLastUser();};

                $("#remember_me").val(false);
                //境外登录按钮
                $("#logOverSeas").click(function () {
                    $("#Member").css("display", "none");
                    $(".logInOverSeas").css("display", "block");
                    $("#logOverSeas").css("display", "none");
                    $("#logMember").css("display", "block");
                    $(".logInTit").text("境外手机号登录");
                    $("#loginState").val("2");
                });
                //普通登录按钮
                $("#logMember").click(function () {
                    $("#Member").css("display", "block");
                    $(".logInOverSeas").css("display", "none");
                    $("#logOverSeas").css("display", "block");
                    $("#logMember").css("display", "none");
                    $(".logInTit").text("乐安居会员登录");
                    $("#loginState").val("1");
                });
                $('#forgetpw').click(function () {
                    var signin_email;
                    if ($("#loginState").val() == "1") {
                        signin_email = $('#signin_email').val();
                    } else if ($("#loginState").val() == "2") {
                        signin_email = $('#signin_email2').val();
                    }
                    if (signin_email == '电子邮件/手机号' || signin_email == '境外手机号') {
                        signin_email = '';
                    }
                    window.location = 'ForgetPassword.aspx' ;
                });
                $("#remember_me").click(function () {
                    if ($("#remember_me").val() == "on") {
                        $("#remember_me").val(false);
                    }
                    else {
                        $("#remember_me").val("on");
                    }
                });

                $("#bSignIn").click(function () {
                    var check = true;
                    var regMbl;
                    var signin_email;
                    var loginState;
                    if ($("#loginState").val() == "1") {
                        signin_email = $.trim($('#signin_email').val());
                        regMbl = /^1[3-9]\d{9}$/;
                        loginState = 1;
                    } else if ($("#loginState").val() == "2") {
                        signin_email = $.trim($('#signin_email2').val());
                        regMbl = /^[0-9]{5,20}$/;
                    }

                    if (isEmail(signin_email) || regMbl.test(signin_email)) {
                        $('.logInError').css("visibility", "hidden");
                    }
                    else {
                        $('.logInError').css("visibility", "visible");
                        check = false;
                    }
                    var reg = /^[0-9a-zA-z_]{5,18}$/;
                    var signin_password;
                    if ($("#loginState").val() == "1") {
                        signin_password = $('#signin_password').val();
                    } else if ($("#loginState").val() == "2") {
                        signin_password = $('#signin_password2').val();
                    }
                    if (!reg.test(signin_password)) {
                        $('.logInError').css("visibility", "visible");
                        check = false;
                    } else {
                        $('.logInError').css("visibility", "hidden");
                    }
                    if (check) {
                        var telcode = "44_86";
                        if ($("#loginState").val() == "2") {
                            telcode = $("#selArea").val();
                            loginState = 2;
                        }
                        $("#bSignIn").attr("disabled", "disabled");
                        var remember_me = $("#remember_me").val();
                        if (!remember_me) { remember_me = ""; }

                        $.ajax({
                            url: 'Login.aspx?action=login',
                            type: 'GET', //GET
                            //async: true,    //或false,是否异步
                            data: {
                                loginState: loginState, signin_email: signin_email, signin_password: signin_password, remember_me: remember_me, telcode: telcode
                            },
                            timeout: 5000,    //超时时间
                            dataType: 'json',    //返回的数据格式：json/xml/html/script/jsonp/text

                            success: function (data) {
                                if (data == '1') {
                                    if (remember_me=='on') {
                                        //取用户名
                                        var usr = document.getElementById('signin_email').value;
                                        //取密码值
                                        var pwd = document.getElementById('signin_password').value;
                                        SetLastUser(usr);
                                        var expdate = new Date();
                                        //14 * (24 * 60 * 60 * 1000)
                                        expdate.setTime(expdate.getTime() + 14 * (24 * 60 * 60 * 1000));
                                        //将用户名和密码写入到Cookie
                                        SetCookie(usr, pwd, expdate);
                                       
                                       
                                    }
                                    else {ResetCookie();}
                                    $('.logInError').html("登录成功");
                                    $('.logInError').css("visibility", "visible");
                                    window.location.href = "index.aspx";

                                }
                                else {
                                    $('.logInError').css("visibility", "visible");
                                }
                            },
                            error: function (xhr, textStatus) {
                                console.log('错误');
                                console.log(xhr);
                                console.log(textStatus);
                            },
                            complete: function () {
                                console.log('结束')
                            }
                        })

                    }




                });
                $("#signin_email").keydown(function (event) {
                    if (event.keyCode == 13) {
                        $("#bSignIn").click();
                    }
                    $('.logInError').css("visibility", "hidden");
                });
                $("#signin_email").focus(function (event) {
                    $('.logInError').css("visibility", "hidden");
                });
                $("#signin_password").keydown(function (event) {
                    if (event.keyCode == 13) {
                        $("#bSignIn").click();
                    }
                    $('.logInError').css("visibility", "hidden");
                });
                $("#signin_password").focus(function (event) {
                    $('.logInError').css("visibility", "hidden");
                    if ($("#signin_password").val() == '') {
                        $(".logInPwdTip").html("");
                    }
                });
                $("#signin_password").blur(function (event) {
                    if ($("#signin_password").val() == '') {
                        $(".logInPwdTip").html("密码");
                    }
                });


                //境外
                $("#signin_email2").keydown(function (event) {
                    if (event.keyCode == 13) {
                        $("#bSignIn").click();
                    }
                    $('.logInError').css("visibility", "hidden");
                });
                $("#signin_email2").focus(function (event) {
                    $('.logInError').css("visibility", "hidden");
                });
                $("#signin_password2").keydown(function (event) {
                    if (event.keyCode == 13) {
                        $("#bSignIn").click();
                    }
                    $('.logInError').css("visibility", "hidden");
                });
                $("#signin_password2").focus(function (event) {
                    $('.logInError').css("visibility", "hidden");
                    if ($("#signin_password").val() == '') {
                        $(".logInPwdTip").html("");
                    }
                });
                $("#signin_password2").blur(function (event) {
                    if ($("#signin_password").val() == '') {
                        $(".logInPwdTip").html("密码");
                    }
                });




            });//ready
            $(function () {
                $("body").css("background-image", "url(images/loginbgnew.jpg) no-repeat center 70px;");
            })

            function isEmail(strEmail) {
                if (strEmail.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) != -1)
                    return true;
                else
                    return false;
            }






        </script>


        <!--尾部2011-9-6修改 start-->
        <div class="footer">
            <dl class="FooterCity">
                <dd class="footer_link_grey">热门城市：</dd>
                <dt><a href="http://www.youtx.com/beijing/" target="_blank">北京短租房</a>|<a href="http://www.youtx.com/shanghai/" target="_blank">上海短租房</a>|<a href="http://www.youtx.com/guangzhou/" target="_blank">广州短租房</a>|<a href="http://www.youtx.com/shenzhen/" target="_blank">深圳短租房</a>|<a href="http://www.youtx.com/hongkong/" target="_blank">香港短租房</a>|<a href="http://www.youtx.com/sanya/" target="_blank">三亚短租房</a>|<a href="http://www.youtx.com/suzhou/" target="_blank">苏州短租房</a>|<a href="http://www.youtx.com/hangzhou/" target="_blank">杭州短租房</a>|<a href="http://www.youtx.com/nanjing/" target="_blank">南京短租房</a>|<a href="http://www.youtx.com/xian/" target="_blank">西安短租房</a>|<a href="http://www.youtx.com/dalian/" target="_blank">大连短租房</a>|<a href="http://www.youtx.com/qingdao/" target="_blank">青岛短租房</a>|<a href="http://www.youtx.com/chongqing/" target="_blank">重庆短租房</a> <a href="http://www.youtx.com/chengdu/" target="_blank">成都短租房</a>|<a href="http://www.youtx.com/wuhan/" target="_blank">武汉短租房</a>|<a href="http://www.youtx.com/tianjin/" target="_blank">天津短租房</a>|<a href="http://www.youtx.com/kunming/" target="_blank">昆明短租房</a>|<a href="http://www.youtx.com/lijiang/" target="_blank">丽江短租房</a>|<a href="http://www.youtx.com/xiamen/" target="_blank">厦门短租房</a>|<a href="http://www.youtx.com/lasa/" target="_blank">拉萨短租房</a>|<a href="http://www.youtx.com/zhengzhou/" target="_blank">郑州短租房</a>|<a href="http://www.youtx.com/changsha/" target="_blank">长沙短租房</a>|<a href="http://www.youtx.com/changchun/" target="_blank">长春短租房</a>|<a href="http://www.youtx.com/shenyang/" target="_blank">沈阳短租房</a>|<a href="http://www.youtx.com/guilin/" target="_blank">桂林短租房</a>|<a href="http://www.youtx.com/cities/" target="_blank">更多...</a>
            </dl>
            <div class="CB"></div>
            <ul class="footer_link">
                <li><a href="http://www.youtx.com/help/about/" target="_blank" rel="nofollow">关于我们</a></li>
                <li class="footer_link_space">|</li>
                <li><a href="http://www.youtx.com/help/contact/" target="_blank" rel="nofollow">联系我们</a></li>
                <li class="footer_link_space">|</li>
                <li><a href="http://www.youtx.com/help/jobs/" target="_blank" rel="nofollow">招聘</a></li>
                <li class="footer_link_space">|</li>
                <li><a href="http://www.youtx.com/help/service/" target="_blank" rel="nofollow">服务协议</a></li>
                <li class="footer_link_space">|</li>
                <li><a href="http://www.youtx.com/feedback/" target="_blank" rel="nofollow" id="A1">意见反馈</a></li>
                <li class="footer_link_space">|</li>
                <li class="footer_link_grey footer_link_space" style="margin: 0;">客服热线：400-630-0088，客服邮箱：<span>service</span>
                    <img src="images/at.jpg" />
                    <span>youtx.com</span></li>
            </ul>
            <ul class="footer_link02">
                <li class="FooterDesktop"><a href="http://www.youtx.com/downloadshortcut/" target="_blank" rel="nofollow">下载桌面游天下</a> | <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow">手机游天下</a> | <a href="http://www.youtx.com/zhuanti/duanzufang/" target="_blank" rel="nofollow">短租房推荐</a> | <a href="http://blog.youtx.com/" target="_blank" rel="nofollow">博客</a> | </li>
                <li class="footer_link_grey footer_link_space" style="margin-right: 0;">关注我们：</li>
                <li class="footer_share" id="Li2">
                    <a href="http://weibo.com/youtxcom" class="isina" target="_blank" rel="nofollow"></a><a href="http://youtx.t.sohu.com/" class="isohu" target="_blank" rel="nofollow"></a><a href="http://t.163.com/youtx"
                        class="i163" target="_blank" rel="nofollow"></a><a href="http://t.qq.com/youtx" class="itengxun"
                            target="_blank" rel="nofollow"></a><a href="http://t.fang.com/youtx" class="isoufun" target="_blank" rel="nofollow"></a><a href="http://page.renren.com/600943269" class="irenren" target="_blank" rel="nofollow"></a>
                </li>
            </ul>

            <ul class="FooterNet" style="width: 475px;">
                <li class="FontArial02">Copyright &copy;
                <script type="text/javascript">document.write((new Date()).getFullYear());</script>
                    Youtx.com, All Rights Reserved<br />
                    <a href="/profile/images/icp.jpg" target="_blank" rel="nofollow">京ICP证041065号</a> 京公网安备11010602010093号-2</li>
                <li><a target="_blank" href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=passport.youtx.com&zoneoff=&lang=zh_CN" rel="nofollow">
                    <img src="images/verisignyoutx.gif" height="35" width="60"></a></li>
                <li><a href="https://www.itrust.org.cn/yz/pjwx.asp?wm=1766253730" rel="nofollow" target="_blank">
                    <img src="images/footernetpic.gif" /></a></li>
            </ul>
        </div>
        <!--2013-6-26修改-->
        <script type="text/javascript">
            $(document).ready(function () {
                $('body').append('<div id="feedbackbox" class="feedbackbox"><div class="feedback"><div class="FeedBackColseImg"><img class="FeedBackColse" title="关闭" src="images/feedbackclose.gif"></div><a class="feedbackA1" href="http://www.youtx.com/feedback/" target="_blank">意见反馈</a><a href="http://www.youtx.com/mo/" target="_blank"><img src="images/ewm.png"></a><a class="feedbackA2" href="http://www.youtx.com/mo/" target="_blank">游天下手机客户端<br>扫描或点击下载</a></div></div>');
                $(".FeedBackColse").click(function () {
                    $(".feedbackbox").hide();
                })
            });
        </script>
        <!--2013-6-26修改-结束-->
        <!--尾部2011-9-6修改 end-->
    </div>
    
</body>
</html>
