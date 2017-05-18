<%@ Page Language="C#" AutoEventWireup="true" CodeFile="regist.aspx.cs" Inherits="regist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <meta http-equiv="Cache-Control" content="max-age=86400" />
    <script src="js/jquery-1.6.2.min.js" language="javascript" type="text/javascript"></script>
    <script src="js/jquery.cookie.js" language="javascript" type="text/javascript"></script>

    <link href="css/public_passport.css" rel="Stylesheet" type="text/css" />

    <link href="css/newedit_passport.css" rel="stylesheet" type="text/css" />
    <link href="css/register_passport.css" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" type="text/css" href="css/validcode.css" />
    <title>注册乐安居帐号</title>
    <meta name="keywords" content="注册乐安居帐号" />
    <meta name="description" content="注册乐安居帐号" />


</head>
<body>


    <div class="wrapper">

        <!--头 未登录 start-->
        <div id="youtxloginw" class="header">
            <p class="logo">
                <a href="index.aspx" target="_blank">
                    <img src="images/logo.jpg" alt="乐安居专业短租房、日租房网站" title="乐安居网旗下-专业短租房、日租房网站" />
                </a>
            </p>
        </div>




        <div class="wrapper">
            <div class="Registration_main">
                <div class="Registration_left" style="background: url(images/registrationbg.gif) no-repeat 5px bottom;">
                </div>
                <div class="Registration_right" id="Registration_right1" style="display: block;">
                    <div class="Registration_You" style="background: url(images/registration_ybg.gif) no-repeat 40px 0px;">
                    </div>

                    <div class="Registration_tab PT30">



                        <div class="item_listxt">

                            <div class="input290 PosRe">
                                <select class="telAreaSel" id="telSel">
                                    <option value="44_86" selected="selected">中国大陆 +86</option>
                                    <option value="94_852">中国香港 +852</option>
                                    <option value="122_853">中国澳门 +853</option>
                                    <option value="206_886">中国台湾 +886</option>
                                    <option value="13_61">澳大利亚 +61</option>
                                    <option value="79_49">德国 +49</option>
                                    <option value="174_7">俄罗斯 +7</option>
                                    <option value="72_33">法国 +33</option>
                                    <option value="194_82">韩国 +82</option>
                                    <option value="38_1">加拿大 +1</option>
                                    <option value="127_960">马尔达夫 +960</option>
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
                                <input type="text" value="请输入你的手机号" class="input"
                                    id="CellphoneNumber" style="width: 154px; margin-left: 122px;" />
                            </div>
                            <!--2015-12-14End-->
                            <p class="item_listxt_error" style="padding: 0 0 0 20px;">
                                电子邮箱不能为空/电子邮箱地址无效
                            </p>


                            <div class="input_passwrod passwrod_bg290">
                                <label class="input_labelBlur input02" for="user_password" style="display: inline">
                                    密码
                                </label>
                                <input type="password" class="input" id="user_password2" size="30" />
                            </div>
                            <p class="item_listxt_error">
                                密码不能为空
                            </p>
                            <div class="input_passwrod passwrod_bg290">
                                <label class="input_labelBlur input02" for="user_password" style="display: inline">
                                    确认密码
                                </label>
                                <input type="password" class="input" id="user_password_confirmation2" />
                            </div>
                            <p class="item_listxt_error">
                                两次输入不一致
                            </p>
                            <div class="input_two">
                                <span class="input93">
                                    <input type="text" value="姓氏" class="input" id="user_first_name2" />
                                </span><span class="input187">
                                    <input type="text" value="名字" class="input" id="user_last_name2" />
                                </span>
                            </div>
                            <p class="item_listxt_error">
                                请输入1到10字符的汉字或者字母
                            </p>
                            <p class="Registration_reader">
                                <input class="inputcheckbox" name="test" value="1" type="checkbox" id="Service2"
                                    checked="checked" />
                                <label>
                                    我已阅读并同意<a href="http://www.youtx.com/profile/Introduction/ServiceAgreement.aspx"
                                        target="_blank">服务协议</a>
                                </label>
                            </p>
                            <div class="Registration_btn pt25">
                                <input name="" type="button" class="btn152 fl" value="创建账户"
                                    id="bCreateAccount2" />
                                <p class="fl">
                                    已经是乐安居会员？<a href="login.aspx">立即登录</a>
                                </p>
                                <div style="clear: both; height: 0px; overflow: hidden;">
                                </div>
                            </div>
                            <p class="item_listxt_error mb5" id="notice2">
                                错误
                            </p>
                        </div>






                    </div>
                </div>


            </div>


            <!--表单js -->
            <script type="text/javascript">
                $(function () {
                    $(".input").focus(function () {
                        $(this).addClass("color000");
                        if ($(this).val() == this.defaultValue) {
                            $(this).val("");
                        }
                        $(this).siblings().attr("style", "display:none");
                        $("#telSel").css("display", "block");
                    }).blur(function () {
                        $(this).removeClass("color000");
                        if ($(this).val() == '') {
                            $(this).val(this.defaultValue);
                        }
                        $(this).siblings().attr("style", "display:none");
                        $("#telSel").css("display", "block");
                    });

                    $(".input02").click(function () {
                        $(this).hide();
                        $(this).siblings().focus()
                    });
                })
            </script>
            <!--表单js-end -->
        </div>
        <script type="text/javascript">

            var b = true;//被注册
            $(document).ready(function () {



                $("#user_password").blur(function () {
                    var reg = new RegExp("^[\\A-Za-z0-9\\!\\#\\$\\%\\^\\&\\*\\.\\~]{5,18}$");
                    var user_password = $(this).val();
                    if (reg.test(user_password)) {
                        $(this).parent().next().css('visibility', 'hidden');
                    }
                    else {
                        $(this).parent().next().css('visibility', 'visible');
                    }
                });

                $("#user_password_confirmation").blur(function () {
                    if ($(this).val() != $('#user_password').val()) {
                        $(this).parent().next().css('visibility', 'visible');
                    }
                    else {
                        $(this).parent().next().css('visibility', 'hidden');
                    }
                });

                $("#user_first_name").blur(function () {
                    if (!isUserName($(this).val())) {
                        $(this).parent().parent().next()
                        $(this).parent().parent().next().css('visibility', 'visible');
                    }
                    else {
                        if ($(this).val() == '姓氏') {
                            $(this).parent().parent().next().css('visibility', 'visible');
                        }
                        else {
                            $(this).parent().parent().next().css('visibility', 'hidden');
                        }
                    }
                });

                $("#user_last_name").blur(function () {
                    if (!isUserName($(this).val())) {
                        $(this).parent().parent().next().css('visibility', 'visible');
                    }
                    else {
                        if ($(this).val() == '名字') {
                            $(this).parent().parent().next().css('visibility', 'visible');
                        } else {
                            $(this).parent().parent().next().css('visibility', 'hidden');
                        }
                    }
                });

                $("#user_password2").blur(function () {
                    // var reg = new RegExp("^[\\A-Za-z0-9\\!\\#\\$\\%\\^\\&\\*\\.\\~]{5,18}$");
                    var reg = /^[0-9a-zA-z_]{5,18}$/;
                    var user_password = $(this).val();
                    if (user_password == '') {
                        $(this).parent().next().html('密码不能为空');
                        $(this).parent().next().css('visibility', 'visible');
                    }
                    else if (reg.test(user_password)) {
                        $(this).parent().next().css('visibility', 'hidden');
                    }
                    else {
                        $(this).parent().next().html('密码不能包含除字母数字下划线外的其他字符且长度至少为5位');
                        $(this).parent().next().css('visibility', 'visible');
                    }
                });

                $("#user_password_confirmation2").blur(function () {
                    if ($(this).val() != $('#user_password2').val()) {
                        $(this).parent().next().css('visibility', 'visible');
                    }
                    else {
                        $(this).parent().next().css('visibility', 'hidden');
                    }
                });

                $("#user_first_name2").blur(function () {
                    if (!isUserName($(this).val())) {
                        $(this).parent().parent().next().css('visibility', 'visible');
                    }
                    else {
                        if ($(this).val() == '姓氏') {
                            $(this).parent().parent().next().css('visibility', 'visible');
                        } else {
                            $(this).parent().parent().next().css('visibility', 'hidden');
                        }
                    }
                });

                $("#user_last_name2").blur(function () {
                    if (!isUserName($(this).val())) {
                        $(this).parent().parent().next().css('visibility', 'visible');
                    }
                    else {
                        if ($(this).val() == '名字') {
                            $(this).parent().parent().next().css('visibility', 'visible');
                        } else {
                            $(this).parent().parent().next().css('visibility', 'hidden');
                        }
                    }
                });

            });
            //添加2015-04-15end

            function isEmail(strEmail) {
                if (strEmail.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) != -1)
                    return true;
                else
                    return false;
            }
            $("#bCreateAccount2").click(function () {
                var check = true;
                var v = $("#Service2").attr("checked");
                if (v != 'checked') {
                    check = false;
                }
                var user_password = $("#user_password2").val();
                //var reg = new RegExp("^[\\A-Za-z0-9\\!\\#\\$\\%\\^\\&\\*\\.\\~]{5,18}$");
                var reg = /^[0-9a-zA-z_]{5,18}$/;
                if (reg.test(user_password)) {
                    //$("#user_password2").parent().next().css('visibility', 'hidden');
                }
                else {
                    // $("#user_password2").parent().next().css('visibility', 'visible');
                    check = false;
                }
                var user_password_confirmation = $("#user_password_confirmation2").val();
                if ($("#user_password_confirmation2").val() != $('#user_password2').val()) {
                    $("#user_password_confirmation2").parent().next().css('visibility', 'visible');
                    check = false;
                }
                else {
                    $("#user_password_confirmation2").parent().next().css('visibility', 'hidden');
                }
                var checkF2 = false;
                var checkL2 = false;
                var user_first_name = $("#user_first_name2").val();
                if (!isUserName($("#user_first_name2").val())) {
                    checkF2 = false;
                }
                else {
                    if ($("#user_first_name2").val() == '姓氏') {
                        checkF2 = false;
                    }
                    else {
                        $("#user_first_name2").parent().parent().next().css('visibility', 'hidden');
                        checkF2 = true;
                    }
                }
                var CellphoneNumber = $('#CellphoneNumber').val();
                var user_last_name = $("#user_last_name2").val();

                var countryAreaCode = $("#telSel").val();
                if (!isUserName($("#user_last_name2").val())) {
                    checkL2 = false;
                }
                else {
                    if ($("#user_last_name2").val() == '名字') {
                        checkL2 = false;
                    }
                    else {
                        $("#user_last_name2").parent().parent().next().css('visibility', 'hidden');
                        checkL2 = true;
                    }
                }
                if (!checkL2 || !checkF2) {
                    $("#user_last_name2").parent().parent().next().css('visibility', 'visible');
                    check = false;
                }

                if (check) {
                    $("#bCreateAccount2").attr("disabled", "disabled");
                    //CellphoneNumber


                    $.ajax({
                        type: 'GET',
                        //async: false,
                        async: false,
                        url: 'regist.aspx?action=regist',
                        data: {
                            countryAreaCode: countryAreaCode, CellphoneNumber: CellphoneNumber, user_password: user_password, user_first_name: user_first_name, user_last_name: user_last_name
                        },
                        success: function (data) {
                            if (data == '1') {
                                window.location.href = 'succeed.aspx';//注册成功跳转页面
                            }
                            else {
                                //传值
                              
                                $("#notice2").html("账号已被注册");
                                $("#notice2").css('visibility', 'visible');

                            }
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) { }
                    });

                } else {
                    $("#notice2").html("格式有误");
                    $("#notice2").css('visibility', 'visible');
                }
            });




            $("#bCreateAccount").keydown(function (event) {
                if (event.keyCode == 13) {
                    $("#bCreateAccount").click();
                }
            });
            $("#bCreateAccount2").keydown(function (event) {
                if (event.keyCode == 13) {
                    $("#bCreateAccount2").click();
                }
            });





            function isUserName(str) {
                var reg = /^[a-zA-Z\u4e00-\u9fa5]{1,10}$/;
                if (!reg.test(str)) {
                    return false;
                }
                else {
                    return true;
                }
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
