<%@ Page Language="C#" AutoEventWireup="true" CodeFile="house_1.aspx.cs" Inherits="place_house_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>西溪湿地山顶派对别墅轰趴_杭州余杭区闲林短租房_乐安居
    
    </title>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=cCGNtH14W4Uq9hkABUnM4dWpcqC68nZ8"></script>
    <link href="../css/youtxpublic2016.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../css/youtxindex2016.css" />

    <link href="../css/demo.css" rel="stylesheet" />
    <link href="../css/icon.css" rel="stylesheet" />
    <link href="../css/easyui.css" rel="stylesheet" />
    <script src="../js/jquery.min.js"></script>
    <script src="../js/jquery.easyui.min.js"></script>
    <link href="http://js.youtx.com/publish/styles/youtx-details2016.css?v=201704211100a2jjjjiiuejr963258741"
        rel="stylesheet" type="text/css" />






</head>
</html>

<body>
    <div class="wrap">


        <script type="text/javascript">
            var WRInitTime = (new Date()).getTime();
        </script>

        <div class="header clearfix">
            <a id="youtx_C01_01" class="youtxLogo" href="/">
                <img src="http://js.youtx.com/images/default2016/youtxLogo.png" width="118" height="62" alt="游天下logo" /></a>
            <ul class="headerNav clearfix" id="headerNav" style="width: 580px;">
                <li class="active"><a id="youtx_C01_02" href="/" target="_blank">首页</a></li>
                <a target="_blank" class="dropDownTrigger" id="NameA"><%=Session["user_first_name"]%><%=Session["user_last_name"]%></a>
                <a href="../index.aspx">退出</a>


            </ul>






        </div>


        

        <div class="youtx-details">

            <div class="youtx-details-wrapper">


                <div class="youtx-details-content">

                    <!--content section-1-->
                    <div class="dsection-1">


                        <div class="top">
                            <div class="sec-1 clearfix">
                                <h2>西溪湿地山顶派对别墅轰趴</h2>
                                <label style="margin-left: 40px">房东：罗成</label>&nbsp&nbsp&nbsp&nbsp<label>房间编号：001</label>
                            </div>


                        </div>
                        <div class="dpic clearfix">

                            <ul class="dbigpic">
                                <li class="active">
                                    <div></div>

                                    <b>
                                        <img id="Pic_big" src="http://img.youtx.com/viewimage/duanzu/2015_12/22/16/74/55/houseinfo/407326804600/640x480c.jpg" alt=""></b></li>
                            </ul>
                            <!--小图-->
                            <div class="dsmallpic">
                                <a href="javascript:;" class="dtop" id="youtxxq_B06_03"><span></span></a>
                                <a href="javascript:;" class="dbottom" id="youtxxq_B06_04"><span></span></a>
                                <ul>

                                    <li class='active'><span></span>





                                        <img src="http://img.youtx.com/viewimage/duanzu/2015_12/22/16/23/0/houseinfo/407326888300/140x88c.jpg" alt="" picdesc="外景" pictype=""></li>

                                    <li><span></span>




                                        <img src="http://img.youtx.com/viewimage/duanzu/2015_11/27/14/24/60/houseinfo/400744494400/140x88c.jpg" alt="" picdesc="客厅" pictype=""></li>

                                    <li><span></span>




                                        <img src="http://img.youtx.com/viewimage/duanzu/2015_11/27/14/75/34/houseinfo/400741653100/140x88c.jpg" alt="" picdesc="客厅" pictype=""></li>

                                    <li><span></span>




                                        <img src="http://img.youtx.com/viewimage/duanzu/2015_11/27/14/16/74/houseinfo/400740997000/140x88c.jpg" alt="" picdesc="餐厅" pictype=""></li>

                                    <li><span></span>




                                        <img src="http://img.youtx.com/viewimage/duanzu/2015_11/27/14/88/0/houseinfo/400740374900/140x88c.jpg" alt="" picdesc="卧室一" pictype=""></li>

                                    <li><span></span>




                                        <img src="http://img.youtx.com/viewimage/duanzu/2015_11/27/14/86/23/houseinfo/400744557600/140x88c.jpg" alt="" picdesc="卧室一" pictype=""></li>

                                    <li><span></span>




                                        <img src="http://img.youtx.com/viewimage/duanzu/2015_11/27/14/41/24/houseinfo/400739611400/140x88c.jpg" alt="" picdesc="卧室二" pictype=""></li>

                                    <li><span></span>
                                </ul>
                            </div>
                        </div>
                        <!--特色标签-->
                        <!--房间特色标签-->

                        <ul class="dpictags clearfix">

                            <li>山景</li>

                            <li>聚会</li>

                            <li>欧式</li>

                        </ul>

                        <!--特色标签end-->
                    </div>

               
                      <!--地图-->
                    <!--地图-->
                   <div style=" margin-top:20px; width:830px;height:550px;border:#ccc solid 1px;font-size:12px" id="map"></div>
                    <!--地图end-->
                    
                    <!--地图end-->


                    <div class="dsection-5">

                        <div class="housetap clearfix">
                            <a href="javascript:void(0);" class="thishousetap active" id="youtxxq_B02_21" onclick="qiehuan3('youtxxq_B02_21',1)">本房间的评价（6）</a>
                            <a href="javascript:void(0);" class="otherhousetap" id="youtxxq_B02_25" onclick="qiehuan3('youtxxq_B02_25',2)">房东其他房间的评价 <span id="othercomments_b">（0）</span></a>
                        </div>

                        <div id="commentzhengti">
                            <h2 class="clearfix">
                                <div class="leftstars">
                                    <p>5.0<span>/5.0</span></p>
                                    <div class="bigStars fiveStar"></div>
                                </div>
                                <ul class="righttags clearfix">
                                    <li><span>符合描述</span><i>5.0</i></li>
                                    <li><span>沟通愉悦</span><i>5.0</i></li>
                                    <li><span>整洁程度</span><i>5.0</i></li>
                                    <li><span>周边环境</span><i>5.0</i></li>
                                    <li><span>入住顺畅</span><i>5.0</i></li>
                                    <li><span>物有所值</span><i>5.0</i></li>
                                </ul>
                            </h2>
                        </div>

                        <div class="thishouseshow" id="comment1">
                            <div class="pagebox">
                                <div class="evaluate" id="comment1_div">
                                    、
                
                <!--租客评价-->

                                    <div class="perhouserecom clearfix">
                                        <h6>
                                            <a href="http://www.youtx.com/user/show/2505624" target="_blank">
                                                <img src="http://js.youtx.com/images/pic-68x68.jpg" width="80" height="80" alt="" /></a>
                                            <p>
                                                <a href="http://www.youtx.com/user/show/2505624" target="_blank">X哥哥</a>
                                            </p>
                                        </h6>

                                    </div>

                                </div>

                            </div>
                        </div>

                        <div class="otherhouseshow" id="anthercomment1" style="display: none;">
                            <div class="pagebox">
                                <div class="evaluate" id="anthercomment1_div"></div>
                            </div>
                        </div>
                        <!--div_Pager-->
                        <div id="youtxxq_B02_47">

                            <div id="comment_page" class="pagego">
                            </div>
                            <!--2012-1-18评论"解释"切换-结束-->
                            <div id="anthercomment_page" class="pagego" style="display: none">
                            </div>
                        </div>
                    </div>

                    <!--房间评价部分end-->
                    <!--====================================主体右侧信息=================================-->
                    <div class="contentpos">
                        <!--右侧1-->
                        <div class="part-one">
                            <!--单间出租-->
                            <ul class="single">
                                <li class="singletwo active"><span></span>
                                    <p>整套出租</p>
                                </li>

                            </ul>
                            <!--4居-->
                            <div class="sec">
                                <span></span>
                                <p>
                                    <label id="count"></label><label>居</label>

                                </p>
                                
                            </div>
                            <!--宜住4人-->
                            <div class="third">
                                <span></span>
                                <p><label>宜居住</label><label id="pcount"></label><label>人</label></p>
                            </div>
                            <!--1套-->
                            <div class="fourth">
                                <span></span>
                                <p><label id="total"></label><label>套</label></p>
                            </div>
                        </div>
                        <!--右侧1 end-->



                        <!--排期日历弹窗部分-->
                        <div class="Scheduling-box" style="width: 1877px; height: 334px;">
                        </div>

                        <div class="part-two">

                            <div class="price">


                                <p><em>￥</em><span id="Price"></span><i>/天</i></p>


                            </div>


                            <div class="date">
                                <div class="calendarall clearfix">
                                    <div style="margin-left: 40px;">
                                        <label>入住日期：</label>
                                        <input style="margin-left: 10px" id="dy" class="easyui-datebox">
                                    </div>
                                    <div style="margin-top: 10px; margin-left: 40px">
                                        <label>退房日期：</label>
                                        <input style="margin-left: 10px" id="de" class="easyui-datebox" onblur="get();">
                                    </div>
                                </div>


                            </div>
                            <div style="margin-left: 40px; margin-top: 20px">
                                <label>入住天数：&nbsp&nbsp&nbsp&nbsp</label>
                               
                                  <label id="days"></label>
                              
                                <label>天</label>

                            </div>

                            <input type="submit" value="立即预订" id="youtxxq_B02_16" class="clickbutton">
                            <div style="padding:20px;">diedewjfhuwe</div>
                        </div>



                        <label id="error" style="color: red"></label>
                    </div>





                </div>






            </div>
            <script type="text/javascript">
                function parseUrl() {
                    var url = location.href;
                    var i = url.indexOf('?');
                    if (i == -1) return;
                    var querystr = url.substr(i + 1);
                    var arr1 = querystr.split('&');
                    var arr2 = new Object();
                    for (i in arr1) {
                        var ta = arr1[i].split('=');
                        arr2[ta[0]] = ta[1];
                    }
                    return arr2;
                }
                var v = parseUrl();//解析所有参数
                //就是你要的结果
                var Hno = v['Hno'];
                function get() {
                    var Ostate;
                    var CurTime = new Date();
                    var Intime = $('#dy').datebox('getValue');
                    var startDate = new Date(Intime.replace(/\-/g, '/'));
                    var Outtime = $('#de').datebox('getValue');
                    var endDate = new Date(Outtime.replace(/\-/g, '/'));
                    var timeks = new Date(Intime);
                    var timejs = new Date(Outtime);
                    var timediff = (timejs - timeks) / (1000 * 60 * 60 * 24);
                    if (startDate > CurTime)
                    {
                        $('#error').html("入住时间不能早于今天。。。。");
                        $('#days').html('0');
                    }
                    else if (startDate > endDate) {
                        $('#error').html("入住时间不能大于退房时间。。。。");
                        $('#days').html('0');
                    }
                    else
                    {
                        $('#days').html(timediff);
                        Ostate = "待入住";
                        
                        $.ajax({
                            url: 'house_1.aspx?action=add',
                            type: 'GET', //GET
                            //async: true,    //或false,是否异步
                            data: {
                                Landlord: '罗成', Rno: '001', Intime: Intime, Outtime: Outtime, Price: 2388 * timediff, Ostate: Ostate
                            },
                            timeout: 5000,    //超时时间
                            dataType: 'json',    //返回的数据格式：json/xml/html/script/jsonp/text

                            success: function (data) {
                                if (data == '1') {
                                    $('#error').html("预定成功");
                                    //window.location.href = "index.aspx";

                                }
                                else {
                                    $('#error').html("预定失败");
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
                   
                var price;
                $(document).ready(function () {
                  
                    //var Intime = $('#dy').datebox('getValue');
                    //var startDate = new Date(Intime.replace(/\-/g, '/'));
                    //var Outtime = $('#de').datebox('getValue');
                    //var endDate = new Date(Outtime.replace(/\-/g, '/'));
                    //var timeks = new Date(Intime);
                    //var timejs = new Date(Outtime);
                    //var timediff = (timejs - timeks) / (1000 * 60 * 60 * 24);
                    //if (startDate < endDate) {
                    //  var TotalPrice = price * timediff;
                    //  $('#youtxxq_B02_16').val("闪订 （总计：" + '¥' + TotalPrice + "）");
                      
                    //    //butValue = "闪订 （总计：" + '¥' + TotalPrice + "）";

                    //}

                    $.ajax({

                        url: 'house_1.aspx?action=load&Hno='+Hno,
                        type: 'GET', //GET
                        //async: true,    //或false,是否异步

                        timeout: 5000,    //超时时间
                        dataType: 'text',    //返回的数据格式：json/xml/html/script/jsonp/text

                        success: function (data) {
                            var dataObj = eval("(" + data + ")");
                            price=dataObj.Price;
                            $('#count').html(dataObj.count);
                            $('#pcount').html(dataObj.pcount);
                            $('#total').html(dataObj.total);
                            $('#Price').html(dataObj.Price);

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

            <script type="text/javascript">
                //创建和初始化地图函数：
                function initMap() {
                    createMap();//创建地图
                    setMapEvent();//设置地图事件
                    addMapControl();//向地图添加控件
                    addMapOverlay();//向地图添加覆盖物
                }
                function createMap() {
                    map = new BMap.Map("map");
                    map.centerAndZoom(new BMap.Point(119.977823, 30.248588), 15);
                }
                function setMapEvent() {
                    map.enableScrollWheelZoom();
                    map.enableKeyboard();
                    map.enableDragging();
                    map.enableDoubleClickZoom()
                }
                function addClickHandler(target, window) {
                    target.addEventListener("click", function () {
                        target.openInfoWindow(window);
                    });
                }
                function addMapOverlay() {
                    var markers = [
                      { content: "我的备注", title: "杭州余杭区闲林金成.白云深处", imageOffset: { width: 0, height: 3 }, position: { lat: 39.943301, lng: 116.503294 } },
                      { content: "我的备注", title: "杭州余杭区闲林金成.白云深处", imageOffset: { width: 0, height: 3 }, position: { lat: 30.252332, lng: 119.980841 } }
                    ];
                    for (var index = 0; index < markers.length; index++) {
                        var point = new BMap.Point(markers[index].position.lng, markers[index].position.lat);
                        var marker = new BMap.Marker(point, {
                            icon: new BMap.Icon("http://api.map.baidu.com/lbsapi/createmap/images/icon.png", new BMap.Size(20, 25), {
                                imageOffset: new BMap.Size(markers[index].imageOffset.width, markers[index].imageOffset.height)
                            })
                        });
                        var label = new BMap.Label(markers[index].title, { offset: new BMap.Size(25, 5) });
                        var opts = {
                            width: 200,
                            title: markers[index].title,
                            enableMessage: false
                        };
                        var infoWindow = new BMap.InfoWindow(markers[index].content, opts);
                        marker.setLabel(label);
                        addClickHandler(marker, infoWindow);
                        map.addOverlay(marker);
                    };
                }
                //向地图添加控件
                function addMapControl() {
                    var scaleControl = new BMap.ScaleControl({ anchor: BMAP_ANCHOR_BOTTOM_LEFT });
                    scaleControl.setUnit(BMAP_UNIT_IMPERIAL);
                    map.addControl(scaleControl);
                    var navControl = new BMap.NavigationControl({ anchor: BMAP_ANCHOR_TOP_LEFT, type: BMAP_NAVIGATION_CONTROL_LARGE });
                    map.addControl(navControl);
                    var overviewControl = new BMap.OverviewMapControl({ anchor: BMAP_ANCHOR_BOTTOM_RIGHT, isOpen: true });
                    map.addControl(overviewControl);
                }
                var map;
                initMap();
	</script>

</body>
