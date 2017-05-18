<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="forgetpassword_ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <meta http-equiv="Cache-Control" content="max-age=86400" />
    <script src="../js/jquery-1.6.2.min.js" language="javascript" type="text/javascript"></script>
    <script src="../js/jquery.cookie.js" language="javascript" type="text/javascript"></script>

    <link href="../css/public_passport.css" rel="Stylesheet" type="text/css" />
    <title>找回密码-乐安居</title>
    <link href="../css/register.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../css/validcode.css" />


</head>
<body>


    <div class="wrapper">
        <div class="Registration_main">
            <div class="Registration_left" style="background: url(../images/registrationbg.gif) no-repeat 5px bottom;"></div>
            <div class="Registration_right">
                <span class="Registration_You_z">找回密码</span>
                <div class="Registration_tab pt20">
                    <p style="color: #000">请输入您的注册邮箱或已验证的手机号，我们将向您发送用于找回密码的信息</p>
                    <p style="color: #000">境外手机号请联系客服，客服热线：400-630-0088（8：00-24:00），客服邮箱：service@leanju.com</p>
                    <div class="item_listxt">
                        <div class="input290">
                            <input type="text" id="forgot_emailOrPhone" value="输入邮箱/已绑定的手机" class="input" />
                        </div>
                          <p class="item_listxt_sure" id="ErrorMsgr"></p>
                          <p class="item_listxt_error" id="ErrorMsg">请输入有效的邮箱地址，或已验证的手机</p>
                   
                        <div class="Registration_btn">
                            <input name="" type="button" class="btn152" value="确认发送" onclick="sendEmailNew()" />
                           
                        </div>
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

                        $(this).siblings().attr("style", "display:none");
                    }
                }).blur(function () {
                    $(this).removeClass("color000");
                    if ($(this).val() == '') {
                        $(this).val(this.defaultValue);

                        $(this).siblings().attr("style", "display:inline");
                    }
                });
                var rquestVal = $.trim('');
                if (rquestVal.length > 0) {
                    $("#forgot_emailOrPhone").val(rquestVal);
                }


            })


            
           

                
            function sendEmailNew() {
          

                $("#sendErrorMsg").css('display', 'none');
                $("#ErrorMsg").css('visibility', 'hidden');
                var emailOrPhone = $.trim($("#forgot_emailOrPhone").val());
                emailOrPhone = (emailOrPhone == '输入邮箱/已绑定的手机') ? '' : emailOrPhone
                var regEmail = new RegExp("^\\w+((-\\w+)|(\\.\\w+))*\\@[A-Za-z0-9]+((\\.|-)[A-Za-z0-9]+)*\\.[A-Za-z0-9]+$");
                var regPhone = /^(((1[3-7]{1}[0-9]{1})|(18[0-9]{1}))+\d{8})$/;
                var regV = new RegExp("^[\\A-Za-z0-9]{4}$");
                var flag = true;

                if (emailOrPhone.length <= 0) {
                    $("#ErrorMsg").html('请填写注册邮箱/手机');
                    $("#ErrorMsg").css('visibility', 'visible');
                    flag = false;
                }
                if ((!regEmail.test(emailOrPhone)) && (!regPhone.test(emailOrPhone))) {
                    $("#ErrorMsg").html('邮箱/手机格式不正确');
                    $("#ErrorMsg").css('visibility', 'visible');
                    flag = false;
                }
                if (flag) {

                    $.ajax({
                        url: 'ForgetPassword.aspx?action=forget',
                        type: 'GET', //POST
                        //async: true,    //或false,是否异步
                        data: {
                            signin_email: emailOrPhone
                        },
                        timeout: 5000,    //超时时间
                        //dataType: 'json',    //返回的数据格式：json/xml/html/script/jsonp/text
                        dataType: 'text',
                        success: function (data) {
                           
                            //var pass = data.pass;
                            //var myDictionary = data.myDictionary;
                            //var a = myDictionary.a;
                            //var b = myDictionary.b;
                            //var c = myDictionary.c;
                            //alert("pass: " + pass + "myDictionary: " + myDictionary +
                            //    "a: " + a + "b: " + b + "c: " + c);//这个
                            if (data == '0') {
                                $("#ErrorMsg").html('该手机/邮箱未注册');
                                $("#ErrorMsg").css('visibility', 'visible');
                                
                            }
                            else {
                                $("#ErrorMsgr").html("密码为："+data);
                                $("#ErrorMsgr").css('visibility', 'visible');
                                $("#ErrorMsg").css('display', 'none');
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



            }



        </script>
        <!--表单js -end-->
        <!--2012-2-24注册end-->


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

                <li class="footer_link_space">|</li>
                <li class="footer_link_grey footer_link_space" style="margin: 0;">客服热线：400-630-0088，客服邮箱：<span>service</span>
                    <img src="../images/at.jpg" />
                    <span>youtx.com</span></li>
            </ul>
            <ul class="footer_link02">
                <li class="FooterDesktop"><a href="http://www.youtx.com/downloadshortcut/" target="_blank" rel="nofollow">下载桌面游天下</a> | <a href="http://www.youtx.com/mo/" target="_blank" rel="nofollow">手机游天下</a> | <a href="http://www.youtx.com/zhuanti/duanzufang/" target="_blank" rel="nofollow">短租房推荐</a> | <a href="http://blog.youtx.com/" target="_blank" rel="nofollow">博客</a> | </li>
                <li class="footer_link_grey footer_link_space" style="margin-right: 0;">关注我们：</li>
                <li class="footer_share" id="Li2"><a href="http://weibo.com/youtxcom" class="isina" target="_blank" rel="nofollow"></a><a href="http://youtx.t.sohu.com/" class="isohu" target="_blank" rel="nofollow"></a><a href="http://t.163.com/youtx"
                    class="i163" target="_blank" rel="nofollow"></a><a href="http://t.qq.com/youtx" class="itengxun"
                        target="_blank" rel="nofollow"></a><a href="http://t.fang.com/youtx" class="isoufun" target="_blank" rel="nofollow"></a><a href="http://page.renren.com/600943269" class="irenren" target="_blank" rel="nofollow"></a></li>
            </ul>

            <ul class="FooterNet" style="width: 475px;">
                <li class="FontArial02">Copyright &copy;
                    <script type="text/javascript">document.write((new Date()).getFullYear());</script>
                    Youtx.com, All Rights Reserved<br />
                    <a href="../images/icp.jpg" target="_blank" rel="nofollow">京ICP证041065号</a> 京公网安备11010602010093号-2</li>
                <li><a target="_blank" href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&sap=&dn=passport.youtx.com&zoneoff=&lang=zh_CN" rel="nofollow">
                    <img src="../images/verisignyoutx.gif" height="35" width="60"></a></li>
                <li><a href="https://www.itrust.org.cn/yz/pjwx.asp?wm=1766253730" rel="nofollow" target="_blank">
                    <img src="../images/footernetpic.gif" /></a></li>
            </ul>
        </div>
        <!--2013-6-26修改-->

        <!--2013-6-26修改-结束-->

        <!--尾部2011-9-6修改 end-->
    </div>
</body>
</html>
