<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Hangzhou.aspx.cs" Inherits="place_Hangzhou" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />


    <script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>



    <link rel="stylesheet" href="../css/youtxpublic2016.css?v=2017042111001" />








    <title>杭州短租房,杭州日租房,杭州短租公寓-乐安居杭州短租站</title>


    <link href="../css/list2016_2014css.css?v=2017042111002" rel="stylesheet" type="text/css" />




    <script type="text/javascript">
        $(function () {
            var date_num = 1;
            switch (date_num) {
                case 1: $(".PriceBox").css({ width: "65px" }); /*1天*/
                    break;
                case 2: $(".PriceBox").css({ width: "130px" }); /*2天*/
                    break;
                case 3: $(".PriceBox").css({ width: "195px" }); /*3天*/
                    break;
                case 4: $(".PriceBox").css({ width: "260px" }); /*4天*/
                    break;
                case 5: $(".PriceBox").css({ width: "325px" }); /*5天*/
                    break;
                case 6: $(".PriceBox").css({ width: "390px" }); /*6天*/
                    break;
                default: $(".PriceBox").css({ width: "455px" }); /* 7<=date_num*/
            }
        });

    </script>



    <link rel="stylesheet" href="../css/list2016_css.css" />
    <!--2016end-->

    <!--new calendar start-->

    <script type="text/javascript" src="http://js.youtx.com/scripts/list2016_calendar_head.js?v=201704211100"></script>
    <!--new calendar end-->

</head>
<body>

    <script type="text/javascript">
        var HostUrl = 'http://www.youtx.com';
        var HostUrl_En = 'http://en.youtx.com';
        var HostMallShop = 'http://mall.youtx.com';
        var lang = "en-US";
        $(function () {
            $(".HeadLanguage").click(function () {
                $.cookie('LN', lang, { expires: 30, path: '/', domain: 'youtx.com' });
                $.cookie('huobi', "USD", { expires: 30, path: '/', domain: 'youtx.com' });
                location.href = HostUrl_En;
            });
        });
    </script>

    <script type="text/javascript">
        //监控代码请勿删除
        var _dctc = _dctc || {}; _dctc._account = _dctc._account || ['UA-25297079-1']; _dctc.isNorth = _dctc.isNorth || 'Y'; _dctc.bid = '27'; (function () {
            var script = document.createElement('script'); script.type = 'text/javascript'; script.async = true; script.src = 'http://js.soufunimg.com/count/load.min.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(script, s);
        })();
        //监控代码结束

    </script>



    <!--头部start-->


    <script type="text/javascript">
        var WRInitTime = (new Date()).getTime();
    </script>

    <div class="header clearfix">
        <a id="youtx_C01_01" class="youtxLogo" href="/">
            <img src="../images/youtxlogo.png" width="118" height="62" /></a>
        <ul class="headerNav clearfix" id="headerNav" style="width: 580px;">
            <li class="active"><a id="youtx_C01_02" href="/" target="_blank">首页</a></li>


            <li class="curBg"></li>

        </ul>



        <ul class="headerLogin clearfix" id="youtxlogin">
            <li class="dropDownLi">
                <a target="_blank" class="dropDownTrigger" id="NameA"><%=Session["user_first_name"]%><%=Session["user_last_name"]%></a>
                <a href="../index.aspx">退出</a>

            </li>
        </ul>


    </div>
    <div class="wrap">
        <div class="content">


            <!--</div>-->
            <!--<div class="content">-->

            <!-- 快搜区begin -->
            <div class="qSearch">
                <!-- 搜索区begin -->
                <div class="search_rent">

                    <a id="submit_location" class="btn_search" style="width: 150px;">搜 索</a>
                    <dl class="clearfix">
                        <dd class="floatl cityBox" id="youtxlist_B02_01">
                            <input name="txtCity" type="text" id="txtCity" class="inputCity" value="杭州" />
                            <!--热门城市HotCity2014.htm begin-->

                            <div class="Ytxcitybox" id="HotCities">
                                <div class="YtxcityboxTit" id="YtxcityboxTit">
                                    <span class="close" onclick="$('#HotCities').hide();"></span>可直接输入地址（城市、景点、商圈等）
                                </div>
                                <div class="citylist" id="citylist">
                                    <div class="citylisTab clearfix" id="citylisTab1">
                                        <span class="Cur">热门</span><span>ABCDF</span><span>GHJ</span><span>KLMNPQR</span><span>STW</span><span>XYZ</span>
                                    </div>
                                    <ul class="citylisTabUl" id="citylistUl">
                                        <li style="display: block">
                                            <dl class="categories clearfix">
                                                <dt class="categoriesTit">国内</dt>
                                                <dd class="categoriesTxt">
                                                    <a data="beijing" href="javascript:void(0)">北京</a>
                                                    <a data="shanghai" href="javascript:void(0)">上海</a>
                                                    <a data="tianjin" href="javascript:void(0)">天津</a>
                                                    <a data="chongqing" href="javascript:void(0)">重庆</a>
                                                    <a data="qingdao" href="javascript:void(0)">青岛</a>
                                                    <a data="dalian" href="javascript:void(0)">大连</a>
                                                    <a data="xian" href="javascript:void(0)">西安</a>
                                                    <a data="nanjing" href="javascript:void(0)">南京</a>
                                                    <a data="hangzhou" href="javascript:void(0)">杭州</a>
                                                    <a data="suzhou" href="javascript:void(0)">苏州</a>
                                                    <a data="guangzhou" href="javascript:void(0)">广州</a>
                                                    <a data="shenzhen" href="javascript:void(0)">深圳</a>
                                                    <a data="chengdu" href="javascript:void(0)">成都</a>
                                                    <a data="xiamen" href="javascript:void(0)">厦门</a>
                                                    <a data="sanya" href="javascript:void(0)">三亚</a>
                                                    <a data="hongkong" href="javascript:void(0)">香港</a>
                                                    <a data="taibei" href="javascript:void(0)">台北</a>
                                                    <a data="shenyang" href="javascript:void(0)">沈阳</a>
                                                    <a data="kunming" href="javascript:void(0)">昆明</a>
                                                    <a data="wuhan" href="javascript:void(0)">武汉</a>
                                                    <a data="dali" href="javascript:void(0)">大理</a>
                                                    <a data="jinan" href="javascript:void(0)">济南</a>
                                                    <a data="beihai" href="javascript:void(0)">北海</a>
                                                    <a data="nanning" href="javascript:void(0)">南宁</a>
                                                </dd>
                                            </dl>

                                            <dl class="categories clearfix">
                                                <dt class="categoriesTit">海外</dt>
                                                <dd class="categoriesTxt">
                                                    <a href="http://www.youtx.com/newyork/" target="_blank" data="newyork">纽约</a>
                                                    <a href="http://www.youtx.com/losangeles/" target="_blank" data="losangeles">洛杉矶</a>
                                                    <a href="http://www.youtx.com/paris/" target="_blank" data="paris">巴黎</a>
                                                    <a href="http://www.youtx.com/milan/" target="_blank" data="milan">米兰</a>
                                                    <a href="http://www.youtx.com/singapore/" target="_blank" data="singapore">新加坡</a>
                                                    <a href="http://www.youtx.com/madrid/" target="_blank" data="madrid">马德里</a>
                                                    <a href="http://www.youtx.com/roma/" target="_blank" data="roma">罗马</a>
                                                    <a href="http://www.youtx.com/venice/" target="_blank" data="venice">威尼斯</a>
                                                    <a href="http://www.youtx.com/barcelona/" target="_blank" data="barcelona">巴塞罗那</a>
                                                    <a href="http://www.youtx.com/seoul/" target="_blank" data="seoul">首尔</a>
                                                    <a href="http://www.youtx.com/vancouver/" target="_blank" data="vancouver">温哥华</a>
                                                    <a href="http://www.youtx.com/toronto/" target="_blank" data="toronto">多伦多</a>
                                                    <a href="http://www.youtx.com/bangkok/" target="_blank" data="bangkok">曼谷</a>
                                                    <a href="http://www.youtx.com/kualalumpur/" target="_blank" data="kualalumpur">吉隆坡</a>
                                                </dd>
                                            </dl>

                                        </li>
                                        <li style="display: none">
                                            <dl class="categories clearfix">
                                                <dd class="categoriesTxt">
                                                    <a data="anshan" href="javascript:;">鞍山</a>
                                                    <a data="anyang" href="javascript:;">安阳</a>
                                                    <a data="beijing" href="javascript:;">北京</a>
                                                    <a data="beihai" href="javascript:;">北海</a>
                                                    <a data="baoding" href="javascript:;">保定</a>
                                                    <a data="baotou" href="javascript:;">包头</a>
                                                    <a data="baoshan" href="javascript:;">保山</a>
                                                    <a data="chengdu" href="javascript:;">成都</a>
                                                    <a data="chongqing" href="javascript:;">重庆</a>
                                                    <a data="changsha" href="javascript:;">长沙</a>
                                                    <a data="changchun" href="javascript:;">长春</a>
                                                    <a data="changzhou" href="javascript:;">常州</a>
                                                    <a data="chengde" href="javascript:;">承德</a>
                                                    <a data="chizhou" href="javascript:;">池州</a>
                                                    <a data="dalian" href="javascript:;">大连</a>
                                                    <a data="dali" href="javascript:;">大理</a>
                                                    <a data="dandong" href="javascript:;">丹东</a>
                                                    <a data="daqing" href="javascript:;">大庆</a>
                                                    <a data="datong" href="javascript:;">大同</a>
                                                    <a data="daxinganlingdiqu" href="javascript:;">大兴安岭</a>
                                                    <a data="diqing" href="javascript:;">迪庆</a>
                                                    <a data="dongguan" href="javascript:;">东莞</a>
                                                    <a data="foshan" href="javascript:;">佛山</a>
                                                    <a data="fuzhou" href="javascript:;">福州</a>
                                                </dd>
                                            </dl>
                                        </li>
                                        <li style="display: none">
                                            <dl class="categories clearfix">
                                                <dd class="categoriesTxt">
                                                    <a data="guangzhou" href="javascript:;">广州</a>
                                                    <a data="guilin" href="javascript:;">桂林</a>
                                                    <a data="guiyang" href="javascript:;">贵阳</a>
                                                    <a data="gaoxiong" href="javascript:;">高雄</a>
                                                    <a data="ganzi" href="javascript:;">甘孜</a>
                                                    <a data="hangzhou" href="javascript:;">杭州</a>
                                                    <a data="haerbin" href="javascript:;">哈尔滨</a>
                                                    <a data="hefei" href="javascript:;">合肥</a>
                                                    <a data="haikou" href="javascript:;">海口</a>
                                                    <a data="huhehaote" href="javascript:;">呼和浩特</a>
                                                    <a data="handan" href="javascript:;">邯郸</a>
                                                    <a data="huludao" href="javascript:;">葫芦岛</a>
                                                    <a data="hulunbeier" href="javascript:;">呼伦贝尔</a>
                                                    <a data="huangshan" href="javascript:;">黄山</a>
                                                    <a data="hualian" href="javascript:;">花莲</a>
                                                    <a data="jiaxing" href="javascript:;">嘉兴</a>
                                                    <a data="jinan" href="javascript:;">济南</a>
                                                    <a data="jinzhong" href="javascript:;">晋中</a>
                                                    <a data="jinhua" href="javascript:;">金华</a>
                                                    <a data="jiujiang" href="javascript:;">九江</a>
                                                    <a data="jiaozuo" href="javascript:;">焦作</a>
                                                    <a data="jiuquan" href="javascript:;">酒泉</a>
                                                    <a data="jinzhou" href="javascript:;">锦州</a>
                                                    <a data="jilinshi" href="javascript:;">吉林</a>
                                                    <a data="jian" href="javascript:;">吉安</a>
                                                    <a data="jiamusi" href="javascript:;">佳木斯</a>
                                                </dd>
                                            </dl>
                                        </li>
                                        <li style="display: none">
                                            <dl class="categories clearfix">
                                                <dd class="categoriesTxt">
                                                    <a data="kunming" href="javascript:;">昆明</a>
                                                    <a data="kaifeng" href="javascript:;">开封</a>
                                                    <a data="lijiang" href="javascript:;">丽江</a>
                                                    <a data="lasa" href="javascript:;">拉萨</a>
                                                    <a data="lanzhou" href="javascript:;">兰州</a>
                                                    <a data="luoyang" href="javascript:;">洛阳</a>
                                                    <a data="langfang" href="javascript:;">廊坊</a>
                                                    <a data="leshan" href="javascript:;">乐山</a>
                                                    <a data="lianyungang" href="javascript:;">连云港</a>
                                                    <a data="liangshan" href="javascript:;">凉山</a>
                                                    <a data="linyi" href="javascript:;">临沂</a>
                                                    <a data="mianyang" href="javascript:;">绵阳</a>
                                                    <a data="mudanjiang" href="javascript:;">牡丹江</a>
                                                    <a data="nanjing" href="javascript:;">南京</a>
                                                    <a data="ningbo" href="javascript:;">宁波</a>
                                                    <a data="nanchang" href="javascript:;">南昌</a>
                                                    <a data="nanning" href="javascript:;">南宁</a>
                                                    <a data="nanchong" href="javascript:;">南充</a>
                                                    <a data="panjin" href="javascript:;">盘锦</a>
                                                    <a data="pingdong" href="javascript:;">屏东</a>
                                                    <a data="qingdao" href="javascript:;">青岛</a>
                                                    <a data="qinhuangdao" href="javascript:;">秦皇岛</a>
                                                    <a data="qionghai" href="javascript:;">琼海</a>
                                                    <a data="qingyuan" href="javascript:;">清远</a>
                                                    <a data="qiandongnan" href="javascript:;">黔东南</a>
                                                    <a data="quanzhou" href="javascript:;">泉州</a>
                                                    <a data="rizhao" href="javascript:;">日照</a>
                                                </dd>
                                            </dl>
                                        </li>
                                        <li style="display: none">
                                            <dl class="categories clearfix">
                                                <dd class="categoriesTxt">
                                                    <a data="shanghai" href="javascript:;">上海</a>
                                                    <a data="sanya" href="javascript:;">三亚</a>
                                                    <a data="shenzhen" href="javascript:;">深圳</a>
                                                    <a data="suzhou" href="javascript:;">苏州</a>
                                                    <a data="shenyang" href="javascript:;">沈阳</a>
                                                    <a data="shijiazhuang" href="javascript:;">石家庄</a>
                                                    <a data="shaoguan" href="javascript:;">韶关</a>
                                                    <a data="shangrao" href="javascript:;">上饶</a>
                                                    <a data="taibei" href="javascript:;">台北</a>
                                                    <a data="taizhong" href="javascript:;">台中</a>
                                                    <a data="tianjin" href="javascript:;">天津</a>
                                                    <a data="taiyuan" href="javascript:;">太原</a>
                                                    <a data="taian" href="javascript:;">泰安</a>
                                                    <a data="tangshan" href="javascript:;">唐山</a>
                                                    <a data="wuhan" href="javascript:;">武汉</a>
                                                    <a data="weihai" href="javascript:;">威海</a>
                                                    <a data="wuxi" href="javascript:;">无锡</a>
                                                    <a data="wulumuqi" href="javascript:;">乌鲁木齐</a>
                                                    <a data="weifang" href="javascript:;">潍坊</a>
                                                    <a data="wenzhou" href="javascript:;">温州</a>
                                                    <a data="wuhu" href="javascript:;">芜湖</a>
                                                    <a data="weinan" href="javascript:;">渭南</a>
                                                    <a data="wenchang" href="javascript:;">文昌</a>
                                                </dd>
                                            </dl>
                                        </li>
                                        <li style="display: none">
                                            <dl class="categories clearfix">
                                                <dd class="categoriesTxt">
                                                    <a data="xiamen" href="javascript:;">厦门</a>
                                                    <a data="xian" href="javascript:;">西安</a>
                                                    <a data="xiangxi" href="javascript:;">湘西</a>
                                                    <a data="xuzhou" href="javascript:;">徐州</a>
                                                    <a data="xining" href="javascript:;">西宁</a>
                                                    <a data="hongkong" href="javascript:;">香港</a>
                                                    <a data="xianyang" href="javascript:;">咸阳</a>
                                                    <a data="xinxiang" href="javascript:;">新乡</a>
                                                    <a data="xishuangbanna" href="javascript:;">西双版纳</a>
                                                    <a data="yangzhou" href="javascript:;">扬州</a>
                                                    <a data="yantai" href="javascript:;">烟台</a>
                                                    <a data="yichang" href="javascript:;">宜昌</a>
                                                    <a data="yangjiang" href="javascript:;">阳江</a>
                                                    <a data="yaan" href="javascript:;">雅安</a>
                                                    <a data="yanbianchaoxianzuzizhizhou" href="javascript:;">延边</a>
                                                    <a data="yingkou" href="javascript:;">营口</a>
                                                    <a data="yuxi" href="javascript:;">玉溪</a>
                                                    <a data="zhuhai" href="javascript:;">珠海</a>
                                                    <a data="zhengzhou" href="javascript:;">郑州</a>
                                                    <a data="zhongshan" href="javascript:;">中山</a>
                                                    <a data="zhangzhou" href="javascript:;">漳州</a>
                                                    <a data="zhangjiajie" href="javascript:;">张家界</a>
                                                    <a data="zhoushan" href="javascript:;">舟山</a>
                                                    <a data="zunyi" href="javascript:;">遵义</a>
                                                    <a data="zhaoqing" href="javascript:;">肇庆</a>
                                                    <a data="zhangjiakou" href="javascript:;">张家口</a>
                                                </dd>
                                            </dl>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <script type="text/javascript">
                                function ShowHotCities() {
                                    $("#HotCities").show();
                                    $('#HotLocations').hide();
                                    $('#CitiesSuggestion').hide();
                                    $('#LocationsSuggestion').hide();

                                    $('#div_District').hide();
                                    $('#div_Area').hide();
                                    $('#div_Subway').hide();
                                    $('#div_Scenery').hide();
                                    $('#div_College').hide();
                                    $('#div_Hospital').hide();
                                    $('#div_Exhibition').hide();
                                    $('#div_RailwayAndAirport').hide();
                                    $("#dd_District").find('i').remove();
                                    $("#dd_District").find('a').removeClass('cur');
                                    $("#dd_Area").find('i').remove();
                                    $("#dd_Area").find('a').removeClass('cur');
                                    $("#dd_Subway").find('i').remove();
                                    $("#dd_Subway").find('a').removeClass('cur');
                                    $("#dd_Scenery").find('i').remove();
                                    $("#dd_Scenery").find('a').removeClass('cur');
                                    $("#dd_College").find('i').remove();
                                    $("#dd_College").find('a').removeClass('cur');
                                    $("#dd_Hospital").find('i').remove();
                                    $("#dd_Hospital").find('a').removeClass('cur');
                                    $("#dd_Exhibition").find('i').remove();
                                    $("#dd_Exhibition").find('a').removeClass('cur');
                                    $("#dd_RailwayAndAirport").find('i').remove();
                                    $("#dd_RailwayAndAirport").find('a').removeClass('cur');
                                    $("#position_hidden").val("0");

                                    var cityName = $("#txtCity").val();
                                    $(".hotcitylist a").each(function (i) {
                                        if ($(this).html() == cityName) {
                                            $(this).addClass("current");
                                        } else {
                                            $(this).removeClass("current");
                                        }
                                    })
                                };
                                $("#txtCity").focus(function () {
                                    ShowHotCities();
                                });
                                $('#CityIcon').click(function () {
                                    ShowHotCities();
                                });
                                $("#txtCity").blur(function () {
                                    $("#HotCities").hide();
                                });
                                $('#HotCities').mousedown(function (ev) {
                                    ev = ev || window.event;
                                    var target = ev.target || ev.srcElement;

                                    if (target.nodeName == 'A' && $(target).attr("data")) {
                                        var name = target.innerHTML;
                                        var path = $(target).attr("data");

                                        //2015-01-19 sq
                                        if ($("#txtCity").val() != name) {
                                            if ($("#txtLocation").val() != "请输入地址、商圈、地标、店铺名等") {
                                                $("#txtLocation").val("请输入地址、商圈、地标、店铺名等");
                                            }
                                        }

                                        $("#txtCity").val(name);
                                        $("#enter_location_error_message").hide();
                                        $("#citybox").hide();
                                        $(".search_guests").show();
                                        cityHashMap.add(name, path);
                                        $("#path").val(path);
                                        if (typeof (o) != "undefined") { o.params["ct"].value = "1"; }
                                        if ($("#ct").length > 0) { $("#ct").val("1"); $("#kt").val("1"); }
                                        $("#txtCity").blur();
                                        document.getElementById('HotCities').onclick = function () {
                                            return false;
                                        }
                                    }
                                });

                                $(document.body).click(function (ev) {
                                    ev = ev || window.event;
                                    var target = ev.target || ev.srcElement;

                                    if (!/^(txtCity)|(HotCities)|(citylist)|(citylisTab\d)|(citytab\d)|(YtxcityboxTit)$/.test(target.id)) {
                                        $(".Ytxcitybox").hide();
                                    };
                                    //$(".TheTotal").show();


                                    if ($("#position_hidden").val() == "1") {
                                        $("#position_hidden").val("2");
                                    }
                                    else if ($("#position_hidden").val() == "11") {
                                        $("#position_hidden").val("2");
                                    }
                                    else if ($("#position_hidden").val() == "2") {
                                        $('#div_District').hide();
                                        $('#div_Area').hide();
                                        $('#div_Subway').hide();
                                        $('#div_Scenery').hide();
                                        $('#div_College').hide();
                                        $('#div_Hospital').hide();
                                        $('#div_Exhibition').hide();
                                        $('#div_RailwayAndAirport').hide();

                                        $("#dd_District").find('i').remove();
                                        $("#dd_District").find('a').removeClass('cur');
                                        $("#dd_Area").find('i').remove();
                                        $("#dd_Area").find('a').removeClass('cur');
                                        $("#dd_Subway").find('i').remove();
                                        $("#dd_Subway").find('a').removeClass('cur');
                                        $("#dd_Scenery").find('i').remove();
                                        $("#dd_Scenery").find('a').removeClass('cur');
                                        $("#dd_College").find('i').remove();
                                        $("#dd_College").find('a').removeClass('cur');
                                        $("#dd_Hospital").find('i').remove();
                                        $("#dd_Hospital").find('a').removeClass('cur');
                                        $("#dd_Exhibition").find('i').remove();
                                        $("#dd_Exhibition").find('a').removeClass('cur');
                                        $("#dd_RailwayAndAirport").find('i').remove();
                                        $("#dd_RailwayAndAirport").find('a').removeClass('cur');

                                        $("#position_hidden").val("0");
                                    }


                                });
                            </script>
                            <script type="text/javascript" src="http://js.youtx.com/scripts/Root.TabView.js"></script>


                            <!--热门城市HotCity2014.htm end-->

                            <input type="hidden" id="path" value="" />
                            <input type="hidden" id="kt" value="2" />
                            <input type="hidden" id="ct" value="0" />


                            <div id="CitiesSuggestion" style="z-index: 999; display: none">
                                <!--找不到 begin-->
                                <div class="Ytxcitybox Ytxcitybox_text_pd" id="divNoCity" style="display: none;">
                                    对不起，找不到该城市
                                </div>
                                <!--找不到 end-->
                            </div>

                            <!--2015-06-28begin-->
                            <!--敏感词信息提示-->

                            <!--2015-06-28end-->

                        </dd>
                        <dd class="floatl addressBox" id="youtxlist_B02_02" style="margin-left: 5px;">
                            <input name="txtLocation" type="text" id="txtLocation" class="inputAdd" value="请输入地址、商圈、地标、店铺名等" />
                            <!--*20140815 添加 begin*-->
                            <div id="LocationsSuggestion" style="z-index: 999; display: none;">
                            </div>
                            <!--*20140815 添加 end*-->




                        </dd>





                        <dd class="floatl checkIn">
                            <span id="youtxlist_B02_03">
                                <input type="hidden" id="checkin" name="checkin" value="yy-mm-dd" />
                                <input id="startDate" name="startDate" type="text" class="selDateInp time_rent" value="2017-05-12" tabindex="2" onchange="if($('#startDate').val()!=''){$('#checkin').val($('#startDate').val());}" />

                            </span>
                            <span class="timeText">入住</span>

                            <!--2016-05-12begin-->
                            <div id="checkintip" class="MessageBox" style="position: absolute; left: 166px; top: 0px; width: 180px; height: 26px; z-index: 5; line-height: 26px; background: #fffce1; border: solid 1px #ffbf6a; border-radius: 4px; text-align: center; display: none;">
                                <span>选择入住时间，看当天准确价格</span>
                                <div class="triangle-character" style="position: absolute; top: 7px; left: -6px; width: 7px; height: 11px; background: url(http://js.youtx.com/images/main2014/TipStra.png) no-repeat 0px 0px; overflow: hidden;"></div>
                            </div>
                            <!--2016-05-12end-->




                            <div id="divpickerin" style="display: none; position: absolute; z-index: 11">
                                <div type="text" id="datepickerin">
                                </div>
                            </div>


                        </dd>






                        <dd class="floatl checkOut">
                            <span id="youtxlist_B02_04">
                                <input type="hidden" id="checkout" name="checkout" value="yy-mm-dd" />
                                <input id="endDate" name="endDate" class="selDateInp time_rent" type="text" tabindex="3" value="2017-05-13" onchange="if($('#endDate').val()!=''){$('#checkout').val($('#endDate').val());}" />

                            </span>
                            <span class="timeText">退房</span>

                            <script type="text/javascript">
                                var localDate = new Date();
                                var serverYear = 2017;
                                var serverMonth = 05;
                                var serverDay = 12;

                                var localYear = localDate.getFullYear();
                                var localMonth = localDate.getMonth() + 1;
                                var localDay = localDate.getDate();

                                var useLocal = false;
                                if (localYear > serverYear || localMonth > serverMonth || localDay > serverDay) {
                                    useLocal = true;
                                }

                                var minDate = "" + localYear + "-" + localMonth + "-" + localDay;

                                var maxDate = "2017-11-08";
                                var houseId;

                            </script>
                            <script type="text/javascript" src="http://js.youtx.com/scripts/list2016_calendar_foot.js?v=201704211100"></script>
                            <script type="text/javascript" src="http://js.youtx.com/scripts/js_calendar2016.js?v=201704211100"></script>

                            <!--2016-05-12begin-->
                            <div id="checkouttip" class="MessageBox" style="position: absolute; left: 166px; top: 0px; width: 220px; height: 26px; z-index: 5; line-height: 26px; background: #fffce1; border: solid 1px #ffbf6a; border-radius: 4px; text-align: center; display: none;">
                                <span>如您需要入住30天以上，请分段搜索</span>
                                <div class="triangle-character" style="position: absolute; top: 7px; left: -6px; width: 7px; height: 11px; background: url(http://js.youtx.com/images/main2014/TipStra.png) no-repeat 0px 0px; overflow: hidden;"></div>
                            </div>
                            <!--2016-05-12end-->

                            <div id="divpickerout" style="display: none; position: absolute; z-index: 11">
                                <div type="text" id="datepickerout">
                                </div>
                            </div>



                        </dd>






                        <dd class="floatl staffNum" id="youtxlist_B02_05">
                            <input class="menuInput" type="text" id="input_Guest" value="人数" readonly />
                            <span class="TxtHintNum" id="number_of_guests" style="padding-left: 5px;"></span>
                            <ul class="TheTotal" style="display: none;">
                                <li>1</li>
                                <li>2</li>
                                <li>3</li>
                                <li>4</li>
                                <li>5</li>
                                <li>6</li>
                                <li>7</li>
                                <li>8</li>
                                <li>9</li>
                                <li>10及以上</li>
                            </ul>
                        </dd>
                    </dl>
                </div>

            </div>
            <!-- 快搜区end -->





            <!-- 品牌推荐 begin -->

            <!-- 品牌推荐 end -->


            <!-- ------------------------------------------------------------------------------------------------- -->






            <!--houselist_all begin-->
            <!-- 短租、长租房源列表 begin -->
            <div class="clearfix mt20" style="width: 1180px; margin: 20px auto 0;">
                <div class="houseWrap w850">





                    <div class="title">


                        <a href="http://www.youtx.com/hangzhou/" class="tit_hw dzBtn cur">短租房源</a>











                        <div class="filterBox clearfix">
                        </div>
                        <!-- 排序 end -->








                        <!--20140731 修改 begin-->
                        <div id="results_filters" class="filterCollect clearfix" style="display: none;">
                            <span class="myFilter">过滤：</span>
                            <ul class="applied_filters">
                                <li id="FlagRoomType" style="display: none;"><span class="myCollect">出租类型</span><a
                                    class="close_f" href="javascript:Youtx.Page.closeSearchFlag('FlagRoomType');"><span class="filter_x"></span></a></li>
                                <li id="FlagDistrict" style="display: none;"><span class="myCollect">区域</span><a
                                    class="close_f" href="javascript:Youtx.Page.closeSearchFlag('FlagDistrict');"><span
                                        class="filter_x"></span></a></li>
                                <li id="FlagHouseCondition" style="display: none;"><span class="myCollect">便利设施</span> <a class="close_f" href="javascript:Youtx.Page.closeSearchFlag('FlagHouseCondition');">
                                    <span class="filter_x"></span></a></li>
                                <li id="FlagHouseType" style="display: none;"><span class="myCollect">房屋类型</span><a
                                    class="close_f" href="javascript:Youtx.Page.closeSearchFlag('FlagHouseType');"><span
                                        class="filter_x"></span></a></li>
                                <li id="FlagPrice" style="display: none;"><span class="myCollect">价格</span><a
                                    class="close_f" href="javascript:Youtx.Page.closeSearchFlag('FlagPrice');"><span
                                        class="filter_x"></span></a></li>
                                <li id="FlagInvoice" style="display: none;"><span class="myCollect">发票</span><a
                                    class="close_f" href="javascript:Youtx.Page.closeSearchFlag('FlagInvoice');"><span
                                        class="filter_x"></span></a></li>
                                <li id="FlagDistance" style="display: none;"><span class="myCollect">距离</span><a
                                    class="close_f" href="javascript:Youtx.Page.closeSearchFlag('FlagDistance');"><span
                                        class="filter_x"></span></a></li>
                                <li id="Flagpuserid" style="display: none;"><span class="myCollect">发布的房间</span> <a class="close_f" href="javascript:Youtx.Page.closeSearchFlag('Flagpuserid');">
                                    <span class="filter_x"></span></a></li>
                                <li id="Flagfuserid" style="display: none;"><span class="myCollect">我的收藏</span><a
                                    class="close_f" href="javascript:Youtx.Page.closeSearchFlag('Flagfuserid');"><span
                                        class="filter_x"></span></a></li>
                                <li id="Flagpid" style="display: none;"><span class="myCollect"></span><a class="close_f" href="javascript:Youtx.Page.closeSearchFlag('Flagpid');"><span
                                    class="filter_x"></span></a></li>
                                <li id="FlagSpecialPrice" style="display: none;"><span class="myCollect">今晚特价</span><a
                                    class="close_f" href="javascript:Youtx.Page.closeSearchFlag('FlagSpecialPrice');"><span
                                        class="filter_x"></span></a></li>
                            </ul>

                        </div>
                        <!--20140731 修改 end-->
                        <!--排序end-->


                        <!--houselist begin-->
                        <div id="HasData_Panel" style="display: block;">


                            <div id="results" class="duanzu houseList">
                                <ul id="house_info">
                                   
                                  <%--  <li  class="clearfix">
                                        <div class="house-img">
                                            <a id="youtxlist_B05_1" class="b_pic" href="house_1.aspx" target="_blank">
                                                <img src="../images/house/1.jpg" width="300" height="200" /><span class="pic-num">1</span></a>
                                            <a id="youtxlist_B05_5"  target="_blank" class="pic-head">
                                        </div>
                                        <div class="houseInfo clearfix">
                                            <div class="house-tit clearfix">
                                                <h3>
                                                    <a id="youtxlist_B05_2" target="_blank" title="西溪湿地山顶派对别墅轰趴">西溪湿地山顶派对别墅轰趴</a></h3>
                                                <div class="house-price mt9">
                                                    <div class="tag-sale"><a id="youtxlist_B05_3"  target="_blank" class="btn-sale">优质房源推荐<i></i></a></div>
                                                    <span id="pricepre273896"><span class="ListDollar">￥</span><span class="housePrice" id="houseprice273896">100</span></span><div class="mix12_5">
                                                        
                                                    </div>
                                                    
                                                </div>
                                            </div>
                                            <div class="houseInfo-left mt2">
                                                <p class="clearfix mt5" style="max-width: 380px; overflow: hidden;">杭州余杭区闲林金成.白云深处</p>
                                                <p class="mt5">别墅-整套出租-4居-宜住35人-共1套<span class="vslipt">|</span><span class="ff9913">6</span>人评价-近期预订<span class="ff9913">19</span>晚</p>
                                                <p class="distance mt5">&nbsp;</p>
                                            </div>
                                            
                                            <div class="clear"></div>
                                            <div class="agentInfo mt16" style="margin-top: 38px;">
                                                <p><a id="youtxlist_B05_6"  target="_blank">罗成</a><em class="tel">400-8130-400 </em></p>
                                                <p class="mt10 btm_p_ clearfix"><a id="youtxlist_B05_7"  target="_blank"><em class="store1 w_18"></em><em class="pym_txt">品牌店铺</em></a><a href="#" onclick="return false;" target="_blank"><em class="owner1 w_18"></em><em class="pym_txt">明星房东</em></a></p>
                                            </div>
                                        </div>
                                    </li>--%>
                          



                                </ul>


                            </div>

                        </div>

                        <div id="NoData_Panel" style="display: none;">

                            <div id="NoResults_list">
                                <div class="detailsList_box clearfix">
                                    <div class="FL empty_house">
                                    </div>
                                    <div class="FL empty_txt">
                                        <p class="F20 MB10" style="font-family: 微软雅黑">
                                            对不起！没有符合条件的房间
                                        </p>
                                        <p>
                                            <strong>游天下建议您：</strong>适当减少一些搜索条件或换一个临近区域搜索。
                                        </p>
                                        <p>
                                            我要对搜索<a href="http://www.youtx.com/feedback/" class="BlueFont" target="_blank">提出意见</a>
                                        </p>
                                    </div>
                                </div>
                            </div>

                        </div>




                        <!-- 页码 begin-->

                        <!-- 页码 end-->


                        <div id="clearfix" class="pagebar clearfix">
                            <div class="pagebar-left">
                                <p id="results_count_footer" class="PB5"><a id="youtxlist_B06_01" href="/hangzhou/" class="BlueFont">杭州短租房</a>&nbsp;-&nbsp;找到相关房源&nbsp;<span class="c2b98dd">730</span>&nbsp;个，每页&nbsp;<span class="c2b98dd">30</span>&nbsp;个结果</p>
                                <p><span class="c2b98dd">没有找到满意的房子？</span> <a href="/profile/BookingTeam" class="btn_publish" target="_blank">我要发布求租</a></p>
                            </div>
                            <div id="div_Pager">
                                <div class="pagebar-right">
                                    <span class="prev1">&lt;</span><span class="cur">1</span><a href="/hangzhou/page2/">2</a><a href="/hangzhou/page3/">3</a><a href="/hangzhou/page4/">4</a><a href="/hangzhou/page5/">5</a><a href="/hangzhou/page6/">6</a><a href="/hangzhou/page7/">7</a><a href="/hangzhou/page8/">8</a><span class="points">...</span><a href="/hangzhou/page11/">11</a><a href="/hangzhou/page2/" class="next">&gt;</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <!--橱窗推荐begin-->
        <div id="youtxlist_B07_01" class="bottom">
            <div class="bottomInfo">
                <div class="title clearfix"><a href="/user/housespread/1/" target="_blank" class="floatr more">我也要出现在这里></a><div class="floatl title-tab">
                    <div class="s2 cur">橱窗推荐</div>
                </div>
                </div>
                <div class="scroll_wrap">
                    <!--<a class="prev" href="javascript:;"></a><a class="next" href="javascript:;"></a>-->
                    <div class="scroll_list">
                        <ul class="clearfix" style="width: 2400px;">
                            <li><a class="lt_cutoff" href="javascript:void(0)"><em class="ltc_t">评价返</em><span class="ltc_cny">￥</span><em class="ltc_my">25</em></a><a href="/room/302707/" target="_blank"><img src="http://imgn.youtx.com/viewimage/duanzu/2017_05/07/17/68/40/houseinfo/404895564300/280x187c.jpg" width="280" height="187" /></a><h3>桐庐江南古村落整租独立别墅，可烧饭</h3>
                                <p class="clearfix"><span class="floatr"><em class="ff9913">￥1480</em>/晚</span>杭州市桐庐县</p>
                            </li>
                            <li><a class="lt_cutoff" href="javascript:void(0)"><em class="ltc_t">评价返</em><span class="ltc_cny">￥</span><em class="ltc_my">28</em></a><a href="/room/260785/" target="_blank"><img src="http://img.youtx.com/viewimage/duanzu/2015_05/13/16/90/90/houseinfo/400667983300/280x187c.jpg" width="280" height="187" /></a><h3>杭州大学城轰趴别墅（龙湖生活馆）</h3>
                                <p class="clearfix"><span class="floatr"><em class="ff9913">￥1980</em>/晚</span>杭州市江干区</p>
                            </li>
                            <li><a class="lt_cutoff" href="javascript:void(0)"><em class="ltc_t">热订</em></a><a href="/room/304099/" target="_blank"><img src="http://imgn.youtx.com/viewimage/duanzu/2017_05/06/11/10/5/houseinfo/404195414400/280x187c.jpg" width="280" height="187" /></a><h3>客运中心地铁口购物中心公寓</h3>
                                <p class="clearfix"><span class="floatr"><em class="ff9913">￥218</em>/晚</span>杭州市江干区</p>
                            </li>
                            <li><a class="lt_cutoff" href="javascript:void(0)"><em class="ltc_t">热订</em></a><a href="/room/304019/" target="_blank"><img src="http://imgn.youtx.com/viewimage/duanzu/2017_05/05/13/18/55/houseinfo/406087660900/280x187c.jpg" width="280" height="187" /></a><h3>地铁口公寓,客运中心,机场大巴,乌镇</h3>
                                <p class="clearfix"><span class="floatr"><em class="ff9913">￥218</em>/晚</span>杭州市江干区</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--橱窗推荐end-->



        <!----------------------------------------------------------------------------------------------------->





        <!--隐藏域-->
        <form id="vform" target="_blank" action="" method="get">
            <input type="hidden" name="map" value="1">
        </form>
        <input name="favourites" type="hidden" id="favourites" />


        <script type="text/javascript" src="http://js.youtx.com/scripts/??jquery-ui-1.8.14.custom.min.js,dateFormat.js?v=201704211100"></script>

        <script type="text/javascript" src="http://js.youtx.com/scripts/jquery.ui.datepicker-zh.min.js?v=201704211100"></script>

        <script type="text/javascript" src="http://js.youtx.com/scripts/Youtx.UtilityForList2014.js?v=201704211100"></script>
        <script type="text/javascript" src="http://js.youtx.com/scripts/Youtx.SearchForMain2014.js?v=201704211100"></script>
        <script type="text/javascript" src="http://js.youtx.com/scripts/Youtx.PageA2014.js?v=201704211100"></script>
        <script type="text/javascript" src="http://js.youtx.com/scripts/list2016_ShortRentListJs2014.js?v=201704211100"></script>





        <script type="text/javascript">
            var now = "19:39:07";
            var specialPriceTime = "17:00:00";
            var islogin2 = "0";
            var userid = "";
            var isDistance = "False";
            var distanceName = "";
            var totalcount = "730";
            var isSpecialPrice = "False";
            var latlngs = new Array();
            var focusid = '';
            var latestValue = "";
            var markers = [];
            var askUrl = "http://ask.youtx.com";
            var cityPathS = "hangzhou";
            var clatlng = { lat: "30.274089", lng: "120.155069" };
            var adCity = "杭州市";
            var USDCurrency = "0.1454";
            var keyword = "";

            $("#submit_location").click(function () {

                //                    var begin = $("#checkin").val();
                //                    var end = $("#checkout").val();

                //                    var checkin1 = AddDate(begin, 0);
                //                    var checkout1 = AddDate(end, 0);
                //                    var checkDays = Number(DiffLong(checkin1, checkout1));
                //                    if (checkDays > 30) {
                //                        $("#checkouttip").show();
                //                        return;
                //                    }
                //                    else {
                //                        $("#checkouttip").hide();

                //                        goUrl();

                //                    }

                if (($('#checkin').val() != "yy-mm-dd") && ($('#checkout').val() != "yy-mm-dd")) {
                    var begin = $("#checkin").val();
                    var end = $("#checkout").val();
                    var checkin1 = AddDate(begin, 0);
                    var checkout1 = AddDate(end, 0);
                    var checkDays = Number(DiffLong(checkin1, checkout1));
                    if (checkDays > 30) {
                        $("#checkouttip").show();
                        return;
                    }
                    else {
                        $("#checkouttip").hide();
                    }
                }

                goUrl();




            });
          
            function goUrl() {
                o.getParams();
                //            o.params['se'].value = "2";
                o.params['page'].value = 1;
                $.cookie("list_constrast", null, { path: '/', domain: 'youtx.com' });
                window.location.href = o.join();
            }
            function initData() {
                $("#path").val("hangzhou");
                o.params['city'].value = "杭州";
                Youtx.Page.init(o);
                $.cookie("duanzukeyword", "searchstr:" + o.params['kw'].value + ";checkin:" + o.params['in'].value + ";checkout:" + o.params['out'].value + ";sort:" + o.params['sort'].value + ";numberofguests:" + o.params['guest'].value + ";", { expires: 0.1, path: '/', domain: 'youtx.com' });
                if (o.params["kt"].value == "" && o.params["kw"].value != "") { o.params["kt"].value = 0; }
                if (o.params["ct"].value == "" && o.params["city"].value != "") { o.params["ct"].value = 0; }
                if (window.location.hostname.toLowerCase() == "www.youtx.com" || window.location.hostname.toLowerCase() == "youtx.com") { userAttention("1", o.statistics()); }

                o.params['se'].value = "";
                o.params['ct'].value = "";
                o.params['kt'].value = "";
            }

            $("#txtLocation").focus(function () {
                $("#divcheckkeyword").show();
                $("#divcheckkeyword").hide();
            });

        </script>
        <%--我的JavaScript--%>
        <script type="text/javascript">
            $(document).ready(function () {
               
                $.ajax({

                    url: 'Hangzhou.aspx?action=load',
                    type: 'GET', //GET
                    //async: true,    //或false,是否异步

                    timeout: 5000,    //超时时间
                    dataType: 'text',    //返回的数据格式：json/xml/html/script/jsonp/text

                    success: function (data) {
                        var dataObj = eval("(" + data + ")");
                        for (var i = 0; i < dataObj.length; i++) {
                            var mun = i+1;
                            $('#house_info').append("<li  class='clearfix'><div class='house-img'><a id='youtxlist_B05_1' class='b_pic' href='house_" + mun + ".aspx?Hno=" + dataObj[i].Hno+ "' target='_blank'><img src=" + dataObj[i].picture + " width='300' height='200' /><span class='pic-num'>" + mun + "</span></a></div>           <div class='houseInfo clearfix'>   <div class='house-tit clearfix'><h3><a id='youtxlist_B05_2' target='_blank'> " + dataObj[i].title + "</a></h3>  <div class='house-price mt9'> <div class='tag-sale'><a id='youtxlist_B05_3'  target='_blank' class='btn-sale'>优质房源推荐<i></i></a></div>   <span id='pricepre273896'><span class='ListDollar'>￥</span><span class='housePrice' id='houseprice273896'>" + dataObj[i].Price + "</span></span>  <div class='mix12_5'></div> </div> </div> <div class='houseInfo-left mt2'><p class='clearfix mt5' style='max-width: 380px; overflow: hidden;'>" + dataObj[i].Location + "</p><p class='mt5'>房子出租<span class='ff9913'>" + dataObj[i].count + "</span>居--宜住<span class='ff9913'>" + dataObj[i].pcount + "</span>人--共<span class='ff9913'>" + dataObj[i].total + "</span>套<span class='vslipt'>|</span></p><p class='distance mt5'>&nbsp;</p></div> <div class='clear'></div> <div class='agentInfo mt16' style='margin-top: 38px;'><p><a id='youtxlist_B05_6'  target='_blank'>" + dataObj[i].Lname + "</a><em class='tel'>" + dataObj[i].Lno + " </em></p><p class='mt10 btm_p_ clearfix'><a id='youtxlist_B05_7'  target='_blank'><em class='store1 w_18'></em><em class='pym_txt'>品牌店铺</em></a><a href='#' onclick='return false;' target='_blank'><em class='owner1 w_18'></em><em class='pym_txt'>明星房东</em></a></p></div></div>");
                           



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

            })
           


        </script>

        <script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=166bada3776604610425c14def5f1e48"></script>
        <script type="text/javascript">
            $(function () { $.getScript('http://js.youtx.com/scripts/MapGao.js?v=201704211100', function () { showmap(); }); });
        </script>


        <!--2015-01-20 stats code-->
        <script type="text/javascript" src="http://click.fang.com/stats/click2011.js"></script>
        <script type="text/javascript">
            Clickstat.eventAdd(window, 'load', function (e) { Clickstat.batchEvent('youtxlist_', ''); });
        </script>


        <script type="text/javascript" src="/Ajax/HouseList2016GetHousePriceJS.aspx?houseid=273896,288550,282309,300674,293943,297090,302707,297092,18925,166843,177218,15052,98575,302550,274148,97158,260117,16266,297247,284970,304259,57685,169792,281881,63388,64293,300832,303972,282396,290120,290115,290119,278853,18936,303074&checkin=20170512&checkout=20170513&page=1"></script>
        <script type="text/javascript">$(function () { $("#pricepre273896").hover(function () { $("#pricebox273896").show(); }, function () { $("#pricebox273896").hide(); }); $("#pricepre288550").hover(function () { $("#pricebox288550").show(); }, function () { $("#pricebox288550").hide(); }); $("#pricepre282309").hover(function () { $("#pricebox282309").show(); }, function () { $("#pricebox282309").hide(); }); $("#pricepre300674").hover(function () { $("#pricebox300674").show(); }, function () { $("#pricebox300674").hide(); }); $("#pricepre293943").hover(function () { $("#pricebox293943").show(); }, function () { $("#pricebox293943").hide(); }); $("#pricepre297090").hover(function () { $("#pricebox297090").show(); }, function () { $("#pricebox297090").hide(); }); $("#pricepre302707").hover(function () { $("#pricebox302707").show(); }, function () { $("#pricebox302707").hide(); }); $("#pricepre297092").hover(function () { $("#pricebox297092").show(); }, function () { $("#pricebox297092").hide(); }); $("#pricepre18925").hover(function () { $("#pricebox18925").show(); }, function () { $("#pricebox18925").hide(); }); $("#pricepre166843").hover(function () { $("#pricebox166843").show(); }, function () { $("#pricebox166843").hide(); }); $("#pricepre177218").hover(function () { $("#pricebox177218").show(); }, function () { $("#pricebox177218").hide(); }); $("#pricepre15052").hover(function () { $("#pricebox15052").show(); }, function () { $("#pricebox15052").hide(); }); $("#pricepre98575").hover(function () { $("#pricebox98575").show(); }, function () { $("#pricebox98575").hide(); }); $("#pricepre302550").hover(function () { $("#pricebox302550").show(); }, function () { $("#pricebox302550").hide(); }); $("#pricepre274148").hover(function () { $("#pricebox274148").show(); }, function () { $("#pricebox274148").hide(); }); $("#pricepre97158").hover(function () { $("#pricebox97158").show(); }, function () { $("#pricebox97158").hide(); }); $("#pricepre260117").hover(function () { $("#pricebox260117").show(); }, function () { $("#pricebox260117").hide(); }); $("#pricepre16266").hover(function () { $("#pricebox16266").show(); }, function () { $("#pricebox16266").hide(); }); $("#pricepre297247").hover(function () { $("#pricebox297247").show(); }, function () { $("#pricebox297247").hide(); }); $("#pricepre284970").hover(function () { $("#pricebox284970").show(); }, function () { $("#pricebox284970").hide(); }); $("#pricepre304259").hover(function () { $("#pricebox304259").show(); }, function () { $("#pricebox304259").hide(); }); $("#pricepre57685").hover(function () { $("#pricebox57685").show(); }, function () { $("#pricebox57685").hide(); }); $("#pricepre169792").hover(function () { $("#pricebox169792").show(); }, function () { $("#pricebox169792").hide(); }); $("#pricepre281881").hover(function () { $("#pricebox281881").show(); }, function () { $("#pricebox281881").hide(); }); $("#pricepre63388").hover(function () { $("#pricebox63388").show(); }, function () { $("#pricebox63388").hide(); }); $("#pricepre64293").hover(function () { $("#pricebox64293").show(); }, function () { $("#pricebox64293").hide(); }); $("#pricepre300832").hover(function () { $("#pricebox300832").show(); }, function () { $("#pricebox300832").hide(); }); $("#pricepre303972").hover(function () { $("#pricebox303972").show(); }, function () { $("#pricebox303972").hide(); }); $("#pricepre282396").hover(function () { $("#pricebox282396").show(); }, function () { $("#pricebox282396").hide(); }); $("#pricepre290120").hover(function () { $("#pricebox290120").show(); }, function () { $("#pricebox290120").hide(); }); $("#pricepre290115").hover(function () { $("#pricebox290115").show(); }, function () { $("#pricebox290115").hide(); }); $("#pricepre290119").hover(function () { $("#pricebox290119").show(); }, function () { $("#pricebox290119").hide(); }); $("#pricepre278853").hover(function () { $("#pricebox278853").show(); }, function () { $("#pricebox278853").hide(); }); $("#pricepre18936").hover(function () { $("#pricebox18936").show(); }, function () { $("#pricebox18936").hide(); }); $("#pricepre303074").hover(function () { $("#pricebox303074").show(); }, function () { $("#pricebox303074").hide(); }); })</script>


        <!--尾部2012-10-9修改 start-->
        <div id="Footer">
            <div class="footer_link" id="youtx_B07_06">
                <span id="youtxlist_B06_22">
                    <a rel="nofollow" target="_blank" href="http://www.youtx.com/help/about/">关于我们</a>|<a
                        rel="nofollow" target="_blank" href="http://www.youtx.com/help/contact/">联系我们</a>|<a target="_blank"
                            href="http://www.youtx.com/help/links/">友情链接</a>|<a rel="nofollow" target="_blank" href="http://www.youtx.com/help/jobs/">招聘</a>|<a
                                rel="nofollow" target="_blank" href="http://www.youtx.com/help/service/">服务协议</a>|<a
                                    id="youtx_34" rel="nofollow" target="_blank" href="http://www.youtx.com/feedback/">意见反馈</a>|<a
                                        rel="nofollow" target="_blank" href="/downloadshortcut/" class="appYtx">下载桌面游天下</a>|<a
                                            rel="nofollow" target="_blank" href="/mo/">手机游天下</a>|<a rel="nofollow" target="_blank"
                                                href="http://www.youtx.com/star/">明星房东</a>|<a target="_blank" href="http://www.youtx.com/">日租房</a>|<a
                                                    rel="nofollow" target="_blank" href="http://blog.youtx.com/">博客</a>|<a rel="nofollow" target="_blank" href="http://www.youtx.com/jifen/exchange/">积分换礼</a>|<a rel="nofollow" target="_blank" href="http://www.youtx.com/Profile/cps/cpsapply.aspx">CPS加盟</a>|<a href="http://www.youtx.com/publish/StarUser/LandlordCruit.aspx" rel="nofollow" target="_blank">房东招募</a></span>
            </div>
            <div class="FooterDec">
                <span class="clearfix"><span class="FooterDecSpan">Copyright &copy; 2017 Youtx.com,
            All Rights Reserved<br />
                    <a rel="nofollow" target="_blank" href="http://js.youtx.com/icp.jpg">京ICP证041065号</a>京公网安备11010602010093号-2
                </span><a class="Dec" rel="nofollow" href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&amp;sap=&amp;dn=passport.youtx.com&amp;zoneoff=&amp;lang=zh_CN"
                    target="_blank">
                    <img width="60" height="35" src="http://js.youtx.com/images/VerisignYoutx.gif"></a>
                    <a class="Dec" target="_blank" rel="nofollow" href="https://www.itrust.org.cn/yz/pjwx.asp?wm=1766253730">
                        <img src="http://js.youtx.com/images/FooterNetPic.gif"></a> <a class="Dec" rel="nofollow"
                            href="https://ss.knet.cn/verifyseal.dll?sn=e12032211010015160307708&amp;ct=df&amp;pa=318891"
                            target="_blank">
                            <img width="100" height="35px" src="http://js.youtx.com/images/TrustYoutx.gif"></a>
                    <a class="Dec" rel="nofollow" href="http://www.hd315.gov.cn/beian/view.asp?bianhao=010202012082400507"
                        target="_blank">
                        <img src="http://js.youtx.com/images/gsbs.gif"></a> </span>
            </div>
        </div>

        <!--尾部2012-10-9修改 end-->


        <!--右边悬浮框suspension-->
        <div class="suspenBox">
            <ul class="suspensionL">
                <li class="suspenLi suspenLi2" id="suspenLi2">
                    <a href="http://www.youtx.com/feedback/" target="_blank"></a>
                </li>
                <li class="suspenLi suspenLi3" id="suspenLi3">
                    <div class="suspenPop1 suspenPop3">
                        <h2><span class="ColorBlue">微信</span>扫描二维码使用游天下</h2>
                        <img src="http://js.youtx.com/images/default2016/ewmBNew.jpg" width="102" height="102" alt="微信二维码" />
                        <p>微信号：游天下短租</p>
                    </div>
                </li>

            </ul>
            <div class="suspensionR">
                <a href="javascript:;"></a>
            </div>
        </div>
        <!--右边悬浮框suspension end-->

        <script type="text/javascript" src="http://js.youtx.com/scripts/list2016.js?v=201704211100"></script>
</body>
</html>
