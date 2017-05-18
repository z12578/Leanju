<%@ Page Language="C#" AutoEventWireup="true" CodeFile="account_index.aspx.cs" Inherits="user_home_account_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <meta http-equiv="Cache-Control" content="max-age=86400" />
    <script src="../js/jquery-1.6.2.min.js" language="javascript" type="text/javascript"></script>
    <link href="../css/public.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../js/jQuery.cookie.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/easyui.css">
    <link rel="stylesheet" type="text/css" href="../css/icon.css">
    <link rel="stylesheet" type="text/css" href="../css/demo.css">
    <link href="../css/style.css?v=201704211100011" rel="stylesheet" type="text/css" />
    <link href="../css/traveling.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/jquery.easyui.min.js"></script>

    <script type="text/javascript" language="javascript">
        window.onerror = function () { return true; }
    </script>

    <title>用户中心-乐安居</title>
    <link href="../css/Control_Panel.css" rel="stylesheet" type="text/css" />
    <link href="../css/mycenter.css" rel="stylesheet" type="text/css" />


</head>
<body>


    <div class="wrapper">

        <div id="youtxlogin" class="header">

            <!--2013-5-3修改-->
            <p class="logo">
                <a href="index.html" target="_blank">
                    <img src="../images/my.jpg" alt="乐安居 专业短租房、日租房网站" title="乐安居 专业短租房、日租房网站" />
                </a>
            </p>
            <!--2013-5-3修改-结束-->
            <ul class="subnav">
                <li><a><%=Session["user_first_name"]%><%=Session["user_last_name"]%></a></li>
                <li><a href="../index.aspx">退出</a></li>
                <!--2013-5-3修改-->


            </ul>
        </div>
        <!--头 已登录 end-->

        <div class="mycenter">
            <div style="margin: 20px 0;"></div>
            <div class="easyui-tabs" data-options="tabWidth:131" style="width: 960px; height: 900px; margin-left: 2px;">
                <div title="账户首页" style="padding: 10px">
                    <p style="color: red;">
                        <img src="../images/login_tips.png" />亲爱的用户您好，乐安居短租网提醒您，为谨防网络诈骗，请勿要相信除平台规定外的下单及支付方式，如有疑问，请致电：4006300088！
                    </p>
                    <!--我的账户内容 start-->
                    <div class="mycenterindex MT5">
                        <!--我的账户内容左 start-->
                        <div class="mycenterindex_left">
                            <!--用户资料 start-->
                            <div class="mycenterindex_box" style="margin-top: 5px;">
                                <div class="mi_l_pic">
                                    <div class="picwrap">
                                        <div class="pm_shadow r"></div>
                                        <div class="pm_shadow l"></div>
                                        <div class="pm">
                                            <div class="pm_inner">
                                                <div class="pm_shadow_inner r"></div>
                                                <div class="pm_shadow_inner l"></div>
                                                <div class="pm_shadow_inner t"></div>
                                                <div class="pm_shadow_inner b"></div>
                                                <a title="查看资料" href="/user/show/2538058/">
                                                    <img width="209" height="209"
                                                        src="../images/pic-225x225.jpg" /></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="EditInfor">
                                    <p><a href="/Basic/">编辑资料</a></p>
                                    <p class="EditInfor_name"><a title="查看资料" href="/user/show/2538058/">许丽</a></p>
                                </div>
                                <div class="NewsAut">
                                    <ul style="display: none;">
                                        <li class="NewsAut01">明星房东</li>
                                        <li class="NewsAut02">信用卡</li>
                                        <li class="NewsAut03">认证</li>
                                        <li class="NewsAut04">房东</li>
                                    </ul>
                                    <div style="clear: both;"></div>

                                </div>
                                <div class="NewsAut clearfix">
                                    <dl id="" class="NewsAutCredit">
                                        <dt>荣誉勋章：</dt>

                                        <!--2014-6-18修改-结束-->
                                    </dl>
                                </div>
                            </div>
                            <!--用户资料 end-->
                            <!--认证信息 start-->
                            <div class="mycenterindex_box">
                                <ul class="mi_l_title">
                                    <li class="mi_l_t_left">认证信息</li>
                                    <li class="mi_l_t_right"><a href="/User/Profile">添加更多</a></li>
                                </ul>
                                <ul class="mi_l_comment1">
                                    <li style="display: none"><span>良好的评论</span><div class="verifications">
                                    </div>
                                    </li>

                                    <li><span>电话验证</span><div class="verifications">
                                    </div>
                                    </li>

                                </ul>
                            </div>
                            <!--检查 end-->
                        </div>
                        <!--我的账户内容左 end--->
                        <!--我的账户内容右 start-->
                        <div class="mycenterindex_right">
                            <!--2012-5-28我的账户修改-->





                            <div style="margin-top: 5px; width: 672px; padding-right: 0;" class="mycenterindex_box1">
                                <table border="0" width="100%">
                                    <tr>
                                        <td class="NewMyTd" valign="top">
                                            <div class="NewMy_L">
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="NewMy_Table ColorGray666">
                                                    <tr class="NewMy_header">
                                                        <td class="CTitle" style="width: 60px;">我的订单</td>
                                                        <td class="Gray"><a href="/payment/User/TravelEn/TenantsOrderManageEn.aspx?SelectState=ss2" class="LinkGray">待付款 (<span>0</span>)</a></td>
                                                        <td class="Gray"><a href="/payment/User/MyroomEn/OrderManageEn.aspx?SelectState=1" class="LinkGray">待接受订单  (<span>0</span>)</a></td>
                                                        <td><a href="/judges_tab/1/" class="LinkGray">待评价 (<span>0</span>)</a></td>
                                                    </tr>

                                                    <tr>
                                                        <td class="CTitle">我的财富</td>
                                                        <td>我的钱：</td>
                                                        <td class="ColorPink">￥0</td>
                                                        <td><a href="/profile/cashaccount/#chong">充值>></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="CTitle">&nbsp;</td>
                                                        <td>返现：</td>
                                                        <td class="ColorPink">￥0</td>
                                                        <td><a href="/profile/User/CashBack/CashBack.aspx">提现>></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="CTitle">&nbsp;</td>
                                                        <td>红包：</td>
                                                        <td class="ColorPink">￥0</td>
                                                        <td><a href="/User/RedPacket/">查看>></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="CTitle">&nbsp;</td>
                                                        <td>代金券：</td>
                                                        <td class="ColorPink">￥100</td>
                                                        <td><a href="/User/Ticket/">实体券激活>></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="CTitle">&nbsp;</td>
                                                        <td>积分：</td>
                                                        <td class="ColorPink">100</td>
                                                        <td><a href="http://www.youtx.com/jifen/HowToEarn">怎样获得>></a></td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                        <td valign="top">
                                            <div class="NewMy_R">
                                                <h2>快速链接：</h2>
                                                <ul>

                                                    <li><a href="/User/Profile/" target="_blank">邮箱验证</a></li>

                                                    <li><a href="/Basic/" target="_blank">修改资料</a></li>
                                                    <li><a href="/user/account_recommend" target="_blank">邀请好友</a></li>
                                                    <li><a href="https://passport.youtx.com/user/account_pwdsetup" target="_blank">修改密码</a></li>
                                                    <li><a href="/how_it_work/" target="_blank">新手上路</a></li>
                                                    <li><a href="/user/remind" target="_blank">消息通知设置</a></li>
                                                    <li><a href="/profile/Passport/AccountBind.aspx" target="_blank">链接分享设置</a></li>

                                                    <li><a href="/profile/Passport/ZhimaTrustNew.aspx" target="_blank" style="color: #E00176">展示芝麻信用分</a></li>

                                                    <li><a href="/profile/Passport/IdCardIdentityByPwd.aspx" target="_blank" style="color: #E00176">身份认证</a></li>

                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                                <!--2012-5-28我的账户修改-结束-->
                            </div>
                            <div style="margin: 20px 10px 0;">
                                <a href="http://www.youtx.com/Topic/event-newhouse-new/" target="_blank">
                                    <img alt="" src="http://js.youtx.com/zhuanti/images/mxmxfd1.jpg" /></a>
                            </div>
                            <!--租客广告-->


                            <!--消息通知 start-->
                            <div class="mycenterindex_box1">
                                <ul class="mi_r_title">
                                    <li class="mi_r_t_left">系统消息</li>
                                    <li style="float: right;"><a href="/User/MailBox/SystemMail/">查看全部</a></li>
                                </ul>
                                <ul class="mi_r_comment1">

                                    <li class="default"><a _messageid="4551909" href="javascript:void(0);" _actionurl="/User/Ticket/">注册成功，100元代金券已发送到您的帐户！赶快去使用吧。</a></li>

                                </ul>
                            </div>
                            <!--消息通知 end-->
                            <!--信件 start-->
                            <div class="mycenterindex_box1">
                                <ul class="mi_r_title">
                                    <li class="mi_r_t_left">未读信息(0)</li>
                                </ul>

                                <div class="mi_r_c2_btns"><a href="/User/MyMailBox/" class="button_zrsyxx">查看所有未读信息</a></div>
                            </div>
                            <!--信件 end-->
                            <!--问答-->
                            <div class="mycenterindex_box1">
                                <div class="HouResTit">
                                    <span class="FR Colore20179"></span>
                                    <h2>有人在问...</h2>
                                </div>
                                <ul class="HouResQuIng" id="tichu"></ul>
                                <div class="HouResQuIngMore" id="otherquestion"></div>
                            </div>
                            <!--问答-->
                        </div>
                        <!--我的账户内容右 end--->
                    </div>
                    <!--我的账户内容 end-->





                </div>
                <div title="收件箱" style="padding: 10px">
                    <p>Maps Content.</p>
                </div>
                <div title="我是房东" style="padding: 10px">
                    <p>Journal Content.</p>
                </div>
                <div title="我是租客" style="padding: 10px">
                    <p style="color: red;">
                        <img src="../images/login_tips.png" />亲爱的租客您好，乐安居短租网提醒您，为谨防网络诈骗，请勿要相信除平台规定外的下单及支付方式，如有疑问，请致电：4006300088！
                    </p>
                    <div class="mycenter_bigtitle_nav">
                        <ul class="mycenter_smalltitle mycenter_smalltitle2">
                            <li class="active"><a href="">订单管理</a></li>

                            <li><a href="">我的收藏</a></li>
                        </ul>
                    </div>
                    <div style="clear: both;">
                    </div>


                    <div class="mycenter_main">
                        <!--2012-7-20修改-->
                        <div class="AreaOrder">
                            <ul>
                                <li id="youtx" class="AreaOrderCur">
                                    <h3>住宿订单列表</h3>
                            </ul>
                            <ul class="Recycle">
                                <%--有用--%><li class="RecycleOrder"><a href="#" onclick="getcancel()">订单回收站</a>
                                    <div class="NewIco">
                                        <img src="../images/NewIco726.png" />
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="DivCB">
                        </div>

                        <div class="TravelTs" id="accountPrompt">

                            <a href="/payment/User/TravelEn/TenantsOrderManageEn.aspx?category=0" style="padding-left: 0px;" class="LinkA">所有订单(<span>0</span>)</a>


                            <a href="/payment/User/TravelEn/TenantsOrderManageEn.aspx?category=0&SelectState=ss4" class="LinkA">待入住(<span>0</span>)</a>
                            <a href="/payment/User/TravelEn/TenantsOrderManageEn.aspx?category=0&SelectState=ss48" class="LinkA">待评价(<span>0</span>)</a>

                            <div class="TravelTSeacher">
                                <input class="TravelTSeacherText" style="color: #666; float: left; *margin-top: 4px;" id="TravelTSeacherText" value="请输入订单号" type="text" />


                                <input class="TravelTSeacherBtn" type="button" value="搜索" />
                            </div>

                        </div>

                        <div style="margin-top: 10px;">
                        </div>
                        <div class="clearfix HistoryOrder" style="display: none;" id="HistoryOrder">
                            <div class="more_msg" id="HistoryMsg">默认显示近期订单，<a href="/payment/User/TravelEn/TenantsOrderManageEn.aspx?category=1">查看历史订单</a></div>
                        </div>

                        <div data-options="region:'center',border:false" style="height: 600px;">
                            <table id="dg">
                            </table>
                        </div>
                    </div>



                </div>















                <div title="账户管理" style="padding: 10px">
                    <p>References Content.</p>
                </div>
                <div title="评价管理" style="padding: 10px">
                    <p>References Content.</p>
                </div>
                <div title="我的资产" data-options="tabWidth:120" style="padding: 10px">
                    <p>Contact Content.</p>
                </div>
            </div>
        </div>
        <style type="text/css">
            .HeaderTiShi07 {
                color: #666;
                white-space: nowrap;
                position: absolute;
                top: -29px;
                left: 40px;
                font-size: 12px;
                background: #fff7bc;
                height: 20px;
                line-height: 20px;
                padding: 0 15px 0 5px;
                border: 1px solid #d4c79a;
            }

                .HeaderTiShi07 span {
                    position: absolute;
                    left: 10px;
                    bottom: -12px;
                    color: #d4c79a;
                    z-index: 2;
                }

                .HeaderTiShi07 .TiShiB {
                    bottom: -11px;
                    color: #fff7bc;
                    z-index: 3;
                }

                .HeaderTiShi07 .TiShi07Img {
                    position: absolute;
                    top: 3px;
                    right: 3px;
                    cursor: pointer;
                }

            .mycenter .NewSubNav, .wrapper .mycenter {
                overflow: visible;
            }
        </style>

        <!--2013-6-26修改-->
        <script type="text/javascript">
            function getcancel() {
                $('#dg').datagrid({
                    url: 'account_index.aspx?action=recycle',
                    isField: "Oid",
                    pagination: true,
                    pageSize: 10,
                    pageList: [10, 30, 50],
                    fit: true,
                    fitColums: true,
                    singleSelect: true,



                    columns: [[
            { field: 'Oid', title: '订单号', width: 100 },
            { field: 'Hno', title: '房间', width: 100 },
            { field: 'Intime', title: '入住时间', width: 150 },
            { field: 'Price', title: '房费金额', width: 100 },
            { field: 'Lname', title: '房东', width: 100 },
           
            
                    ]]
                });







            }



            function deleterow(id) {
                $.messager.confirm('确认', '是否确定删除该数据？', function (r) {
                    if (r) {

                        $.ajax({
                            url: 'account_index.aspx?action=cancel',
                            type: 'GET', //GET
                            //async: true,    //或false,是否异步
                            data: {
                                id: id
                            },
                            timeout: 5000,    //超时时间
                            dataType: 'json',    //返回的数据格式：json/xml/html/script/jsonp/text

                            success: function (data) {
                                if (data == '1') {

                                    $('#dg').datagrid('reload');
                                }
                                else { alert("未能取消！"); }

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


            }
            $(function () {



                $('#dg').datagrid({
                    url: 'account_index.aspx?action=all',
                    isField: "Oid",
                    pagination: true,
                    pageSize: 10,
                    pageList: [10, 30, 50],
                    fit: true,
                    fitColums: true,
                    singleSelect: true,



                    columns: [[
            { field: 'Oid', title: '订单号', width: 100 },
            { field: 'Hno', title: '房间', width: 100 },
            { field: 'Intime', title: '入住时间', width: 150 },
            { field: 'Price', title: '房费金额', width: 100 },
            { field: 'Lname', title: '房东', width: 100 },
            { field: 'Ostate', title: '订单状态', width: 150 },
             {
                 field: 'opt', title: '操作', width: 150, align: 'center',
                 formatter: function (value, row, index) {
                     var d = '<a href="#" onclick="deleterow(' + row.Oid + ')">取消</a>';
                     return d;
                     //if (row.editing) {
                     //    var s = '<a href="#" onclick="saverow(' + index + ')">保存</a> ';
                     //    var c = '<a href="#" onclick="cancelrow(' + index + ')">取消</a>';
                     //    return s + c;
                     //} else {
                     //    var e = '<a href="#" onclick="editrow(' + index + ')">确认</a> ';
                     //    var d = '<a href="#" onclick="deleterow(' + index + ')">取消</a>';
                     //    return e + d;
                     //}
                 }



             }
                    ]]


                    //onBeforeEdit: function (index, row) {
                    //    row.editing = true;
                    //    $('#dg').datagrid('refreshRow', index);
                    //},
                    //onAfterEdit: function (index, row) {
                    //    row.editing = false;
                    //    $('#dg').datagrid('refreshRow', index);
                    //},
                    //onCancelEdit: function (index, row) {
                    //    row.editing = false;
                    //    $('#dg').datagrid('refreshRow', index);
                    //}
                });



            });



            //$(function () {




            //    //日期相关的操作结束  

            //    //edit time:2015-06-18
            //    var pageIndex = "1";
            //    var pageCount = "0";
            //    var category = "0";
            //    var recentCount = "0";
            //    var historyCount = "0";
            //    var conditionCount = 0;

            //    if (conditionCount > 0) {
            //        if (recentCount > 0 && historyCount > 0) {

            //            if ($("#TravelTSeacherText").val() != "" && $("#TravelTSeacherText").val() == "请输入订单号") {
            //                if (category == 0) {
            //                    if (pageIndex == pageCount) {
            //                        $("#HistoryMsg").html("默认显示近期订单，<a href='/payment/User/TravelEn/TenantsOrderManageEn.aspx?category=1'>查看历史订单</a>");
            //                        $("#HistoryOrder").show();
            //                        $("#RecentOrder").hide();
            //                        $(".no_orderbox").hide();
            //                    }
            //                }
            //                else {
            //                    $("#HistoryMsg").html("以下为所有历史订单，<a href='/payment/User/TravelEn/TenantsOrderManageEn.aspx?category=0'>点击返回</a>");
            //                    $("#HistoryOrder").hide();
            //                    $("#RecentOrder").show();
            //                    $(".no_orderbox").hide();
            //                }
            //            }
            //        }
            //        else if (recentCount > 0 && historyCount == 0) {

            //        }
            //        else if (recentCount == 0 && historyCount > 0) {
            //            if ($("#TravelTSeacherText").val() != "" || $("#TravelTSeacherText").val() != "请输入订单号") {
            //                if (category == 0) {
            //                    //                    $("#HistoryMsg").html("您近期没有订单，<a href='/payment/User/TravelEn/TenantsOrderManageEn.aspx?category=1'>可查看历史订单</a>");
            //                    $("#HistoryOrder").hide();
            //                    $("#RecentOrder").hide();
            //                    $(".no_orderbox h1").html("您近期没有订单，<a href='/payment/User/TravelEn/TenantsOrderManageEn.aspx?category=1'>可查看历史订单</a>");
            //                    $(".no_orderbox").show();
            //                }
            //                else {
            //                    $("#HistoryOrder").hide();
            //                    $("#RecentOrder").show();
            //                    $(".no_orderbox").hide();
            //                    $("#RecentMsg").html("以下为所有历史订单，<a href='/payment/User/MyroomEn/OrderManageEn.aspx?category=0'>点击返回</a>");
            //                }
            //            }
            //        }
            //        else if (recentCount == 0 && historyCount == 0) {
            //            //您目前没有订单                
            //            $("#HistoryOrder").hide();
            //            $("#RecentOrder").hide();
            //            $(".no_orderbox").show();
            //        }
            //    }
            //    else {
            //        $(".no_orderbox").show();
            //    }

            //    if (recentCount > 0 || historyCount > 0) {
            //        if (conditionCount == 0) {
            //            $(".no_orderbox").show();
            //        }
            //    }

            //});


            //$(".timeleft").each(function () {
            //    var leftsecond = $(this).attr("ltime");
            //    leftsecond = parseInt(leftsecond);
            //    var id = $(this).attr("id");
            //    if (leftsecond > 0) {
            //        setInterval(function () {
            //            var hour = Math.floor(leftsecond / 3600).toString().length == 1 ? "0" + Math.floor(leftsecond / 3600) : Math.floor(leftsecond / 3600);
            //            var m = Math.floor((leftsecond % 3600) / 60).toString().length == 1 ? "0" + Math.floor((leftsecond % 3600) / 60) : Math.floor((leftsecond % 3600) / 60);
            //            var s = ((leftsecond % 3600) % 60).toString().length == 1 ? "0" + (leftsecond % 3600) % 60 : (leftsecond % 3600) % 60;
            //            $("#" + id).text(hour + ":" + m + ":" + s);
            //            leftsecond--;
            //            if (leftsecond < 0) {
            //                $("#" + id).parent().html("<span class=\"NewTravelRedbg\">过期</span>");
            //                $(".btn015[oid=" + id + "]").parent().html("");
            //            }
            //        }, 1000);
            //    }
            //    else {
            //        $("#" + id).parent().html("<span class=\"NewTravelRedbg\">过期</span>");
            //        $(".btn015[oid=" + id + "]").parent().html("");
            //    }
            //});
            ////倒计时

            //window.confirm("确定要删除此订单？\r\n删除后，您可以在订单回收站还原该订单。")








        </script>
</body>
</html>
