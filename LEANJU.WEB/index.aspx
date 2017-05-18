<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head lang="en">
    <meta charset="UTF-8">
    <title>乐安居短租网</title>
    <meta name="keywords" content="短租,短租房,日租,日租房,短租公寓,酒店式公寓,家庭旅馆,青年旅社,游天下" />
    <meta name="description" content="乐安居短租网是中国领先的房屋短租日租网站,面向全国超过300个城市提供短租房、日租房、短租公寓、家庭旅馆、青年旅社等的短期住宿服务。" />
    <meta http-equiv="Cache-Control" content="no-transform" />
    <link rel="stylesheet" href="../css/youtxpublic2016.css" />
    <link rel="stylesheet" href="../css/youtxindex2016.css" />

    <script id="jquery" src="../js/6ceb6c62caba4a0681858e1c9d93b9af.js" language="javascript" type="text/javascript"></script>





    <script type="text/javascript">
        //监控代码请勿删除
        var _dctc = _dctc || {}; _dctc._account = _dctc._account || ['UA-25297079-1']; _dctc.isNorth = _dctc.isNorth || 'Y'; _dctc.bid = '27'; (function () {
            var script = document.createElement('script'); script.type = 'text/javascript'; script.async = true; script.src = 'http://js.soufunimg.com/count/load.min.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(script, s);
        })();
        //监控代码结束
    </script>

    <!--new calendar start-->

    <script type="text/javascript" src="../js/js_calendar_head2016.js"></script>
    <!--new calendar end-->

</head>
<body>

    <!--header-->

    <script type="text/javascript">
        var WRInitTime = (new Date()).getTime();
    </script>

    <div class="header clearfix">
        <a id="youtx_C01_01" class="youtxLogo" href="/">
            <img src="../images/youtxlogo.png" width="118" height="62" alt="安乐居logo" /></a>
        <ul class="headerNav clearfix" id="headerNav" style="width: 580px;">
            <li class="active"><a id="youtx_C01_02" href="/" target="_blank">首页</a></li>
        </ul>


        <!--头 已登录 start-->

        <ul class="headerLogin clearfix" style="display: none;" id="youtxlogin">
            <li class="dropDownLi">
                <a  target="_blank" href="user_home/account_index.aspx" class="drop" id="NameA"></a>
                <dl class="TopullDown">
                    <dd><a href="/User/MyMailBox/" id="MsgNumA" target="_self"><span>消息</span></a></dd>
                    <dd><a href="/User/MyWealth/" target="_self">我的积分</a></dd>
                    <dd><a href="/user/remind" target="_self">账户管理</a></dd>
                    <dd><a  target="_self" id="logout">退出</a></dd>
                </dl>

            </li>
            <li class="dropDownLi">
                <a href="/payment/User/TravelEn/TenantsOrderManageEn.aspx" class="dropDownTrigger" id="MyZuKe">我是租客</a>
                <dl class="TopullDown">
                    <dd><a href="/payment/User/TravelEn/TenantsOrderManageEn.aspx" target="_self" id="MyOrders"><span>我的订单</span></a></dd>
                    <!--<dd><a href="/User/MyMailBox/" target="_self">消息</a></dd>-->
                    <dd><a href="/payment/User/MyCollection/Collection.aspx" target="_self">收藏夹</a></dd>
                </dl>
            </li>
            <li class="dropDownLi">
                <a href="/payment/User/MyroomEn/OrderManageEn.aspx" class="dropDownTrigger" id="MyFangDong">我是房东</a>
                <dl class="TopullDown">
                    <dd><a href="/payment/User/MyroomEn/OrderManageEn.aspx" id="Ordermanage"><span>订单管理</span></a></dd>
                    <dd><a href="/mallshop/mallabout/">我要开店</a></dd>
                    <dd><a href="/room/new/">发布房间</a></dd>
                    <dd><a href="/publish/DateMnage/">排期管理</a></dd>
                    <dd><a href="/User/Myroom/">房源管理</a></dd>
                    <!--<dd> <a href="http://bang.youtx.com/DateManage/DateManage.aspx">我的短租帮</a></dd>-->
                </dl>
            </li>
            <li class="dropDownLi">
                <a href="javascript:;" class="dropDownTrigger" id="LiHelp">帮助</a>
                <dl class="TopullDown">
                    <dd><a href="/help/Manage/">房东指南</a></dd>
                    <dd><a href="/help/serchroom/">租客指南</a></dd>
                    <dd><a href="/help/contact/">联系我们</a></dd>
                </dl>
            </li>
        </ul>

        <!--头 已登录 end-->

        <!--头 未登录 start-->
        <ul class="headerLogin clearfix" id="youtxloginw">
            <li class="dropDownLino"><a id="youtx_C01_07" href="regist.aspx">注册</a>  </li>

            <li class="dropDownLino" style="padding-right: 15px;"><a id="youtx_C01_08" href="Login.aspx">登录</a></li>


            <li class="dropDownLi"><a id="youtx_C01_09" href="/help/" class="dropDownTrigger">帮助</a>
                <dl class="TopullDown">
                    <dd><a href="/help/Manage/">房东指南</a></dd>
                    <dd><a href="/help/serchroom/">租客指南</a></dd>
                    <dd><a href="/help/contact/">联系我们</a></dd>
                </dl>
            </li>
            <li class="dropDownPhone">
                <a id="youtx_C01_10" href="#" class="dropDownTrigger"></a>

            </li>
        </ul>
        <!--头 未登录 end-->
    </div>
    <!--banner-->
    <div class="banner">




        <ul class="bannerImgUl" id="bannerImgUl">
            <li style="display: block;" class="bannerImgLi">
                <a href="http://www.youtx.com/pcTopic/scene-ytxbscg/" target="_blank">
                    <img src="../images/002661220900.jpg" alt="轮播图" />
                    <h2 class="bannerTitle"></h2>
                </a>

            </li>
            <li style="display: none;">
                <a href="http://www.youtx.com/pcTopic/scene-jjy/" target="_blank">
                    <img src="../images/009112285000.jpg" alt="轮播图" />
                    <h2 class="bannerTitle"></h2>
                </a>

            </li>
            <li style="display: none;">
                <a href="http://www.youtx.com/zhuanti/guangjiaohui/" target="_blank">
                    <img src="../images/008580830500.jpg" alt="轮播图" />
                    <h2 class="bannerTitle"></h2>
                </a>

            </li>
            <li style="display: none;">
                <a href="http://www.youtx.com/pcTopic/scene-qmjdzf/" target="_blank">
                    <img src="../images/006025157700.jpg" alt="轮播图" />
                    <h2 class="bannerTitle"></h2>
                </a>

            </li>
            <li style="display: none;">
                <a href="http://www.youtx.com/pcTopic/world-tachun/" target="_blank">
                    <img src="../images/003768680300.jpg" alt="轮播图" />
                    <h2 class="bannerTitle"></h2>
                </a>

            </li>
            <li style="display: none;">
                <a href="http://www.youtx.com/pcTopic/scene-sth/" target="_blank">
                    <img src="../images/003682191300.jpg" alt="轮播图" />
                    <h2 class="bannerTitle"></h2>
                </a>

            </li>

        </ul>
        <span class="pics_pre" id="pics_pre" style="">
            <a id="youtx_C02_05" style="display: block; height: 50px;"></a></span>

        <span class="pics_next" id="pics_next" style="">
            <a id="youtx_C02_06" style="display: block; height: 50px;"></a></span>

        <span class="bg_sideLeft"></span><span class="bg_sideRight"></span>

        <div class="selectIndex clearfix">
            <div id="youtx_C02_01" class="selectCity">

                <input id="txtCity" class="selCityInp" value="" type="text" onblur="if (value ==''){value='请输入您的目的地（城市、区域、景点等）'; this.style.color='#999'}else{this.style.color='#333'}" onfocus="if (value =='请输入您的目的地（城市、区域、景点等）'){value =''};this.style.color='#333'" style="color: #999;" />

                <div class="Ytxcitybox" id="HotCities" style="display: none; top: 46px;">
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
                                    <dt class="categoriesTit">景点</dt>
                                    <dd class="categoriesTxt">
                                        <a data="beijing-tiananmen" href="javascript:void(0)">天安门</a>
                                        <a data="beijing-niaochao" href="javascript:void(0)">鸟巢</a>
                                        <a data="jiaxing-xitang" href="javascript:void(0)">西塘</a>
                                        <a data="jiaxing-wuzhen" href="javascript:void(0)">乌镇</a>
                                        <a data="suzhou-zhouzhuangzhen" href="javascript:void(0)">周庄</a>
                                        <a data="hangzhou-xihu-xihu" href="javascript:void(0)">西湖</a>
                                        <a data="zhoushan-putuoshan" href="javascript:void(0)">普陀山</a>
                                        <a data="shangrao-wuyuan" href="javascript:void(0)">婺源</a>
                                        <a data="xian-dayanta" href="javascript:void(0)">大雁塔</a>
                                        <a data="nanjing-zhongshanling" href="javascript:void(0)">中山陵</a>
                                        <a data="nanjing-xuanwuhu" href="javascript:void(0)">玄武湖</a>
                                        <a data="suzhou-zhuozhengyuan" href="javascript:void(0)">拙政园</a>
                                        <a data="wuhan-huanghelou" href="javascript:void(0)">黄鹤楼</a>
                                        <a data="xiamen-bailuzhou" href="javascript:void(0)">白鹭洲</a>
                                        <a data="xiamen-gulangyu" href="javascript:void(0)">鼓浪屿</a>
                                        <a data="chongqing-chaotianmen" href="javascript:void(0)">朝天门</a>
                                        <a data="yuxi-fuxianhu" href="javascript:void(0)">抚仙湖</a>
                                        <a data="chengdu-wuhouci" href="javascript:void(0)">武侯祠</a>
                                        <a data="shenzhen-shijiezhichuang" href="javascript:void(0)">世界之窗</a>
                                        <a data="dalian-xinghaiguangchang" href="javascript:void(0)">星海广场</a>
                                        <a data="hongkong-weiduoliyagang" href="javascript:void(0)">维多利亚港</a>
                                        <a data="kunming-cuihugongyuan" href="javascript:void(0)">翠湖</a>
                                    </dd>
                                </dl>


                            </li>
                            <li style="display: none">
                                <div class="categoriesTxt categoriesTxt02">
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
                                </div>
                            </li>
                            <li style="display: none">
                                <div class="categoriesTxt categoriesTxt02">
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
                                </div>
                            </li>
                            <li style="display: none">
                                <div class="categoriesTxt categoriesTxt02">
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
                                </div>
                            </li>
                            <li style="display: none">
                                <div class="categoriesTxt categoriesTxt02">
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
                                </div>
                            </li>
                            <li style="display: none">
                                <div class="categoriesTxt categoriesTxt02">
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
                                </div>
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
                    });
                </script>

                <div id="CitiesSuggestion" class="Ytxcitybox" style="top: 46px; z-index: 999; display: none">
                    <div class="citybox_no" id="divNoCity" style="display: none;">对不起，找不到该城市</div>
                </div>
                <input type="hidden" id="path" value="" />
                <input type="hidden" id="kt" value="2" />
                <input type="hidden" id="ct" value="0" />

            </div>
            <div id="youtx_C02_02" class="selDate">
                <span class="selDateTxt">入住</span>

                <input type="hidden" id="checkin" name="checkin" value="yy-mm-dd" />

                <input id="startDate" name="startDate" type="text" value="" class="selDateInp" tabindex="2" onchange="if($('#startDate').val()!=''){$('#checkin').val($('#startDate').val());}" />

                <!--2016-05-12begin-->
                <div id="checkintip" class="MessageBox" style="position: absolute; left: 166px; top: 0px; width: 180px; height: 26px; z-index: 5; line-height: 26px; background: #fffce1; border: solid 1px #ffbf6a; border-radius: 4px; text-align: center; display: none;">
                    <span>选择入住时间，看当天准确价格</span>
                    <div class="triangle-character" style="position: absolute; top: 7px; left: -6px; width: 7px; height: 11px; background: url(../images/tipstra.png) no-repeat 0px 0px; overflow: hidden;"></div>
                </div>
                <!--2016-05-12end-->

                <div id="divpickerin" style="display: none; position: absolute; z-index: 11">
                    <div type="text" id="datepickerin">
                    </div>
                </div>

            </div>
            <div id="youtx_C02_03" class="selDate">
                <span class="selDateTxt">退房</span>

                <input type="hidden" id="checkout" name="checkout" value="yy-mm-dd" />

                <input id="endDate" name="endDate" class="selDateInp" type="text" value="" tabindex="3" onchange="if($('#endDate').val()!=''){$('#checkout').val($('#endDate').val());}" />

                <script type="text/javascript">
                    var localDate = new Date();
                    var serverYear = 2017;
                    var serverMonth = 04;
                    var serverDay = 17;

                    var localYear = localDate.getFullYear();
                    var localMonth = localDate.getMonth() + 1;
                    var localDay = localDate.getDate();

                    var useLocal = false;
                    if (localYear > serverYear || localMonth > serverMonth || localDay > serverDay) {
                        useLocal = true;
                    }

                    var minDate = "" + localYear + "-" + localMonth + "-" + localDay;

                    var maxDate = "2017-10-14";
                    var houseId;

                </script>
                <script type="text/javascript" src="../js/js_calendar_foot2016.js"></script>
                <script type="text/javascript" src="../js/js_calendar2016.js"></script>


                <!--2016-05-12begin-->
                <div id="checkouttip" class="MessageBox" style="position: absolute; left: 166px; top: 0px; width: 210px; height: 26px; z-index: 5; line-height: 26px; background: #fffce1; border: solid 1px #ffbf6a; border-radius: 4px; text-align: center; display: none;">
                    <span>如您需要入住30天以上，请分段搜索</span>
                    <div class="triangle-character" style="position: absolute; top: 7px; left: -6px; width: 7px; height: 11px; background: url(../images/tipstra.png) no-repeat 0px 0px; overflow: hidden;"></div>
                </div>
                <!--2016-05-12end-->


                <div id="divpickerout" style="display: none; position: absolute; z-index: 11">
                    <div type="text" id="datepickerout">
                    </div>
                </div>

            </div>
            <div class="menuInput" id="number_of_guests" style="display: none;"></div>
            <!-- <div class="selPerson">
            <span class="selPerTrigger">人数<em class="selResult">1人</em></span>
            <ul class="selPerChose">
                <li class="selCur">1人</li>
                <li>2人</li>
                <li>3人</li>
                <li>4人</li>
                <li>5人</li>
                <li>6人</li>
                <li>7人</li>
            </ul>
        </div>-->
            <div id="youtx_C02_04" style="float: left">
                <input class="searchBtn" type="button" value="搜 索" id="submit_location" name="submit_location" style="cursor: pointer" />
            </div>
            <script type="text/javascript">
                $("#submit_location").click(function () {
                    //        if ($('#checkin').val() == "yy-mm-dd") {
                    //            $("#checkouttip").hide();
                    //            $("#checkintip").show();
                    //            return;
                    //        }
                    //        if ($('#checkout').val() == "yy-mm-dd") {
                    //            $("#checkintip").hide();
                    //            $("#checkouttip").show();
                    //            return;
                    //        }

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
            </script>

            <script type="text/javascript">
                var experienceNum = '0';
                var lastTimeCity = "北京";
                $(function () {

                    $(window).scroll(function () {
                        var sT = document.body.scrollTop ||
        document.documentElement.scrollTop;
                        if (sT <= 50) {
                            $(".BackToTop").hide();
                        }
                        else {
                            $(".BackToTop").show();
                        }
                    });
                    $(".BackToTop").click(function () {
                        $("html,body").animate({ scrollTop: 0 }, 1000);
                    })

                    $(".close").click(function () {
                        $(".Overlays").hide();
                    })
                    //返回顶部-end-------------------------------------



                    var InputVal = $(".SearchInput").val();
                    if (InputVal == "请输入您的目的地（城市、区域、景点等）") {
                        $(".SearchInput").css("color", "#999")
                    } else {
                        $(".SearchInput").css("color", "#333")
                    }

                    //2014-6-13修改  开始
                    $(".citylisTab span").mouseover(function () {
                        var i = $(".citylisTab span").index(this);
                        $(this).addClass("Cur").siblings().removeClass("Cur");
                        $(".citylisTabUl li").css("display", "none").eq(i).css("display", "block");
                    })


                    $(".categoriesTxt a").click(function () {
                        $(".SearchInput").css("color", "#333333");
                        $(".SearchInput").val($(this).text());
                        $("#SelectCity").hide();
                    })


                    //2014-6-13修改  结束


                    //请输入中文/拼音或↑↓键选择  --这个效果没有实现;
                    //搜索框脚本-end-----------------------------------


                    //noInfo

                    $(".inlandCitys li").mouseenter(function () {
                        if (this.id == "liSubway") {
                            if (this.className == 'noInfo') {
                                return;
                            }
                            else {
                                $(".inlandAdd").hide(); //
                                $("#dlSubway").show();
                                var i = $(".inlandCitys li").index(this);
                                $(this).siblings().children('.Jianico').hide();
                                $(this).children('.Jianico').show();
                                if (i < 3) {
                                    $(".inlandAdd").css('top', '72px');
                                }
                                else {
                                    $(".inlandAdd").css('top', '145px');
                                }
                            }
                        }
                        else {
                            if (this.className == 'noInfo') {
                                return;
                            }
                            else {
                                var i = $(".inlandCitys li").index(this);
                                $(this).siblings().children('.Jianico').hide();
                                $(this).children('.Jianico').show();
                                $(".inlandAdd").hide(); //
                                $($(".inlandAdd")[i]).show();
                                if (i < 3) {
                                    $(".inlandAdd").css('top', '72px');
                                }
                                else {
                                    $(".inlandAdd").css('top', '145px');
                                }
                            }
                        }
                    })

                    $(".inlandAdd").mouseleave(function () {
                        $(this).hide();
                    })
                    $(".inlandCitysTxt").mouseleave(function () {
                        $(".inlandAdd").hide();
                        if (!($(".inlandAdd").is(":visible"))) {
                            $('.Jianico').hide();
                        }
                    })

                    //搜索-城市周边地址-end--------------------------------

                    $('.MoreA').click(function () {
                        $('.MoreDiv').toggle();
                        $(this).toggleClass('MoreB');
                    })
                    $('.MoreATxtclose').click(function () {
                        $('.MoreDiv').hide();
                        $(this).parent().siblings().removeClass('MoreB');
                    })
                    //搜索查看更多城市-end-------------------------------


                    $("#inlandCity dt span").mouseover(function () {
                        var i = $("#inlandCity dt span").index(this);
                        $("#inlandCity dt span").removeClass('Cur');
                        $("#inlandCity dt span").eq(i).addClass('Cur');
                        $(this).parent().siblings('dd').css("display", "none").eq
        (i).css("display", "block");
                    })

                    $("#foreignCity dt span").mouseover(function () {
                        var i = $("#foreignCity dt span").index(this);
                        $("#foreignCity dt span").removeClass('Cur');
                        $("#foreignCity dt span").eq(i).addClass('Cur');
                        $(this).parent().siblings('dd').css("display", "none").eq
        (i).css("display", "block");
                    })

                    //导航国内短租选项卡切换-end-------------------------------
                    // 2014-5-26修改


                    // 2014-5-26修改-end

                })

            </script>

        </div>
    </div>
    <!--banner下面的link-->
    <div class="bannerLkBox">
        <ul class="bannerLkUl clearfix">
            <li>
                <a id="youtx_C02_11" href="http://www.youtx.com/zhuanti/2011/fangxinzu/" target="_blank">
                    <p>放心的租客保障</p>
                </a>
            </li>
            <li class="bannerLkLi2">
                <a id="youtx_C02_12" href="http://www.youtx.com/help/Manage/" target="_blank">
                    <p>完善的房东指南</p>
                </a>
            </li>
            <li class="bannerLkLi3 curLi">
                <a id="youtx_C02_13" href="http://www.youtx.com/help/pay/" target="_blank">
                    <p>安全的在线支付</p>
                </a>
            </li>
            <li class="bannerLkLi4">
                <a id="youtx_C02_14" href="http://www.youtx.com/help/contact/" target="_blank">
                    <p>贴心的客户服务</p>
                </a>
            </li>
        </ul>
    </div>
    <!--mainConternt-->
    <div class="conWrap">
        <div class="mainCon">
            <!--section1热门好去处-->
            <div class="wrap1">
                <div class="hotArea">
                    <div class="conTit">
                        <em class="line"></em>
                        <h2>热门好去处</h2>
                        <p>别人的城市是你眼中的风景</p>
                    </div>
                    <!--list房源-->
                    <ul class="hotAreaUl clearfix">
                       <%-- href="place/Hangzhou.aspx"--%>
                       
                        <li><a id="youtx_C03_01" href="http://www.youtx.com/hangzhou/"  target="_blank">
                            <img src="../images/380x260c.jpg" width="380" height="260" alt="热门好去处房源" /><div class="shadow"></div>
                        </a><span class="hotAreaBg"></span>
                            <div class="hotAreaTxt"><span>杭州</span><em></em></div>
                        </li>
                        <li><a id="youtx_C03_02" href="http://www.youtx.com/shanghai/" target="_blank">
                            <img src="../images/380x260c.jpg" width="380" height="260" alt="热门好去处房源" /><div class="shadow"></div>
                        </a><span class="hotAreaBg"></span>
                            <div class="hotAreaTxt"><span>上海</span><em></em></div>
                        </li>
                        <li class="noMR"><a id="youtx_C03_03" href="http://www.youtx.com/beijing/" target="_blank">
                            <img src="../images/380x260c.jpg" width="380" height="260" alt="热门好去处房源" /><div class="shadow"></div>
                        </a><span class="hotAreaBg"></span>
                            <div class="hotAreaTxt"><span>北京</span><em></em></div>
                        </li>
                        <li><a id="youtx_C03_04" href="http://www.youtx.com/hongkong/" target="_blank">
                            <img src="../images/380x260c.jpg" width="380" height="260" alt="热门好去处房源" /><div class="shadow"></div>
                        </a><span class="hotAreaBg"></span>
                            <div class="hotAreaTxt"><span>香港</span><em></em></div>
                        </li>
                        <li><a id="youtx_C03_05" href="http://www.youtx.com/guangzhou/" target="_blank">
                            <img src="../images/380x260c.jpg" width="380" height="260" alt="热门好去处房源" /><div class="shadow"></div>
                        </a><span class="hotAreaBg"></span>
                            <div class="hotAreaTxt"><span>广州</span><em></em></div>
                        </li>
                        <li class="noMR"><a id="youtx_C03_06" href="http://www.youtx.com/sanya/" target="_blank">
                            <img src="../images/380x260c.jpg" width="380" height="260" alt="热门好去处房源" /><div class="shadow"></div>
                        </a><span class="hotAreaBg"></span>
                            <div class="hotAreaTxt"><span>三亚</span><em></em></div>
                        </li>
                    </ul>
                </div>
            </div>
            <!--section2特色短租-->
            <div class="wrap1">
                <div class="shortRent">
                    <div class="conTit">
                        <em class="line"></em>
                        <h2>特色短租</h2>
                        <p>与你分享“家”的精彩</p>
                    </div>
                    <!--list特色房源-->
                    <div class="shortRentUl clearfix">
                        <div class="focusPicture" id="focusPicture">
                            <ul class="PictureUl" id="youtx_C04_01">
                                <li style="display: block;"><a href="http://www.youtx.com/pcTopic/scene-ytxbscg/" target="_blank">
                                    <img src="../images/002545932700.jpg" width="780" height="310" /></a></li>
                                <li><a href="http://www.youtx.com/pcTopic/scene-jjy/" target="_blank">
                                    <img src="../images/009125229100.jpg" width="780" height="310" /></a></li>
                                <li><a href="http://www.youtx.com/zhuanti/guangjiaohui/" target="_blank">
                                    <img src="../images/006057317800.jpg" width="780" height="310" /></a></li>
                                <li><a href="http://www.youtx.com/pcTopic/scene-sth/" target="_blank">
                                    <img src="../images/006103013200.jpg" width="780" height="310" /></a></li>
                                <li><a href="http://www.youtx.com/pcTopic/scene-qmjdzf/" target="_blank">
                                    <img src="../images/003386383600.jpg" width="780" height="310" /></a></li>
                            </ul>
                            <div class="PictureLis"><span class=""></span><span class=""></span><span class=""></span><span class="Cur"></span><span class=""></span></div>
                        </div>
                        <div class="sr_show fl mr0" id="youtx_C04_02">
                            <div class="pic_tit">
                                <a class="a_pic" href="http://www.youtx.com/room/208206/" target="_blank">
                                    <img src="../images/009462175800.jpg" width="380" height="250" alt="特色房源图片"></a><p class="tit_txt">高性价比畅游香港</p>
                            </div>
                            <div class="show_info clearfix">
                                <div class="fl">
                                    <p class="mb7"><a class="t16" href="http://www.youtx.com/room/208206/" target="_blank">旺角油麻地地铁口三居室可住8人</a></p>
                                    <p class="t14">香港</p>
                                </div>
                                <p class="fr price"><em class="em1">¥</em><em class="em2">1038</em><em class="em3">/晚</em></p>
                            </div>
                        </div>
                        <div class="sr_show fl" id="youtx_C04_03">
                            <div class="pic_tit">
                                <a class="a_pic" href="http://www.youtx.com/room/267479/" target="_blank">
                                    <img src="../images/009460566800.jpg" width="380" height="250" alt="特色房源图片"></a><p class="tit_txt">超高性价比海景房</p>
                            </div>
                            <div class="show_info clearfix">
                                <div class="fl">
                                    <p class="mb7"><a class="t16" href="http://www.youtx.com/room/267479/" target="_blank">三亚湾正面海景家庭房</a></p>
                                    <p class="t14">三亚</p>
                                </div>
                                <p class="fr price"><em class="em1">¥</em><em class="em2">268</em><em class="em3">/晚</em></p>
                            </div>
                        </div>
                        <div class="sr_show fl" id="youtx_C04_04">
                            <div class="pic_tit">
                                <a class="a_pic" href="http://www.youtx.com/room/289910/" target="_blank">
                                    <img src="../images/009443189800.jpg" width="380" height="250" alt="特色房源图片"></a><p class="tit_txt">两人浪漫之旅甜蜜回忆</p>
                            </div>
                            <div class="show_info clearfix">
                                <div class="fl">
                                    <p class="mb7"><a class="t16" href="http://www.youtx.com/room/289910/" target="_blank">江宁地铁旁豪华公寓近河海大学</a></p>
                                    <p class="t14">南京</p>
                                </div>
                                <p class="fr price"><em class="em1">¥</em><em class="em2">249</em><em class="em3">/晚</em></p>
                            </div>
                        </div>
                        <div class="sr_show fl mr0" id="youtx_C04_05">
                            <div class="pic_tit">
                                <a class="a_pic" href="http://www.youtx.com/room/240002/" target="_blank">
                                    <img src="../images/009433683200.jpg" width="380" height="250" alt="特色房源图片"></a><p class="tit_txt">低调奢&quot;壕&quot;享受</p>
                            </div>
                            <div class="show_info clearfix">
                                <div class="fl">
                                    <p class="mb7"><a class="t16" href="http://www.youtx.com/room/240002/" target="_blank">近机场迪士尼豪华复式LOFT公寓</a></p>
                                    <p class="t14">上海</p>
                                </div>
                                <p class="fr price"><em class="em1">¥</em><em class="em2">628</em><em class="em3">/晚</em></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--目的地攻略-->
            <div class="desStrag_wrap">
                <div class="desStrag">
                    <div class="conTit">
                        <em class="line"></em>
                        <h2>目的地攻略</h2>
                        <div class="moreCon"><a id="youtx_C05_01" href="http://guide.youtx.com/" target="_blank" class="more">更多目的地攻略</a></div>
                    </div>
                    <!--点击小图对应的大图-->
                    <div class="desStragImg">
                        <ul class="desStragUl">
                            <li style="display: block;"><a id="youtx_C05_02" href="http://guidebook.youtx.com/Info/7650785/" target="_blank">
                                <img src="../images/005877684600.jpg" alt="目的地攻略图片" /></a><span class="desBg"></span><div class="desImgTxt">
                                    <h2><a id="youtx_C05_03" href="http://guidebook.youtx.com/Info/7650785/" target="_blank">厦门正宗齐全特色小吃</a></h2>
                                    <h3 class="clearfix"><span class="textEllipsis">厦门</span> <a id="youtx_C05_04" href="http://guidebook.youtx.com/Info/7650785/" target="_blank" class="textEllipsis">by原巷口</a></h3>
                                    <p>厦门美食网上都介绍热门的土笋冻、海蛎煎、青津果什么的，你知道它们的特色到底是什么？具体哪里的最正宗最好吃吗？——点进来就告诉你！</p>
                                </div>
                            </li>
                            <li><a id="youtx_C05_06" href="http://guidebook.youtx.com/Info/7650618/" target="_blank">
                                <img src="../images/005853493100.jpg" alt="目的地攻略图片" /></a><span class="desBg"></span><div class="desImgTxt">
                                    <h2><a id="youtx_C05_07" href="http://guidebook.youtx.com/Info/7650618/" target="_blank">深圳最美的客家村落</a></h2>
                                    <h3 class="clearfix"><span class="textEllipsis">深圳</span> <a id="youtx_C05_08" href="http://guidebook.youtx.com/Info/7650618/" target="_blank" class="textEllipsis">by浪子</a></h3>
                                    <p>生活在钢筋水泥的城市森林中，执着于一成不变的匆忙步伐，累了，来一场短暂的旅行，让身心释然，回归...</p>
                                </div>
                            </li>
                            <li><a id="youtx_C05_10" href="http://guidebook.youtx.com/Info/7649904/" target="_blank">
                                <img src="../images/005815935100.jpg" alt="目的地攻略图片" /></a><span class="desBg"></span><div class="desImgTxt">
                                    <h2><a id="youtx_C05_11" href="http://guidebook.youtx.com/Info/7649904/" target="_blank">不知道的广州旅游景点</a></h2>
                                    <h3 class="clearfix"><span class="textEllipsis">广州</span> <a id="youtx_C05_12" href="http://guidebook.youtx.com/Info/7649904/" target="_blank" class="textEllipsis">by海妖海妖</a></h3>
                                    <p>广州的美食你都知道，但这些广州美丽的景点你知道吗？这里不仅有时尚，还有原始的自然风貌和带着仙气儿的秀丽风光。</p>
                                </div>
                            </li>
                            <li><a id="youtx_C05_14" href="http://guidebook.youtx.com/Info/1244138/" target="_blank">
                                <img src="../images/005584421000.jpg" alt="目的地攻略图片" /></a><span class="desBg"></span><div class="desImgTxt">
                                    <h2><a id="youtx_C05_15" href="http://guidebook.youtx.com/Info/1244138/" target="_blank">古都北京5日游</a></h2>
                                    <h3 class="clearfix"><span class="textEllipsis">北京</span> <a id="youtx_C05_16" href="http://guidebook.youtx.com/Info/1244138/" target="_blank" class="textEllipsis">by施嘉志</a></h3>
                                    <p>早就想到古都北京旅游，在有限的时间里，交通工具选择什么时段，哪些是必去的景点？住哪里最有赶脚？</p>
                                </div>
                            </li>
                            <li><a id="youtx_C05_18" href="http://guidebook.youtx.com/Info/7650872/" target="_blank">
                                <img src="../images/005400336200.jpg" alt="目的地攻略图片" /></a><span class="desBg"></span><div class="desImgTxt">
                                    <h2><a id="youtx_C05_19" href="http://guidebook.youtx.com/Info/7650872/" target="_blank">杭州盘山公路自驾攻略</a></h2>
                                    <h3 class="clearfix"><span class="textEllipsis">杭州</span> <a id="youtx_C05_20" href="http://guidebook.youtx.com/Info/7650872/" target="_blank" class="textEllipsis">by王女士</a></h3>
                                    <p>爱自驾游朋友，如果行驶在公路上就是美景，是不是才有旅行的美丽心情？杭州周边有哪些盘山美景公路？我们盘点一下~</p>
                                </div>
                            </li>
                        </ul>
                        <div class="desSmallImg">
                            <ul class="desSmallImgUl">
                                <li><a id="youtx_C05_05" style="display: block;">
                                    <img src="../images/50x50c.jpg" width="50" height="50" alt="小图" /><span class="mask" style="display: none;"></span><span class="border" style="display: block;"><i></i></span></a></li>
                                <li><a id="youtx_C05_09" style="display: block;">
                                    <img src="../images/50x50c.jpg" width="50" height="50" alt="小图" /><span class="mask"></span><span class="border"><i></i></span></a></li>
                                <li><a id="youtx_C05_13" style="display: block;">
                                    <img src="../images/50x50c.jpg" width="50" height="50" alt="小图" /><span class="mask"></span><span class="border"><i></i></span></a></li>
                                <li><a id="youtx_C05_17" style="display: block;">
                                    <img src="../images/50x50c.jpg" width="50" height="50" alt="小图" /><span class="mask"></span><span class="border"><i></i></span></a></li>
                                <li><a id="youtx_C05_21" style="display: block;">
                                    <img src="../images/50x50c.jpg" width="50" height="50" alt="小图" /><span class="mask"></span><span class="border"><i></i></span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!--房东故事-->
            <div class="landLodStory">
                <div class="conTit">
                    <em class="line"></em>
                    <h2>房东故事</h2>
                    <div class="moreCon"><a id="youtx_C06_01" href="http://www.youtx.com/star/" target="_blank" class="more">更多房东故事</a></div>
                </div>
                <!--轮播图-->
                <div class="landLRoImg">
                    <div class="landLRoImgCon">
                        <ul class="landLRoUl clearfix">
                            <li><a id="youtx_C06_02" href="http://www.youtx.com/user/show/2189149" target="_blank">
                                <img src="../images/005626941300.jpg" width="580" height="430" alt="房东故事房源" /></a><a id="youtx_C06_03" class="landLPor" href="http://www.youtx.com/user/show/2189149" target="_blank"><img src="../images/005633010800.jpg" width="80" height="80" alt="头像" /><h2><span>轰轰趴</span>－上海</h2>
                                </a><span class="landLBg"></span>
                                <div class="landLStoryTxt">
                                    <i class="quoMarkL"></i>做任何事情不仅要规划好，也需要自己脚踏实地的去做好



                                    <i class="quoMarkR"></i>
                                </div>
                            </li>
                            <li><a id="youtx_C06_04" href="http://www.youtx.com/user/show/1178956/" target="_blank">
                                <img src="../images/005696456000.jpg" width="580" height="430" alt="房东故事房源" /></a><a id="youtx_C06_05" class="landLPor" href="http://www.youtx.com/user/show/1178956/" target="_blank"><img src="../images/005689336300.jpg" width="80" height="80" alt="头像" /><h2><span>魏先生</span>－深圳</h2>
                                </a><span class="landLBg"></span>
                                <div class="landLStoryTxt"><i class="quoMarkL"></i>为爱同行，不离不弃！深圳经济短租酒店<i class="quoMarkR"></i></div>
                            </li>
                            <li><a id="youtx_C06_06" href="http://www.youtx.com/star/254/" target="_blank">
                                <img src="../images/005714679600.jpg" width="580" height="430" alt="房东故事房源" /></a><a id="youtx_C06_07" class="landLPor" href="http://www.youtx.com/star/254/" target="_blank"><img src="../images/005713555600.jpg" width="80" height="80" alt="头像" /><h2><span>龚敏</span>－上海</h2>
                                </a><span class="landLBg"></span>
                                <div class="landLStoryTxt"><i class="quoMarkL"></i>专注在别墅轰趴的经营，事业遍四海，广交天下朋<i class="quoMarkR"></i></div>
                            </li>
                            <li><a id="youtx_C06_08" href="http://www.youtx.com/user/show/81149/" target="_blank">
                                <img src="../images/005683899200.jpg" width="580" height="430" alt="房东故事房源" /></a><a id="youtx_C06_09" class="landLPor" href="http://www.youtx.com/user/show/81149/" target="_blank"><img src="../images/005681562900.jpg" width="80" height="80" alt="头像" /><h2><span>牛奶姐</span>－香港</h2>
                                </a><span class="landLBg"></span>
                                <div class="landLStoryTxt"><i class="quoMarkL"></i>短租，让我更加充实与有色彩！ <i class="quoMarkR"></i></div>
                            </li>
                            <li><a id="youtx_C06_010" href="http://www.youtx.com/star/421/" target="_blank">
                                <img src="../images/005724296700.jpg" width="580" height="430" alt="房东故事房源" /></a><a id="youtx_C06_011" class="landLPor" href="http://www.youtx.com/star/421/" target="_blank"><img src="../images/003770252400.jpg" width="80" height="80" alt="头像" /><h2><span>龚小姐</span>－广州从化</h2>
                                </a><span class="landLBg"></span>
                                <div class="landLStoryTxt"><i class="quoMarkL"></i>房子是自家的，温泉是大自然恩赐的，从化逸泉度假别墅玩得开心，住得舒心~<i class="quoMarkR"></i></div>
                            </li>
                            <li><a id="youtx_C06_012" href="http://www.youtx.com/user/show/2429946" target="_blank">
                                <img src="../images/005560474600.jpg" width="580" height="430" alt="房东故事房源" /></a><a id="youtx_C06_013" class="landLPor" href="http://www.youtx.com/user/show/2429946" target="_blank"><img src="../images/005555860700.jpg" width="80" height="80" alt="头像" /><h2><span>徐静</span>－北京</h2>
                                </a><span class="landLBg"></span>
                                <div class="landLStoryTxt"><i class="quoMarkL"></i>做北京最好的阳光派豪华聚会别墅<i class="quoMarkR"></i></div>
                            </li>
                        </ul>
                    </div>
                    <span id="youtx_C06_14" class="arowLeft"></span><span id="youtx_C06_15" class="arowRight"></span>
                </div>
            </div>
            <!--友情链接-->
            <div class="warmLink">
                <ul class="warmLinkCon clearfix">
                    <li class="warmLinkLi warmLkSer">
                        <h3 class="warmLkTit">客户服务</h3>
                        <ul class="warmLkTxt">
                            <li>热线<span>400-630-0088</span></li>
                            <li>邮箱<span>service@youtx.com</span></li>
                            <li>合作<span>business@youtx.com</span></li>
                        </ul>
                        <a id="youtx_C07_01" class="toEnglish" href="http://en.youtx.com/" target="_blank">English</a>
                    </li>
                    <li class="warmLinkLi warmLkHelp">
                        <h3 class="warmLkTit">帮助中心</h3>
                        <ul class="warmLkTxt">
                            <li><a id="youtx_C07_02" href="http://www.youtx.com/help/Manage/" target="_blank">我是房东</a></li>
                            <li><a id="youtx_C07_03" href="http://www.youtx.com/help/serchroom/" target="_blank">我是租客</a></li>
                            <li><a id="youtx_C07_04" href="http://www.youtx.com/publish/StarUser/LandlordCruit.aspx" target="_blank">房东招募</a></li>
                            <li><a id="youtx_C07_05" href="http://www.youtx.com/Profile/cps/cpsapply.aspx" target="_blank">CPS加盟</a></li>
                        </ul>
                    </li>
                    <li class="warmLinkLi warmLkAboutUs">
                        <h3 class="warmLkTit">关于我们</h3>
                        <ul class="warmLkTxt">
                            <li><a id="youtx_C07_06" href="http://www.youtx.com/help/about/" target="_blank">关于游天下</a></li>
                            <li><a id="youtx_C07_07" href="http://www.youtx.com/help/contact/" target="_blank">联系我们</a></li>
                            <li><a id="youtx_C07_08" href="http://www.youtx.com/help/service/" target="_blank">服务协议</a></li>
                        </ul>
                    </li>
                    <li class="warmLinkLi warmLkAppDown">
                        <h3 class="warmLkTit">APP下载</h3>
                        <img class="warmLkAppImg" src="../images/youtxapp.png" width="128" height="128" alt="游天下二维码" />
                    </li>
                    <li class="warmLinkLi warmLkAttenUs posR">
                        <h3 class="warmLkTit">关注我们</h3>
                        <div class="bdsharebuttonbox " id="wramLkShare">
                            <a id="youtx_C07_09" href="#" onclick="return false;" class="bds_weixin" title="关注微信"></a>
                            <a id="youtx_C07_10" href="http://weibo.com/youtxcom" class="bds_tsina" title="关注微博" target="_blank"></a>
                        </div>
                        <div class="weixinHoverBox" id="weixinHoverBox">
                            <span class="arrowGy">◆</span>
                            <span class="arrowWt">◆</span>
                            <ul class="clearfix">
                                <li>
                                    <h3>用脚步丈量世界</h3>
                                    <img src="../images/subscribeqr.jpg" width="110" height="110" alt="订阅号" />
                                    <p>行者订阅：youtx400-630-0080</p>
                                </li>
                                <li>
                                    <h3>随手掌握短租事业</h3>
                                    <img src="../images/serviceqr.jpg" width="110" height="110" alt="订阅号" />
                                    <p>房东服务：youtxdz</p>
                                </li>
                            </ul>
                        </div>

                    </li>
                </ul>
            </div>
            <!--footer-->
            <div id="Footer">

                <div class="FooterCity" id="youtx_C07_11">
                    <ul class="FooterCityUl" id="FooterCityUl">
                        <li class="clearfix">
                            <div class="W FL">
                                <div class="CityTxt">
                                    <a href="http://www.youtx.com/beihai/" target="_blank">北海短租/日租</a><a href="http://www.youtx.com/beijing/" target="_blank">北京短租/日租</a> <a href="http://www.youtx.com/changchun/" target="_blank">长春短租/日租</a><a href="http://www.youtx.com/chengdu/" target="_blank">成都短租/日租</a><a href="http://www.youtx.com/chongqing/" target="_blank">重庆短租/日租</a><a href="http://www.youtx.com/dali/" target="_blank">大理短租/日租</a><a href="http://www.youtx.com/dalian/" target="_blank">大连短租/日租</a><a href="http://www.youtx.com/dongguan/" target="_blank">东莞短租/日租</a><a href="http://www.youtx.com/ganzhou/" target="_blank">赣州短租/日租</a><a href="http://www.youtx.com/guangzhou/" target="_blank">广州短租/日租</a><a href="http://www.youtx.com/guilin/" target="_blank">桂林短租/日租</a><a href="http://www.youtx.com/guiyang/" target="_blank">贵阳短租/日租</a> <a href="http://www.youtx.com/haerbin/" target="_blank">哈尔滨短租/日租</a><a href="http://www.youtx.com/haikou/" target="_blank">海口短租/日租</a><a href="http://www.youtx.com/hangzhou/" target="_blank">杭州短租/日租</a><a href="http://www.youtx.com/hefei/" target="_blank">合肥短租/日租</a><a href="http://www.youtx.com/huangshan/" target="_blank">黄山短租/日租</a>
                                    <a href="http://www.youtx.com/kaifeng/" target="_blank">开封短租/日租</a><a href="http://www.youtx.com/kunming/" target="_blank">昆明短租/日租</a> <a href="http://www.youtx.com/nanchang/" target="_blank">南昌短租/日租</a><a href="http://www.youtx.com/nanjing/" target="_blank">南京短租/日租</a><a href="http://www.youtx.com/nanning/" target="_blank">南宁短租/日租</a><a href="http://www.youtx.com/ningbo/" target="_blank">宁波短租/日租</a> <a href="http://www.youtx.com/qingdao/" target="_blank">青岛短租/日租</a><a href="http://www.youtx.com/qinhuangdao/" target="_blank">秦皇岛短租/日租</a>
                                    <a href="http://www.youtx.com/sanya/" target="_blank">三亚短租/日租</a><a href="http://www.youtx.com/shanghai/" target="_blank">上海短租/日租</a><a href="http://www.youtx.com/shenyang/" target="_blank">沈阳短租/日租</a><a href="http://www.youtx.com/shenzhen/" target="_blank">深圳短租/日租</a><a href="http://www.youtx.com/suzhou/" target="_blank">苏州短租/日租</a> <a href="http://www.youtx.com/wuhan/" target="_blank">武汉短租/日租</a><a href="http://www.youtx.com/wuxi/" target="_blank">无锡短租/日租</a> <a href="http://www.youtx.com/xiamen/" target="_blank">厦门短租/日租</a><a href="http://www.youtx.com/xian/" target="_blank">西安短租/日租</a><a href="http://www.youtx.com/xianggang/" target="_blank">香港短租/日租</a>
                                </div>
                            </div>
                            <div class="CityTit">
                                国内短租：
                            </div>
                            <div class="CityTxtBtn">
                                +展开
                            </div>
                        </li>
                        <li class="clearfix">
                            <div class="W FL">
                                <div class="CityTxt">
                                    <a href="http://www.youtx.com/paris/">巴黎住宿</a><a href="http://www.youtx.com/barcelona/">巴塞罗那住宿</a><a href="http://www.youtx.com/losangeles/">洛杉矶住宿</a><a href="http://www.youtx.com/milan/">米兰住宿</a><a href="http://www.youtx.com/madrid/">马德里住宿</a><a href="http://www.youtx.com/newyork/">纽约住宿</a><a href="http://www.youtx.com/venice/">威尼斯住宿</a><a href="http://www.youtx.com/singapore/">新加坡住宿</a>
                                </div>
                            </div>
                            <div class="CityTit">
                                海外住宿：
                            </div>
                            <div class="CityTxtBtn">
                                +展开
                            </div>
                        </li>



                        <!--友情链接begin-->
                        <li class="clearfix">
                            <div class="W FL">
                                <div class="CityTxt"><a href="http://www.cntour365.com/" target="_blank">沈阳旅行社</a><a href="http://www.youtx.com" target="_blank">日租房</a><a href="http://world.fang.com/" target="_blank">海外房产</a><a href="http://www.youtx.com" target="_blank">短租房</a><a href="http://www.becod.com" target="_blank">百酷旅店预订</a><a href="http://www.beibaotu.com/" target="_blank">背包兔自助游</a><a href="http://www.5fen.com/" target="_blank">五分旅游网</a><a href="http://www.51yougo.com/" target="_blank">游够自助游</a><a href="http://www.517huwai.com" target="_blank">517旅行</a><a href="http://www.taiwandao.tw/" target="_blank">台湾旅游</a><a href="http://www.rzfdc.com/" target="_blank">日照房产</a><a href="http://www.pintour.com/" target="_blank">驴友网</a><a href="http://www.xjtour.com/" target="_blank">新疆旅游</a><a href="http://www.zglxw.com/" target="_blank">北京中国国旅</a><a href="http://www.tripc.net" target="_blank">网上旅行社</a><a href="http://news.gaotie.cn" target="_blank">中国铁路</a><a href="http://www.zhifang.com/" target="_blank">旅游地产</a><a href="http://hz.focus.cn/" target="_blank">杭州房产</a><a href="http://www.57tuan.com/" target="_blank">团购</a><a href="http://www.114piaowu.com" target="_blank">火车票</a><a href="http://www.ceramicschina.com/" target="_blank">瓷砖</a><a href="http://www.cct.cn/" target="_blank">康辉旅游网</a></div>
                            </div>
                            <div class="CityTit">友情链接：</div>
                            <div class="CityTxtBtn">+展开</div>
                        </li>
                        <!--友情链接end-->

                    </ul>
                </div>

                <div class="footer_link" id="youtx_B07_06">
                    <a rel="nofollow" target="_blank" href="http://www.youtx.com/help/about/">关于我们</a>|<a rel="nofollow" target="_blank" href="http://www.youtx.com/help/contact/">联系我们</a>|<a target="_blank" href="http://www.youtx.com/help/links/">友情链接</a>|<a rel="nofollow" target="_blank" href="http://www.youtx.com/help/jobs/">招聘</a>|<a rel="nofollow" target="_blank" href="http://www.youtx.com/help/service/">服务协议</a>|<a id="youtx_34" rel="nofollow" target="_blank" href="http://www.youtx.com/feedback/">意见反馈</a>|<a rel="nofollow" target="_blank" href="/downloadshortcut/" class="appYtx">下载桌面游天下</a>|<a rel="nofollow" target="_blank" href="/mo/">手机游天下</a>|<a rel="nofollow" target="_blank" href="http://www.youtx.com/star/">明星房东</a>|<a target="_blank" href="http://www.youtx.com/">日租房</a>|<a href="http://blog.youtx.com/" target="_blank" rel="nofollow">博客</a>|<a rel="nofollow" target="_blank" href="http://www.youtx.com/jifen/exchange/">积分换礼</a>|<a rel="nofollow" target="_blank" href="http://www.youtx.com/Profile/cps/cpsapply.aspx">CPS加盟</a>|<a href="http://www.youtx.com/publish/StarUser/LandlordCruit.aspx" target="_blank" rel="nofollow">房东招募</a>
                </div>
                <div class="FooterDec">
                    <span class="clearfix"><span class="FooterDecSpan">Copyright &copy; 2017 Youtx.com, All Rights Reserved<br />
                        <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010602010093" target="_blank">京公网安备11010602010093号-2</a><a rel="nofollow" target="_blank" href="http://js.youtx.com/icp.jpg">京ICP证041065号</a>
                    </span><a class="Dec" rel="nofollow" href="https://trustsealinfo.verisign.com/splash?form_file=fdf%2Fsplash.fdf&amp;sap=&amp;dn=passport.youtx.com&amp;zoneoff=&amp;lang=zh_CN" target="_blank">
                        <img width="60" height="35" src="../images/verisignyoutx.gif"></a>
                        <a class="Dec" target="_blank" rel="nofollow" href="https://www.itrust.org.cn/yz/pjwx.asp?wm=1766253730">
                            <img src="../images/footernetpic.gif"></a> <a class="Dec" rel="nofollow" href="https://ss.knet.cn/verifyseal.dll?sn=e12032211010015160307708&amp;ct=df&amp;pa=318891" target="_blank">
                                <img width="100" height="35" src="../images/trustyoutx.gif"></a>
                        <a class="Dec" rel="nofollow" href="http://www.hd315.gov.cn/beian/view.asp?bianhao=010202012082400507" target="_blank">
                            <img src="../images/gsbs.gif" width="100" height="36"></a> </span>
                </div>


            </div>
            <!--右边悬浮框suspension-->
          






            <script type="text/javascript" src="../js/jquery-ui-1.8.14.custom.min.js"></script>

            <script type="text/javascript" src="../js/jquery.ui.datepicker-zh.min.js"></script>

            <script type="text/javascript" src="../js/dateformat.js"></script>

            <script type="text/javascript" src="../js/youtx.utility2016.js"></script>

            <script type="text/javascript" src="../js/default_indexpage2016.js"></script>

            <script type="text/javascript" src="../js/default_searchfordefault2016.js"></script>



            <script type="text/javascript" src="../js/default_login2016.js"></script>

            <script type="text/javascript" charset="utf-8" src="../js/youtxindex2016.js"></script>

            <script type="text/javascript">

                $(document).ready(function () {
                    //YtxDefault.app.DropDown();  //登陆域导航下拉菜单
                    YtxDefault.app.FocusPicture();  //焦点图
                    //YtxDefault.app.pullDown();  //表单-模拟下拉
                    YtxDefault.app.unfold(); //页底展开、隐藏
                    //YtxDefault.app.TwoDim(); //头部手机客户端(延时显示)
                    // YtxDefault.app.TwoDimFooter(); //底部微信二维码    2014-7-15修改


                    var user_last_name = '<%= Session["user_last_name"] %>';
                    var user_first_name = '<%= Session["user_first_name"] %>';
                    if (user_last_name == "" || user_first_name == "") {

                    }
                    else {
                        $(function () {
                            $("#youtxlogin").css("display", "block");
                            $("#youtxloginw").css("display", "none");
                            $(".drop").html(user_first_name + user_last_name);
                        })
                    }


                    if ($('#startDate').val() != '') {
                        $('#checkin').val($('#startDate').val());
                    }
                    if ($('#endDate').val() != '') {
                        $('#checkout').val($('#endDate').val());
                    }

                })

                $('#logout').click(function () {

                    $("#youtxlogin").css("display", "none");
                    $("#youtxloginw").css("display", "block");


                });








            </script>

            <!--webim开始 -->
            <script src="../js/youtx_webim_html.js" type="text/javascript"></script>
            <!--webim结束 -->
            <script type="text/javascript" src="../js/click2011.js"></script>
            <script type="text/javascript">    Clickstat.eventAdd(window, 'load', function (e) { Clickstat.batchEvent('youtx_', ''); });</script>
</body>
</html>

