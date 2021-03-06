﻿/*!
 * jQuery Raty - A Star Rating Plugin - http://wbotelhos.com/raty
 * ---------------------------------------------------------------------
 *
 * jQuery Raty is a plugin that generates a customizable star rating.
 *
 * Licensed under The MIT License
 *
 * @version        2.1.0
 * @since          2010.06.11
 * @author         Washington Botelho
 * @documentation  wbotelhos.com/raty
 * @twitter        twitter.com/wbotelhos
 *
 * Usage with default values:
 * ---------------------------------------------------------------------
 * $('#star').raty();
 *
 * <div id="star"></div>
 *
 * $('.star').raty();
 *
 * <div class="star"></div>
 * <div class="star"></div>
 * <div class="star"></div>
 *
 */

;(function($) {

	var methods = {
		init: function(options) {
			return this.each(function() {

				var opt		= $.extend({}, $.fn.raty.defaults, options),
					$this	= $(this).data('options', opt);

				if (opt.number > 20) {
					opt.number = 20;
				} else if (opt.number < 0) {
					opt.number = 0;
				}

				if (opt.round.down === undefined) {
					opt.round.down = $.fn.raty.defaults.round.down;
				}

				if (opt.round.full === undefined) {
					opt.round.full = $.fn.raty.defaults.round.full;
				}

				if (opt.round.up === undefined) {
					opt.round.up = $.fn.raty.defaults.round.up;
				}

				if (opt.path != "" && opt.path.substring(opt.path.length - 1, opt.path.length) != '/') {
					opt.path += '/';
				}

				if (typeof opt.start == 'function') {
					opt.start = opt.start.call(this);
				}

				var isValidStart	= !isNaN(parseInt(opt.start, 10)),
					start			= '';

				if (isValidStart) {
					start = (opt.start > opt.number) ? opt.number : opt.start;
				} 

				var starFile	= opt.starOn,
					space		= (opt.space) ? 4 : 0,
					hint		= '';

				for (var i = 1; i <= opt.number; i++) {
					starFile = (start < i) ? opt.starOff : opt.starOn;

					hint = (i <= opt.hintList.length && opt.hintList[i - 1] !== null) ? opt.hintList[i - 1] : i;

					$this.append('<img src="' + opt.path + starFile + '" alt="' + i + '" title="' + hint + '" />');

					if (opt.space) {
						$this.append((i < opt.number) ? '&nbsp;' : '');
					}
				}

				var $score = $('<input/>', { type: 'hidden', name: opt.scoreName, id:opt.scoreName}).appendTo($this);

				if (isValidStart) {
					if (opt.start > 0) {
						$score.val(start);
					}

					methods.roundStar.call($this, start);
				}

				if (opt.iconRange) {
					methods.fillStar.call($this, start);	
				}

				methods.setTarget.call($this, start, opt.targetKeep);

				//var width = opt.width || (opt.number * opt.size + opt.number * space);

				if (opt.cancel) {
					var $cancel = $('<img src="' + opt.path + opt.cancelOff + '" alt="x" title="' + opt.cancelHint + '" class="raty-cancel"/>');

					if (opt.cancelPlace == 'left') {
						$this.prepend('&nbsp;').prepend($cancel);
					} else {
						$this.append('&nbsp;').append($cancel);
					}

					//width += opt.size + space;
				}

				if (opt.readOnly) {
					methods.fixHint.call($this);

					$this.children('.raty-cancel').hide();
				} else {
					$this.css('cursor', 'pointer');

					methods.bindAction.call($this);
				}

				//$this.css('width', width);
			});
		}, bindAction: function() {
			var self	= this,
				opt		= this.data('options'),
				$score	= this.children('input');

			self.mouseleave(function() {
				methods.initialize.call(self, $score.val());

				methods.setTarget.call(self, $score.val(), opt.targetKeep);
			});

			var $stars	= this.children('img').not('.raty-cancel'),
				action	= (opt.half) ? 'mousemove' : 'mouseover';

			if (opt.cancel) {
				self.children('.raty-cancel').mouseenter(function() {
					$(this).attr('src', opt.path + opt.cancelOn);

					$stars.attr('src', opt.path + opt.starOff);

					methods.setTarget.call(self, null, true);
				}).mouseleave(function() {
					$(this).attr('src', opt.path + opt.cancelOff);

					self.mouseout();
				}).click(function(evt) {
					$score.removeAttr('value');

					if (opt.click) {
			          opt.click.call(self[0], null, evt);
			        }
				});
			}

			$stars.bind(action, function(evt) {
				var value = parseInt(this.alt, 10);

				if (opt.half) {
					var position	= parseFloat((evt.pageX - $(this).offset().left) / opt.size),
						diff		= (position > .5) ? 1 : .5;

					value = parseFloat(this.alt) - 1 + diff;

					methods.fillStar.call(self, value);

					if (opt.precision) {
						value = value - diff + position;
					}

					methods.showHalf.call(self, value);
				} else {
					methods.fillStar.call(self, value);
				}

				self.data('score', value);

				methods.setTarget.call(self, value, true);
			}).click(function(evt) {
				$score.val((opt.half || opt.precision) ? self.data('score') : this.alt);

				if (opt.click) {
					opt.click.call(self[0], $score.val(), evt);
				}
			});
		}, cancel: function(isClick) {
			return this.each(function() {
				var $this = $(this);

				if ($this.data('readonly') == 'readonly') {
					return false;
				}

				if (isClick) {
					methods.click.call($this, null);
				} else {
					methods.start.call($this, null);
				}

				$this.mouseleave().children('input').removeAttr('value');
			});
		}, click: function(score) {
			return this.each(function() {
				var $this = $(this);

				if ($this.data('readonly') == 'readonly') {
					return false;
				}

				methods.initialize.call($this, score);

				var opt = $this.data('options');

				if (opt.click) {
					opt.click.call($this[0], score);
				} else {
					$.error('you must add the "click: function(score, evt) { }" callback.');
				}

				methods.setTarget.call($this, score, true);
			});
		}, fillStar: function(score) {
			var opt		= this.data('options'),
				$stars	= this.children('img').not('.raty-cancel'),
				qtyStar	= $stars.length,
				count	= 0,
				$star	,
				star	,
				icon	;

			for (var i = 1; i <= qtyStar; i++) {
				$star = $stars.eq(i - 1);

				if (opt.iconRange && opt.iconRange.length > count) {
					star = opt.iconRange[count];

					if (opt.single) {
						icon = (i == score) ? (star.on || opt.starOn) : (star.off || opt.starOff);
					} else {
						icon = (i <= score) ? (star.on || opt.starOn) : (star.off || opt.starOff);
					}

					if (i <= star.range) {
						$star.attr('src', opt.path + icon);
					}

					if (i == star.range) {
						count++;
					}
				} else {
					if (opt.single) {
						icon = (i == score) ? opt.starOn : opt.starOff;
					} else {
						icon = (i <= score) ? opt.starOn : opt.starOff;
					}

					$star.attr('src', opt.path + icon);
				}
			}
		}, fixHint: function() {
			var opt		= this.data('options'),
				$score	= this.children('input'),
				score	= parseInt($score.val(), 10),
				hint	= opt.noRatedMsg;

			if (!isNaN(score) && score > 0) {
				hint = (score <= opt.hintList.length && opt.hintList[score - 1] !== null) ? opt.hintList[score - 1] : score;
			}

			$score.attr('readonly', 'readonly');
			this.css('cursor', 'default').data('readonly', 'readonly').attr('title', hint).children('img').attr('title', hint);
		}, readOnly: function(isReadOnly) {
			return this.each(function() {
				var $this	= $(this),
					$cancel	= $this.children('.raty-cancel');

				if ($cancel.length) {
					if (isReadOnly) {
						$cancel.hide();
					} else {
						$cancel.show();
					}
				}

				if (isReadOnly) {
					$this.unbind();

					$this.children('img').unbind();

					methods.fixHint.call($this);
				} else {
					methods.bindAction.call($this);

					methods.unfixHint.call($this);
				}
			});
		}, roundStar: function(score) {
			var opt		= this.data('options'),
				diff	= (score - Math.floor(score)).toFixed(2);

			if (diff > opt.round.down) {
				var icon = opt.starOn;						// Full up: [x.76 .. x.99]

				if (diff < opt.round.up && opt.halfShow) {	// Half: [x.26 .. x.75]
					icon = opt.starHalf;
				} else if (diff < opt.round.full) {			// Full down: [x.00 .. x.5]
					icon = opt.starOff;
				}

				this.children('img').not('.raty-cancel').eq(Math.ceil(score) - 1).attr('src', opt.path + icon);
			}												// Full down: [x.00 .. x.25]
		}, score: function() {
			var score	= [],
				value	;

			this.each(function() {
				value = $(this).children('input').val();
				value = (value == '') ? null : parseFloat(value);

				score.push(value);
			});

			return (score.length > 1) ? score : score[0];
		}, setTarget: function(value, isKeep) {
			var opt = this.data('options');

			if (opt.target) {
				var $target = $(opt.target);

				if ($target.length == 0) {
					$.error('target selector invalid or missing!');
				} else {
					var score = value;

					if (score == null && !opt.cancel) {
						$.error('you must enable the "cancel" option to set hint on target.');
					} else {
						if (!isKeep || score == '') {
							score = opt.targetText;
						} else {
							if (opt.targetType == 'hint') {
								if (score === null && opt.cancel) {
									score = opt.cancelHint;
								} else {
									score = opt.hintList[Math.ceil(score - 1)];
								}
							} else {
								if (score != '' && !opt.precision) {
									score = parseInt(score, 10);
								} else {
									score = parseFloat(score).toFixed(1);
								}
							}
						}

						if (opt.targetFormat.indexOf('{score}') < 0) {
							$.error('template "{score}" missing!');
						} else if (value !== null) {
							score = opt.targetFormat.toString().replace('{score}', score);
						}

						if ($target.is(':input')) {
							$target.val(score);
						} else {
							$target.html(score);
						}
					}
				}
			}
		}, showHalf: function(score) {
			var opt		= this.data('options'),
				diff	= (score - Math.floor(score)).toFixed(1);

			if (diff > 0 && diff < .6) {
				this.children('img').not('.raty-cancel').eq(Math.ceil(score) - 1).attr('src', opt.path + opt.starHalf);
			}
		}, start: function(score) {
			return this.each(function() {
				var $this = $(this);

				if ($this.data('readonly') == 'readonly') {
					return false;
				}

				methods.initialize.call($this, score);

				var opt = $this.data('options');

				methods.setTarget.call($this, score, true);
			});
		}, initialize: function(score) {
			var opt	= this.data('options');

			if (score < 0) {
				score = 0;
			} else if (score > opt.number) {
				score = opt.number;
			}

			methods.fillStar.call(this, score);

			if (score != '') {
				if (opt.halfShow) {
					methods.roundStar.call(this, score);
				}

				this.children('input').val(score);
			}
		}, unfixHint: function() {
			var opt		= this.data('options'),
				$imgs	= this.children('img').filter(':not(.raty-cancel)');

			for (var i = 0; i < opt.number; i++) {
				$imgs.eq(i).attr('title', (i < opt.hintList.length && opt.hintList[i] !== null) ? opt.hintList[i] : i);
			}

			this.css('cursor', 'pointer').removeData('readonly').removeAttr('title').children('input').attr('readonly', 'readonly');
		}
	};

	$.fn.raty = function(method) {
		if (methods[method]) {
			return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
		} else if (typeof method === 'object' || !method) {
			return methods.init.apply(this, arguments);
		} else {
			$.error('Method ' + method + ' does not exist!');
		} 
	};

	$.fn.raty.defaults = {
		cancel:			false,
		cancelHint:		'cancel this rating!',
		cancelOff:		'cancel-off.png',
		cancelOn:		'cancel-on.png',
		cancelPlace:	'left',
		click:			undefined,
		half:			false,
		halfShow:		true,
		hintList:		['bad', 'poor', 'regular', 'good', 'gorgeous'],
		iconRange:		undefined,
		noRatedMsg:		'暂时还没有评分',
		number:			5,
		path:			'img/',
		precision:		false,
		round:			{ down: .25, full: .6, up: .76 },
		readOnly:		false,
		scoreName:		'score',
		single:			false,
		size:			16,
		space:			true,
		starHalf:		'star-half.png',
		starOff:		'star-off.png',
		starOn:			'star-on.png',
		start:			0,
		target:			undefined,
		targetFormat:	'{score}',
		targetKeep:		false,
		targetText:		'',
		targetType:		'hint'
	//	width:			undefined
	};

})(jQuery);

/*!
 * jquery-powerFloat.js
 * jQuery 万能浮动层插件
 * http://www.zhangxinxu.com/wordpress/?p=1328
 * © by zhangxinxu  
 * 2010-12-06 v1.0.0	插件编写，初步调试
 * 2010-12-30 v1.0.1	限定尖角字符字体，避免受浏览器自定义字体干扰
 * 2011-01-03 v1.1.0	修复连续获得焦点显示后又隐藏的bug
 						修复图片加载正则判断不准确的问题
 * 2011-02-15 v1.1.1	关于居中对齐位置判断的特殊处理
 * 2011-04-15 v1.2.0	修复浮动层含有过高select框在IE下点击会隐藏浮动层的问题，同时优化事件绑定			
 * 2011-09-13 v1.3.0 	修复两个菜单hover时间间隔过短隐藏回调不执行的问题
 * 2012-01-13 v1.4.0	去除ajax加载的存储
                    	修复之前按照ajax地址后缀判断是否图片的问题
						修复一些脚本运行出错
						修复hover延时显示时，元素没有显示但鼠标移出依然触发隐藏回调的问题
 * 2012-02-27 v1.5.0	为无id容器创建id逻辑使用错误的问题
 						修复无事件浮动出现时同页面点击空白区域浮动层不隐藏的问题
						修复点击与hover并存时特定时候o.trigger报为null错误的问题
 * 2012-03-29 v1.5.1	修复连续hover时候后面一个不触发显示的问题
 * 2012-05-02 v1.5.2	点击事件 浮动框再次点击隐藏的问题修复
 * 2012-11-02 v1.6.0	兼容jQuery 1.8.2
 * 2012-01-28 v1.6.1	target参数支持funtion类型，以实现类似动态Ajax地址功能
 */

(function ($) {
    $.fn.powerFloat = function (options) {
        return $(this).each(function () {
            var s = $.extend({}, defaults, options || {});
            var init = function (pms, trigger) {
                if (o.target && o.target.css("display") !== "none") {
                    o.targetHide();
                }
                o.s = pms;
                o.trigger = trigger;
            }, hoverTimer;

            switch (s.eventType) {
                case "hover": {
                    $(this).hover(function () {
                        if (o.timerHold) {
                            o.flagDisplay = true;
                        }

                        var numShowDelay = parseInt(s.showDelay, 10);

                        init(s, $(this));
                        //鼠标hover延时
                        if (numShowDelay) {
                            if (hoverTimer) {
                                clearTimeout(hoverTimer);
                            }
                            hoverTimer = setTimeout(function () {
                                o.targetGet.call(o);
                            }, numShowDelay);
                        } else {
                            o.targetGet();
                        }
                    }, function () {
                        if (hoverTimer) {
                            clearTimeout(hoverTimer);
                        }
                        if (o.timerHold) {
                            clearTimeout(o.timerHold);
                        }

                        o.flagDisplay = false;

                        o.targetHold();
                    });
                    if (s.hoverFollow) {
                        //鼠标跟随	
                        $(this).mousemove(function (e) {
                            o.cacheData.left = e.pageX;
                            o.cacheData.top = e.pageY;
                            o.targetGet.call(o);
                            return false;
                        });
                    }
                    break;
                }
                case "degHover": {
                    $(this).on("mouseover", s.degElem,function (ev) {
                        if (o.timerHold) {
                            o.flagDisplay = true;
                        }
                        var numShowDelay = parseInt(s.showDelay, 10);
                        init(s, $(this));
                        if (numShowDelay) {
                            if (hoverTimer) {
                                clearTimeout(hoverTimer);
                            }
                            hoverTimer = setTimeout(function () {
                                o.targetGet.call(o);
                            }, numShowDelay);
                        } else {
                            o.targetGet();
                        }
                    });

                    $(this).on("mouseout",s.degElem, function () {
                        if (hoverTimer) {
                            clearTimeout(hoverTimer);
                        }
                        if (o.timerHold) {
                            clearTimeout(o.timerHold);
                        }

                        o.flagDisplay = false;

                        o.targetHold();
                    });
                    break;
                }
                case "click": {
                    $(this).click(function (e) {
                        if (o.display && o.trigger && e.target === o.trigger.get(0)) {
                            o.flagDisplay = false;
                            o.displayDetect();
                        } else {
                            init(s, $(this));
                            o.targetGet();

                            if (!$(document).data("mouseupBind")) {
                                $(document).bind("mouseup", function (e) {
                                    var flag = false;
                                    if (o.trigger) {
                                        var idTarget = o.target.attr("id");
                                        if (!idTarget) {
                                            idTarget = "R_" + Math.random();
                                            o.target.attr("id", idTarget);
                                        }
                                        $(e.target).parents().each(function () {
                                            if ($(this).attr("id") === idTarget) {
                                                flag = true;
                                            }
                                        });
                                        if (s.eventType === "click" && o.display && e.target != o.trigger.get(0) && !flag) {
                                            o.flagDisplay = false;
                                            o.displayDetect();
                                        }
                                    }
                                    return false;
                                }).data("mouseupBind", true);
                            }
                        }
                    });

                    break;
                }
                case "focus": {
                    $(this).focus(function () {
                        var self = $(this);
                        setTimeout(function () {
                            init(s, self);
                            o.targetGet();
                        }, 200);
                    }).blur(function () {
                        o.flagDisplay = false;
                        setTimeout(function () {
                            o.displayDetect();
                        }, 190);
                    });
                    break;
                }
                case "custom":
                    {
                        this.showpl = function () {

                            var self = $(this);
                            setTimeout(function () {
                                init(s, self);
                                o.targetGet();
                            }, 200);
                        };

                        this.hidepl = function () {
                            o.flagDisplay = false;
                            setTimeout(function () {
                                o.displayDetect();
                            }, 190);
                        };

                        this.clear = function () {
                            this.showpl = function () { };
                            this.hidepl = function () { };
                        }

                        break;
                    }

                default: {
                    init(s, $(this));
                    o.targetGet();
                    // 放置页面点击后显示的浮动内容隐掉
                    $(document).unbind("mouseup").data("mouseupBind", false);
                }
            }
        });
    };

    var o = {
        targetGet: function () {
            //一切显示的触发来源
            if (!this.trigger) { return this; }
            var attr = this.trigger.attr(this.s.targetAttr), target = typeof this.s.target == "function" ? this.s.target.call(this.trigger) : this.s.target;

            switch (this.s.targetMode) {
                case "common": {
                    if (target) {
                        var type = typeof (target);
                        if (type === "object") {
                            if (target.size()) {
                                o.target = target.eq(0);
                            }
                        } else if (type === "string") {
                            if ($(target).size()) {
                                o.target = $(target).eq(0);
                            }
                        }
                    } else {
                        if (attr && $("#" + attr).size()) {
                            o.target = $("#" + attr);
                        }
                    }
                    if (o.target) {
                        o.targetShow();
                    } else {
                        return this;
                    }

                    break;
                }
                case "ajax": {
                    //ajax元素，如图片，页面地址
                    var url = target || attr;
                    this.targetProtect = false;

                    if (!url) { return; }

                    if (!o.cacheData[url]) {
                        o.loading();
                    }

                    //优先认定为图片加载
                    var tempImage = new Image();

                    tempImage.onload = function () {
                        var w = tempImage.width, h = tempImage.height;
                        var winw = $(window).width(), winh = $(window).height();
                        var imgScale = w / h, winScale = winw / winh;
                        if (imgScale > winScale) {
                            //图片的宽高比大于显示屏幕
                            if (w > winw / 2) {
                                w = winw / 2;
                                h = w / imgScale;
                            }
                        } else {
                            //图片高度较高
                            if (h > winh / 2) {
                                h = winh / 2;
                                w = h * imgScale;
                            }
                        }
                        var imgHtml = '<img class="float_ajax_image" src="' + url + '" width="' + w + '" height = "' + h + '" />';
                        o.cacheData[url] = true;
                        o.target = $(imgHtml);
                        o.targetShow();
                    };
                    tempImage.onerror = function () {
                        //如果图片加载失败，两种可能，一是100%图片，则提示；否则作为页面加载
                        if (/(\.jpg|\.png|\.gif|\.bmp|\.jpeg)$/i.test(url)) {
                            o.target = $('<div class="float_ajax_error">图片加载失败。</div>');
                            o.targetShow();
                        } else {
                            $.ajax({
                                url: url,
                                success: function (data) {
                                    if (typeof (data) === "string") {
                                        o.cacheData[url] = true;
                                        o.target = $('<div class="float_ajax_data">' + data + '</div>');
                                        o.targetShow();
                                    }
                                },
                                error: function () {
                                    o.target = $('<div class="float_ajax_error">数据没有加载成功。</div>');
                                    o.targetShow();
                                }
                            });
                        }
                    };
                    tempImage.src = url;

                    break;
                }
                case "list": {
                    //下拉列表
                    var targetHtml = '<ul class="float_list_ul">', arrLength;
                    if ($.isArray(target) && (arrLength = target.length)) {
                        $.each(target, function (i, obj) {
                            var list = "", strClass = "", text, href;
                            if (i === 0) {
                                strClass = ' class="float_list_li_first"';
                            }
                            if (i === arrLength - 1) {
                                strClass = ' class="float_list_li_last"';
                            }
                            if (typeof (obj) === "object" && (text = obj.text.toString())) {
                                if (href = (obj.href || "javascript:")) {
                                    list = '<a href="' + href + '" class="float_list_a">' + text + '</a>';
                                } else {
                                    list = text;
                                }
                            } else if (typeof (obj) === "string" && obj) {
                                list = obj;
                            }
                            if (list) {
                                targetHtml += '<li' + strClass + '>' + list + '</li>';
                            }
                        });
                    } else {
                        targetHtml += '<li class="float_list_null">列表无数据。</li>';
                    }
                    targetHtml += '</ul>';
                    o.target = $(targetHtml);
                    this.targetProtect = false;
                    o.targetShow();
                    break;
                }
                case "remind": {
                    //内容均是字符串
                    var strRemind = target || attr;
                    this.targetProtect = false;
                    if (typeof (strRemind) === "string") {
                        o.target = $('<span>' + strRemind + '</span>');
                        o.targetShow();
                    }
                    break;
                }
                default: {
                    var objOther = target || attr, type = typeof (objOther);
                    if (objOther) {
                        if (type === "string") {
                            //选择器
                            if (/^.[^:#\[\.,]*$/.test(objOther)) {
                                if ($(objOther).size()) {
                                    o.target = $(objOther).eq(0);
                                    this.targetProtect = true;
                                } else if ($("#" + objOther).size()) {
                                    o.target = $("#" + objOther).eq(0);
                                    this.targetProtect = true;
                                } else {
                                    o.target = $('<div>' + objOther + '</div>');
                                    this.targetProtect = false;
                                }
                            } else {
                                o.target = $('<div>' + objOther + '</div>');
                                this.targetProtect = false;
                            }

                            o.targetShow();
                        } else if (type === "object") {
                            if (!$.isArray(objOther) && objOther.size()) {
                                o.target = objOther.eq(0);
                                this.targetProtect = true;
                                o.targetShow();
                            }
                        }
                    }
                }
            }
            return this;
        },
        container: function () {
            //容器(如果有)重装target
            var cont = this.s.container, mode = this.s.targetMode || "mode";
            if (mode === "ajax" || mode === "remind") {
                //显示三角
                this.s.sharpAngle = true;
            } else {
                this.s.sharpAngle = false;
            }
            //是否反向
            if (this.s.reverseSharp) {
                this.s.sharpAngle = !this.s.sharpAngle;
            }

            if (mode !== "common") {
                //common模式无新容器装载
                if (cont === null) {
                    cont = "plugin";
                }
                if (cont === "plugin") {
                    if (!$("#floatBox_" + mode).size()) {
                        $('<div id="floatBox_' + mode + '" class="float_' + mode + '_box"></div>').appendTo($("body")).hide();
                    }
                    cont = $("#floatBox_" + mode);
                }

                if (cont && typeof (cont) !== "string" && cont.size()) {
                    if (this.targetProtect) {
                        o.target.show().css("position", "static");
                    }
                    o.target = cont.empty().append(o.target);
                }
            }
            return this;
        },
        setWidth: function () {
            var w = this.s.width;
            if (w === "auto") {
                if (this.target.get(0).style.width) {
                    this.target.css("width", "auto");
                }
            } else if (w === "inherit") {
                this.target.width(this.trigger.width());
            } else {
                this.target.css("width", w);
            }
            return this;
        },
        position: function () {
            if (!this.trigger || !this.target) {
                return this;
            }
            var pos, tri_h = 0, tri_w = 0, cor_w = 0, cor_h = 0, tri_l, tri_t, tar_l, tar_t, cor_l, cor_t,
				tar_h = this.target.data("height"), tar_w = this.target.data("width"),
				st = $(window).scrollTop(),

				off_x = parseInt(this.s.offsets.x, 10) || 0, off_y = parseInt(this.s.offsets.y, 10) || 0,
				mousePos = this.cacheData;
            //缓存目标对象高度，宽度，提高鼠标跟随时显示性能，元素隐藏时缓存清除
            if (!tar_h) {
                tar_h = this.target.outerHeight();
                if (this.s.hoverFollow) {
                    this.target.data("height", tar_h);
                }
            }
            if (!tar_w) {
                tar_w = this.target.outerWidth();
                if (this.s.hoverFollow) {
                    this.target.data("width", tar_w);
                }
            }

            pos = this.trigger.offset();
            tri_h = this.trigger.outerHeight();
            tri_w = this.trigger.outerWidth();
            tri_l = pos.left;
            tri_t = pos.top;

            var funMouseL = function () {
                if (tri_l < 0) {
                    tri_l = 0;
                } else if (tri_l + tri_h > $(window).width()) {
                    tri_l = $(window).width() - tri_w;
                }
            }, funMouseT = function () {
                if (tri_t < 0) {
                    tri_t = 0;
                } else if (tri_t + tri_h > $(document).height()) {
                    tri_t = $(document).height() - tri_h;
                }
            };
            //如果是鼠标跟随
            if (this.s.hoverFollow && mousePos.left && mousePos.top) {
                if (this.s.hoverFollow === "x") {
                    //水平方向移动，说明纵坐标固定
                    tri_l = mousePos.left
                    funMouseL();
                } else if (this.s.hoverFollow === "y") {
                    //垂直方向移动，说明横坐标固定，纵坐标跟随鼠标移动
                    tri_t = mousePos.top;
                    funMouseT();
                } else {
                    tri_l = mousePos.left;
                    tri_t = mousePos.top;
                    funMouseL();
                    funMouseT();
                }
            }


            var arrLegalPos = ["4-1", "1-4", "5-7", "2-3", "2-1", "6-8", "3-4", "4-3", "8-6", "1-2", "7-5", "3-2"],
				align = this.s.position, alignMatch = false, strDirect;
            $.each(arrLegalPos, function (i, n) {
                if (n === align) {
                    alignMatch = true;
                    return;
                }
            });
            if (!alignMatch) {
                align = "4-1";
            }

            var funDirect = function (a) {
                var dir = "bottom";
                //确定方向
                switch (a) {
                    case "1-4": case "5-7": case "2-3": {
                        dir = "top";
                        break;
                    }
                    case "2-1": case "6-8": case "3-4": {
                        dir = "right";
                        break;
                    }
                    case "1-2": case "8-6": case "4-3": {
                        dir = "left";
                        break;
                    }
                    case "4-1": case "7-5": case "3-2": {
                        dir = "bottom";
                        break;
                    }
                }
                return dir;
            };

            //居中判断
            var funCenterJudge = function (a) {
                if (a === "5-7" || a === "6-8" || a === "8-6" || a === "7-5") {
                    return true;
                }
                return false;
            };

            var funJudge = function (dir) {
                var totalHeight = 0, totalWidth = 0, flagCorner = (o.s.sharpAngle && o.corner) ? true : false;
                if (dir === "right") {
                    totalWidth = tri_l + tri_w + tar_w + off_x;
                    if (flagCorner) {
                        totalWidth += o.corner.width();
                    }
                    if (totalWidth > $(window).width()) {
                        return false;
                    }
                } else if (dir === "bottom") {
                    totalHeight = tri_t + tri_h + tar_h + off_y;
                    if (flagCorner) {
                        totalHeight += o.corner.height();
                    }
                    if (totalHeight > st + $(window).height()) {
                        return false;
                    }
                } else if (dir === "top") {
                    totalHeight = tar_h + off_y;
                    if (flagCorner) {
                        totalHeight += o.corner.height();
                    }
                    if (totalHeight > tri_t - st) {
                        return false;
                    }
                } else if (dir === "left") {
                    totalWidth = tar_w + off_x;
                    if (flagCorner) {
                        totalWidth += o.corner.width();
                    }
                    if (totalWidth > tri_l) {
                        return false;
                    }
                }
                return true;
            };
            //此时的方向
            strDirect = funDirect(align);

            if (this.s.sharpAngle) {
                //创建尖角
                this.createSharp(strDirect);
            }

            //边缘过界判断
            if (this.s.edgeAdjust) {
                //根据位置是否溢出显示界面重新判定定位
                if (funJudge(strDirect)) {
                    //该方向不溢出
                    (function () {
                        if (funCenterJudge(align)) { return; }
                        var obj = {
                            top: {
                                right: "2-3",
                                left: "1-4"
                            },
                            right: {
                                top: "2-1",
                                bottom: "3-4"
                            },
                            bottom: {
                                right: "3-2",
                                left: "4-1"
                            },
                            left: {
                                top: "1-2",
                                bottom: "4-3"
                            }
                        };
                        var o = obj[strDirect], name;
                        if (o) {
                            for (name in o) {
                                if (!funJudge(name)) {
                                    align = o[name];
                                }
                            }
                        }
                    })();
                } else {
                    //该方向溢出
                    (function () {
                        if (funCenterJudge(align)) {
                            var center = {
                                "5-7": "7-5",
                                "7-5": "5-7",
                                "6-8": "8-6",
                                "8-6": "6-8"
                            };
                            align = center[align];
                        } else {
                            var obj = {
                                top: {
                                    left: "3-2",
                                    right: "4-1"
                                },
                                right: {
                                    bottom: "1-2",
                                    top: "4-3"
                                },
                                bottom: {
                                    left: "2-3",
                                    right: "1-4"
                                },
                                left: {
                                    bottom: "2-1",
                                    top: "3-4"
                                }
                            };
                            var o = obj[strDirect], arr = [];
                            for (name in o) {
                                arr.push(name);
                            }
                            if (funJudge(arr[0]) || !funJudge(arr[1])) {
                                align = o[arr[0]];
                            } else {
                                align = o[arr[1]];
                            }
                        }
                    })();
                }
            }

            //已确定的尖角
            var strNewDirect = funDirect(align), strFirst = align.split("-")[0];
            if (this.s.sharpAngle) {
                //创建尖角
                this.createSharp(strNewDirect);
                cor_w = this.corner.width(), cor_h = this.corner.height();
            }

            //确定left, top值
            if (this.s.hoverFollow) {
                //如果鼠标跟随
                if (this.s.hoverFollow === "x") {
                    //仅水平方向跟随
                    tar_l = tri_l + off_x;
                    if (strFirst === "1" || strFirst === "8" || strFirst === "4") {
                        //最左
                        tar_l = tri_l - (tar_w - tri_w) / 2 + off_x;
                    } else {
                        //右侧
                        tar_l = tri_l - (tar_w - tri_w) + off_x;
                    }

                    //这是垂直位置，固定不动
                    if (strFirst === "1" || strFirst === "5" || strFirst === "2") {
                        tar_t = tri_t - off_y - tar_h - cor_h;
                        //尖角
                        cor_t = tri_t - cor_h - off_y - 1;

                    } else {
                        //下方
                        tar_t = tri_t + tri_h + off_y + cor_h;
                        cor_t = tri_t + tri_h + off_y + 1;
                    }
                    cor_l = pos.left - (cor_w - tri_w) / 2;
                } else if (this.s.hoverFollow === "y") {
                    //仅垂直方向跟随
                    if (strFirst === "1" || strFirst === "5" || strFirst === "2") {
                        //顶部
                        tar_t = tri_t - (tar_h - tri_h) / 2 + off_y;
                    } else {
                        //底部
                        tar_t = tri_t - (tar_h - tri_h) + off_y;
                    }

                    if (strFirst === "1" || strFirst === "8" || strFirst === "4") {
                        //左侧
                        tar_l = tri_l - tar_w - off_x - cor_w;
                        cor_l = tri_l - cor_w - off_x - 1;
                    } else {
                        //右侧
                        tar_l = tri_l + tri_w - off_x + cor_w;
                        cor_l = tri_l + tri_w + off_x + 1;
                    }
                    cor_t = pos.top - (cor_h - tri_h) / 2;
                } else {
                    tar_l = tri_l + off_x;
                    tar_t = tri_t + off_y;
                }

            } else {
                switch (strNewDirect) {
                    case "top": {
                        tar_t = tri_t - off_y - tar_h - cor_h;
                        if (strFirst == "1") {
                            tar_l = tri_l - off_x;
                        } else if (strFirst === "5") {
                            tar_l = tri_l - (tar_w - tri_w) / 2 - off_x;
                        } else {
                            tar_l = tri_l - (tar_w - tri_w) - off_x;
                        }
                        cor_t = tri_t - cor_h - off_y - 1;
                        cor_l = tri_l - (cor_w - tri_w) / 2;
                        break;
                    }
                    case "right": {
                        tar_l = tri_l + tri_w + off_x + cor_w;
                        if (strFirst == "2") {
                            tar_t = tri_t + off_y;
                        } else if (strFirst === "6") {
                            tar_t = tri_t - (tar_h - tri_h) / 2 + off_y;
                        } else {
                            tar_t = tri_t - (tar_h - tri_h) + off_y;
                        }
                        cor_l = tri_l + tri_w + off_x + 1;
                        cor_t = tri_t - (cor_h - tri_h) / 2;
                        break;
                    }
                    case "bottom": {
                        tar_t = tri_t + tri_h + off_y + cor_h;
                        if (strFirst == "4") {
                            tar_l = tri_l + off_x;
                        } else if (strFirst === "7") {
                            tar_l = tri_l - (tar_w - tri_w) / 2 + off_x;
                        } else {
                            tar_l = tri_l - (tar_w - tri_w) + off_x;
                        }
                        cor_t = tri_t + tri_h + off_y + 1;
                        cor_l = tri_l - (cor_w - tri_w) / 2;
                        break;
                    }
                    case "left": {
                        tar_l = tri_l - tar_w - off_x - cor_w;
                        if (strFirst == "2") {
                            tar_t = tri_t - off_y;
                        } else if (strFirst === "8") {
                            tar_t = tri_t - (tar_h - tri_h) / 2 - off_y;
                        } else {
                            tar_t = tri_t - (tar_h - tri_h) - off_y;
                        }
                        cor_l = tar_l + tar_w - 1;
                        cor_t = tri_t + (tri_h - cor_h) / 2;
                        break;
                    }
                }
            }
            //尖角的显示
            if (cor_h && cor_w && this.corner) {
                this.corner.css({
                    left: cor_l+this.s.offsets.x,
                    top: cor_t+this.s.offsets.y,
                    zIndex: this.s.zIndex + 1
                });
            }
            //浮动框显示
            this.target.css({
                position: "absolute",
                left: tar_l,
                top: tar_t,
                zIndex: this.s.zIndex
            });
            return this;
        },
        createSharp: function (dir) {
            var bgColor, bdColor, color1 = "", color2 = "";
            var objReverse = {
                left: "right",
                right: "left",
                bottom: "top",
                top: "bottom"
            }, dirReverse = objReverse[dir] || "top";

            if (this.target) {
                bgColor = this.target.css("background-color");
                if (parseInt(this.target.css("border-" + dirReverse + "-width")) > 0) {
                    bdColor = this.target.css("border-" + dirReverse + "-color");
                } 
                
                if (bdColor && bdColor !== "transparent") {
                    color1 = 'style="color:' + bdColor + ';"';
                } else {
                    color1 = 'style="display:none;"';
                }
                if (bgColor && bgColor !== "transparent") {
                    color2 = 'style="color:' + bgColor + ';"';
                } else {
                    color2 = 'style="display:none;"';
                }
            }

            var html = '<div id="floatCorner_' + dir + '" class="float_corner float_corner_' + dir + '">' +
					'<span class="corner corner_1" ' + color1 + '>◆</span>' +
					'<span class="corner corner_2" ' + color2 + '>◆</span>' +
				'</div>';
            if (!$("#floatCorner_" + dir).size()) {
                $("body").append($(html));
            }
            this.corner = $("#floatCorner_" + dir);
            return this;
        },
        targetHold: function () {
            if (this.s.hoverHold) {
                var delay = parseInt(this.s.hideDelay, 10) || 200;
                if (this.target) {
                    this.target.hover(function () {
                        o.flagDisplay = true;
                    }, function () {
                        if (o.timerHold) {
                            clearTimeout(o.timerHold);
                        }
                        o.flagDisplay = false;
                        o.targetHold();
                    });
                }

                o.timerHold = setTimeout(function () {
                    o.displayDetect.call(o);
                }, delay);
            } else {
                this.displayDetect();
            }
            return this;
        },
        loading: function () {
            this.target = $('<div><img src="http://js.youtx.com/images/default2016/loading.gif" /></div>');
            this.targetShow();
            this.target.removeData("width").removeData("height");
            return this;
        },
        displayDetect: function () {
            //显示与否检测与触发
            if (!this.flagDisplay && this.display) {
                this.targetHide();
                this.timerHold = null;
            }
            return this;
        },
        targetShow: function () {
            o.cornerClear();
            this.display = true;
            this.container().setWidth().position();
            this.target.show();
            if ($.isFunction(this.s.showCall)) {
                this.s.showCall.call(this.trigger, this.target);
            }
            return this;
        },
        targetHide: function () {
            this.display = false;
            this.targetClear();
            this.cornerClear();
            if ($.isFunction(this.s.hideCall)) {
                this.s.hideCall.call(this.trigger);
            }
            this.target = null;
            this.trigger = null;
            this.s = {};
            this.targetProtect = false;
            return this;
        },
        targetClear: function () {
            if (this.target) {
                if (this.target.data("width")) {
                    this.target.removeData("width").removeData("height");
                }
                if (this.targetProtect) {
                    //保护孩子
                    this.target.children().hide().appendTo($("body"));
                }
                this.target.unbind().hide();
            }
        },
        cornerClear: function () {
            if (this.corner) {
                //使用remove避免潜在的尖角颜色冲突问题
                this.corner.remove();
            }
        },
        target: null,
        trigger: null,
        s: {},
        cacheData: {},
        targetProtect: false
    };

    $.powerFloat = {};
    $.powerFloat.hide = function () {
        o.targetHide();
    };
    $.powerFloat.refresh = function () {
        if (o.target) {
            o.targetShow();
        }
    }
    var defaults = {
        width: "auto", //可选参数：inherit，数值(px)
        offsets: {
            x: 0,
            y: 0
        },
        zIndex: 999,

        eventType: "hover", //事件类型，其他可选参数有：click, focus

        showDelay: 0, //鼠标hover显示延迟
        hideDelay: 0, //鼠标移出隐藏延时

        hoverHold: true,
        hoverFollow: false, //true或是关键字x, y

        targetMode: "common", //浮动层的类型，其他可选参数有：ajax, list, remind
        target: null, //target对象获取来源，优先获取，如果为null，则从targetAttr中获取。
        targetAttr: "rel", //target对象获取来源，当targetMode为list时无效

        container: null, //转载target的容器，可以使用"plugin"关键字，则表示使用插件自带容器类型
        reverseSharp: false, //是否反向小三角的显示，默认ajax, remind是显示三角的，其他如list和自定义形式是不显示的

        position: "4-1", //trigger-target
        edgeAdjust: true, //边缘位置自动调整

        showCall: $.noop,
        hideCall: $.noop

    };
})(jQuery);
/*! jq.carousel / jQuery plugin - v2.4.3 - 2012-11-08 1:11:07
* http://5509.github.com/jq.carousel/
* Copyright (c) 2012 Kazunori Tokuda; Licensed MIT */

;(function($, undefined) {
 
  var Carousel = function(parent, conf) {
    this.namespace = 'Carousel';
    if ( this instanceof Carousel ) {
      return this.init(parent, conf);
    }
    return new Carousel(parent, conf);
  };
  Carousel.prototype = {

    init: function(parent, conf) {
      var self = this;

      self.conf = $.extend({
        vertical : false,   // boolean
        loop     : true,    // boolean
        easing   : 'swing', // or custom easing
        start    : 1,       // int
        group    : 1,       // int
        duration : 0.2,     // int or float, 0.2 => 0.2s
        indicator: false    // boolean
      }, conf);
      self.initSuccess = true;
      self.$elem = parent;
      if (self.$elem.length === 0 || self.$elem.children().length === 0) {
          self.initSuccess = false;
          return self;
      }
      self.$carousel_wrap = $('<div></div>');

      self._build();
      self._setIndicator();
      self._eventify();

      return self;
    },

    _build: function() {
      var self = this,
        conf = self.conf,
        start_pos = 0,
        box_total_size = 0;

      self.offset_prop = self.conf.vertical ? 'offsetHeight' : 'offsetWidth';
      self.float = conf.vertical ? 'none' : 'left';
      self.position = conf.vertical ? 'top' : 'left';
      self.prop = conf.vertical ? 'height' : 'width';

      self.view_size = self.$elem[0][self.offset_prop];
      self.total_size = 0;
      self.current = conf.start;

      self.$items = self.$elem.children();
      self.$items_original = self.$items.clone();
      self.items_length = self.$items.length;
      self.items_len_hidden = 0;

      self.$elem.html(
        self.$carousel_wrap
          .html(
            self.$items
          )
      );

      box_total_size = self.items_length * self.$items[0][self.offset_prop];

      // setup
      self.$items.css({
        float: self.float
      });
      each(self.$items, function(i) {
        var item = this;

        item.carousel_id = i;
        item.$elem = $(this);
        item.data_size = item[self.offset_prop];
        item.orig_size = item.$elem.css(self.prop);

        if ( self.items_len_hidden > self.view_size ) return;
        self.items_len_hidden = self.items_len_hidden + item.data_size;
      });
      self.item_size = self.$items.eq(0)[0].data_size;
      self.items_len_hidden = self.items_len_hidden / self.item_size;

      if ( conf.group !== 1 ) {
        self._groupSetup();
        if ( conf.loop ) {
          self._cloneGroup();
        }
      } else {
        // clone nodes
        if ( conf.loop ) {
          self._cloneItem();
        }
      }

      self.$elem.css({
        overflow: 'hidden',
        position: 'relative'
      });

      // carousel width and height
      if ( conf.loop ) {
        start_pos = self.items_len_hidden + self.current - 1;
        self.current_pos = -start_pos * self.item_size;
        self.default_pos = -self.items_len_hidden * self.item_size;
      } else {
        start_pos = self.items_length < conf.start ? 1 : conf.start;
        self.current_pos = -(start_pos-1) * self.item_size;
        self.default_pos = 0;
      }
      self.$carousel_wrap.css({
        position: 'relative'
      })
      .css(self.position, self.current_pos);

      if ( self.vertical ) {
        self.$carousel_wrap.css('width', self.$items.eq(0)[0].offsetWidth);
      } else {
        self.$carousel_wrap.css('height', self.$items.eq(0)[0].offsetHeight);
      }

      // max and min point
      self.max_point = self.default_pos - (self.item_size * self.items_length);
      self.min_point = self.default_pos;

      // move size
      self.move_size = self.item_size;

      if ( conf.group === 1 ) {
        self.$items = self.$carousel_wrap.children();
      } else {
        self.$items = self.$carousel_wrap.find('.carousel_group_inner');
      }
      self._setSize();
      self.$elem.trigger('carousel.ready');
    },

    _eventify: function() {
      var self = this,
        conf = self.conf,
        indicator = undefined;

      if ( !conf.indicator ) {
        return;
      }
      indicator = self.$indicator.data('indicator');
      self.$elem.bind({
        'Carousel.prev': function() {
          indicator.active();
        },
        'Carousel.next': function() {
          indicator.active();
        }
      });
    },

    _groupSetup: function() {
      var self = this,
        i = 0, k = 0,
        l = self.items_length,
        conf = self.conf,
        division = l / conf.group,
        group_length = Math.ceil(division),
        group = new Array(group_length),
        group_size = self.item_size * conf.group;

      for ( ; i < l; i++ ) {
        if ( i !== 0 && i % conf.group === 0 ) {
          k = k + 1;
        }
        if ( !group[k] ) {
          group[k] = $('<div class="carousel_group_inner"></div>');
          group[k]
            .css('float', self.float)
            .css(self.prop, group_size);
        }
        group[k].append(self.$items.eq(i));
      }
      for ( i = 0; i < group_length; i++ ) {
        self.$carousel_wrap.append(group[i]);
      }
      self.$items = self.$carousel_wrap.find('.carousel_group_inner');
      self.items_length = self.$items.length;
      self.items_len_hidden = 1;
      self.item_size = self.item_size * conf.group;
    },

    // returns first and last items
    _cloneItem: function() {
      var self = this,
        len = self.items_len_hidden,
        flexnth = function(state, n) {
          var i, $elems = this, nth = [];
          for ( i = 0; i < n; i++ ) {
            if ( i === n ) break;
            nth.push(
              $elems.eq(
                state !== '<' ? $elems.length-(1+i) : i
              ).clone()
            );
          }
          return $(nth);
        },
        reverse = function() {
          var elems = [];
          $.each(this, function(i, $item) {
            elems.unshift($item.clone());
          });
          return $(elems);
        },
        $first = reverse.call(flexnth.call(self.$items, '<', len)),
        $last = reverse.call(flexnth.call(self.$items, '>', len));

      each($first, function() {
        self.$items.eq(self.$items.length-1).after(this);
      });
      each($last, function() {
        self.$items.eq(0).before(this);
      });
    },

    _cloneGroup: function() {
      var self = this,
        len = self.items_len_hidden,
        $first = self.$items.eq(0).clone(),
        $last = self.$items.eq(self.items_length-1).clone();

      self.$items.eq(0).before($last);
      self.$items.eq(self.$items.length-1).after($first);
    },

    // refresh totalWitdh
    _getSize: function(index) {
      var self = this,
        $items = undefined;

      if ( self.conf.group === 1 ) {
        $items = self.$carousel_wrap.children();
      } else {
        $items = self.$elem.find('.carousel_group_inner');
      }

      self.total_size = 0;
      each($items, function(i) {
        var item = this;

        item.data_size = item[self.offset_prop];
        // set total_width
        self.total_size = self.total_size + item.data_size;
      });
    },

    _setSize: function() {
      var self = this;
      self._getSize();
      self.$carousel_wrap
        .css(self.prop, self.total_size);
    },

    _moveState: function() {
      var self = this,
        view_size = self.view_size,
        items_block_size = self.items_length * self.item_size;

      if ( items_block_size <= view_size ) {
        return false;
      } else
      if ( self.current === self.items_length ) {
        return 'max';
      } else
      if ( self.current === 1 ) {
        return 'min';
      } else {
        return true;
      }
    },

    _getNext: function(current) {
      var self = this,
        conf = self.conf;
      if ( current + 1 > self.items_length ) {
        current = 1;
      } else {
        current = current + 1;
      }
      return current;
    },

    _getPrev: function(current) {
      var self = this,
        conf = self.conf;
      if ( current - 1 === 0 ) {
        current = self.items_length;
      } else {
        current = current - 1;
      }
      return current;
    },

    _setCurrent: function(direction) {
      var self = this,
        num = undefined,
        current = self.current;
      // direction: true => next, false => prev
      if ( direction ) {
        num = self._getNext(current);
      } else {
        num = self._getPrev(current);
      }
      self.current = num;
    },

    _toNext: function() {
      var self = this,
        conf = self.conf,
        hidden_len = self.items_len_hidden,
        prop = {};

      if ( !self.conf.loop && self.current === self.items_length ) {
        return;
      }
      self._setCurrent(true);

      self.current_pos = self.current_pos - self.move_size;
      if ( self.current_pos < self.max_point ) {
        self.$carousel_wrap.css(self.position, self.default_pos);
        self.current_pos = self.default_pos - self.move_size;
      }

      prop[self.position] = self.current_pos;

      self.$carousel_wrap
      .animate(prop, {
        queue: false,
        easing: conf.easing,
        duration: conf.duration*1000,
        complete: function() {
          self.$elem.trigger('Carousel.next');
        }
      });
    },

    _toPrev: function() {
      var self = this,
        conf = self.conf,
        hidden_len = self.items_len_hidden,
        total_length = self.items_length + hidden_len,
        items_size = self.item_size * self.items_length,
        prop = {};

      if ( !self.conf.loop && self.current === 1 ) {
        return;
      }
      self._setCurrent(false);

      self.current_pos = self.current_pos + self.move_size;
      if ( self.default_pos < self.current_pos ) {
        self.$carousel_wrap.css(self.position, -self.item_size * total_length);
        self.current_pos = self.default_pos - items_size + self.move_size;
      }

      prop[self.position] = self.current_pos;

      self.$carousel_wrap
      .animate(prop, {
        queue: false,
        easing: conf.easing,
        duration: conf.duration*1000,
        complete: function() {
          self.$elem.trigger('Carousel.prev');
        }
      });

    },

    _getIndicator: function(num) {
      var self = this,
        indicator = Indicator(self, num),
        $indicator = $('<div class="carousel_indicator"></div>');

      $indicator.data('indicator', indicator);
      $indicator.append(indicator.$elems);

      return $indicator;
    },

    _setIndicator: function(num) {
      var self = this,
        indicator = undefined;
      if ( !self.conf.indicator ) {
        return;
      }
      if ( !self.$indicator ) {
        self.$indicator = self._getIndicator(num);
        self.$elem.after(self.$indicator);
      } else {
        indicator = self.$indicator.data('indicator');
        self.$indicator.append(
          indicator.refresh()
        );
      }
    },

    _callAPI: function(api, arguments) {
     var self = this;
     if(!self.initSuccess) {
            return;
     }
      if ( typeof self[api] !== 'function' ) {
        throw api + ' does not exist of Carousel methods.';
      } else
      if ( /^_/.test(api) && typeof self[api] === 'function' ) {
        throw 'Method begins with an underscore are not exposed.';
      }
      return self[api](arguments);
    },

    indicator: function(num) {
      var self = this;
      return self._getIndicator(num);
    },

    getCurrent: function() {
      var self = this;
      return self.current - 1;
    },

    getMoveState: function() {
      var self = this;
      return self._moveState();
    },

    prev: function() {
      var self = this;
      self._toPrev();

      return self.$elem;
    },

    next: function() {
      var self = this;
      self._toNext();

      return self.$elem;
    },

    reset: function(conf) {
      var self = this;
      self.$elem
        .empty()
        .append(self.$items_original);

      if ( conf ) {
        self.conf = $.extend(self.conf, conf);
      }
      self.$elem.trigger('Carousel.reset');
      return self.$elem;
    },

    refresh: function() {
      var self = this;
      self.total_size = 0;
      self._build();
      self._setIndicator();

      self.$elem.trigger('Carousel.refresh');
      return self.$elem;
    }
  };

  var Indicator = function(carousel, num) {
    this.namespace = 'Indicator';
    if ( this instanceof Indicator ) {
      return this.init(carousel, num);
    }
    return new Indicator(carousel, num);
  };
  Indicator.prototype = {
    init: function(carousel, num) {
      var self = this;
      self.carousel = carousel;
      self._build(num);
    },

    _build: function(num) {
      var self = this,
        carousel = self.carousel,
        current = carousel.getCurrent(),
        i = 0, l = carousel.items_length,
        indi = '',
        active = '';
        for ( ; i < l; i++ ) {
          if ( i === current ) {
            active = ' class="active"';
          } else {
            active = '';
          }
          indi = indi + '<span' + active + '>';
          indi = indi + (num ? i : '');
          indi = indi + '</span>';
        }
        self.$elems = $(indi);
    },

    _setActive: function() {
      var self = this,
        carousel = self.carousel;

        self.$elems.removeClass('active');
        self.$elems.eq(carousel.getCurrent()).addClass('active');
    },

    refresh: function() {
      var self = this;
      self.$elems.remove();
      self._build();
      return self.$elems;
    },

    active: function() {
      var self = this;
      self._setActive();
    }
  };

  function each(arr, func) {
    var i = 0,
        l = undefined;

    // arr === number
    if ( /^\d+$/.test(arr) ) {
      arr = new Array(arr);
    }
    l = arr.length;

    for ( ; i < l; i = i + 1 ) {
      func.apply(arr[i], ([i]).concat(arguments));
    }
  }

  // $.fn extend
  jQuery.fn.carousel = function(conf, arguments) {
    var carousel = this.data('carousel');

    if ( carousel ) {
      return carousel._callAPI(conf, arguments);
    } else {
      carousel = Carousel(this, conf);
      this.data('carousel', carousel);
      return this;
    }
  };

}(jQuery));

/**
 * @license 
 * jQuery Tools @VERSION Overlay - Overlay base. Extend it.
 * 
 * NO COPYRIGHTS OR LICENSES. DO WHAT YOU LIKE.
 * 
 * http://flowplayer.org/tools/overlay/
 *
 * Since: March 2008
 * Date: @DATE 
 */
(function ($) {

    // static constructs
    $.tools = $.tools || { version: '@VERSION' };

    $.tools.overlay = {

        addEffect: function (name, loadFn, closeFn) {
            effects[name] = [loadFn, closeFn];
        },

        conf: {
            close: null,
            closeOnClick: true,
            closeOnEsc: true,
            closeSpeed: 200,
            effect: 'default',

            // since 1.2. fixed positioning not supported by IE6
            fixed: !$.browser.msie || $.browser.version > 6,

            left: 'center',
            load: false, // 1.2
            mask: null,
            oneInstance: true,
            speed: 'normal',
            target: null, // target element to be overlayed. by default taken from [rel]
            top: '10%'
        }
    };


    var instances = [], effects = {};

    // the default effect. nice and easy!
    $.tools.overlay.addEffect('default',

    /* 
    onLoad/onClose functions must be called otherwise none of the 
    user supplied callback methods won't be called
    */
		function (pos, onLoad) {

		    var conf = this.getConf(),
				 w = $(window);

		    if (!conf.fixed) {
		        pos.top += w.scrollTop();
		        pos.left += w.scrollLeft();
		    }

		    pos.position = conf.fixed ? 'fixed' : 'absolute';
		    this.getOverlay().css(pos).fadeIn(conf.speed, onLoad);

		}, function (onClose) {
		    this.getOverlay().fadeOut(this.getConf().closeSpeed, onClose);
		}
	);


    function Overlay(trigger, conf) {

        // private variables
        var self = this,
			 fire = trigger.add(self),
			 w = $(window),
			 closers,
			 overlay,
			 opened,
			 maskConf = $.tools.expose && (conf.mask || conf.expose),
			 uid = Math.random().toString().slice(10);


        // mask configuration
        if (maskConf) {
            if (typeof maskConf == 'string') { maskConf = { color: maskConf }; }
            maskConf.closeOnClick = maskConf.closeOnEsc = false;
        }

        // get overlay and trigger
        var jq = conf.target || trigger.attr("rel");
        overlay = jq ? $(jq) : null || trigger;

        // overlay not found. cannot continue
        if (!overlay.length) { throw "Could not find Overlay: " + jq; }

        // trigger's click event
        if (trigger && trigger.index(overlay) == -1) {
            trigger.click(function (e) {
                self.load(e);
                return e.preventDefault();
            });
        }

        // API methods  
        $.extend(self, {

            load: function (e) {

                // can be opened only once
                if (self.isOpened()) { return self; }

                // find the effect
                var eff = effects[conf.effect];
                if (!eff) { throw "Overlay: cannot find effect : \"" + conf.effect + "\""; }

                // close other instances?
                if (conf.oneInstance) {
                    $.each(instances, function () {
                        this.close(e);
                    });
                }

                // onBeforeLoad
                e = e || $.Event();
                e.type = "onBeforeLoad";
                fire.trigger(e);
                if (e.isDefaultPrevented()) { return self; }

                // opened
                opened = true;

                // possible mask effect
                if (maskConf) { $(overlay).expose(maskConf); }

                // position & dimensions 
                var top = conf.top,
					 left = conf.left,
					 oWidth = overlay.outerWidth({ margin: true }),
					 oHeight = overlay.outerHeight({ margin: true });

                if (typeof top == 'string') {
                    top = top == 'center' ? Math.max((w.height() - oHeight) / 2, 0) :
						parseInt(top, 10) / 100 * w.height();
                }

                if (left == 'center') { left = Math.max((w.width() - oWidth) / 2, 0); }


                // load effect  		 		
                eff[0].call(self, { top: top, left: left }, function () {
                    if (opened) {
                        e.type = "onLoad";
                        fire.trigger(e);
                    }
                });

                // mask.click closes overlay
                if (maskConf && conf.closeOnClick) {
                    $.mask.getMask().one("click", self.close);
                }

                // when window is clicked outside overlay, we close
                if (conf.closeOnClick) {
                    $(document).on("click." + uid, function (e) {
                        if (!$(e.target).parents(overlay).length) {
                            self.close(e);
                        }
                    });
                }

                // keyboard::escape
                if (conf.closeOnEsc) {

                    // one callback is enough if multiple instances are loaded simultaneously
                    $(document).on("keydown." + uid, function (e) {
                        if (e.keyCode == 27) {
                            self.close(e);
                        }
                    });
                }


                return self;
            },

            close: function (e) {

                if (!self.isOpened()) { return self; }

                e = e || $.Event();
                e.type = "onBeforeClose";
                fire.trigger(e);
                if (e.isDefaultPrevented()) { return; }

                opened = false;

                // close effect
                effects[conf.effect][1].call(self, function () {
                    e.type = "onClose";
                    fire.trigger(e);
                });

                // unbind the keyboard / clicking actions
                $(document).off("click." + uid + " keydown." + uid);

                if (maskConf) {
                    $.mask.close();
                }

                return self;
            },

            getOverlay: function () {
                return overlay;
            },

            getTrigger: function () {
                return trigger;
            },

            getClosers: function () {
                return closers;
            },

            isOpened: function () {
                return opened;
            },

            // manipulate start, finish and speeds
            getConf: function () {
                return conf;
            }

        });

        // callbacks	
        $.each("onBeforeLoad,onStart,onLoad,onBeforeClose,onClose".split(","), function (i, name) {

            // configuration
            if ($.isFunction(conf[name])) {
                $(self).on(name, conf[name]);
            }

            // API
            self[name] = function (fn) {
                if (fn) { $(self).on(name, fn); }
                return self;
            };
        });

        // close button
        closers = overlay.find(conf.close || ".closeBtnIced");

        if (!closers.length && !conf.close) {
            closers = $('<a class="close"></a>');
            overlay.prepend(closers);
        }

        closers.live("click", function (e) {
            self.close(e);
        });

        // autoload
        if (conf.load) { self.load(); }

    }

    // jQuery plugin initialization
    $.fn.overlay = function (conf) {

        // already constructed --> return API
        var el = this.data("overlay");
        if (el) { return el; }

        if ($.isFunction(conf)) {
            conf = { onBeforeLoad: conf };
        }

        conf = $.extend(true, {}, $.tools.overlay.conf, conf);

        this.each(function () {
            var el = new Overlay($(this), conf), self = $(this);
            instances.push(el);
            self.data("overlay", el);
        });
        return conf.api ? el : this;
    };
    // bind resize event
    $(window).resize(function () {
        $.each(instances, function (i, el) {
            if (!el.isOpened()) {
                return true;
            }
            var conf = el.getConf(),
            w = $(window),
            oel = el.getOverlay(),
            top = conf.top,
            left = conf.left,
            oWidth = oel.outerWidth(true),
            oHeight = oel.outerHeight(true),
            pos;

            if (typeof top == 'string') {
                top = top == 'center' ? Math.max((w.height() - oHeight) / 2, 0) :
                    parseInt(top, 10) / 100 * w.height();
            }

            if (left == 'center') { left = Math.max((w.width() - oWidth) / 2, 0); }

            pos = { top: top, left: left }

            if (!conf.fixed) {
                pos.top += w.scrollTop();
                pos.left += w.scrollLeft();
            }

            pos.position = conf.fixed ? 'fixed' : 'absolute';
            oel.css(pos);
        });
    });

})(jQuery);


/**
 * @license 
 * jQuery Tools @VERSION / Expose - Dim the lights
 * 
 * NO COPYRIGHTS OR LICENSES. DO WHAT YOU LIKE.
 * 
 * http://flowplayer.org/tools/toolbox/expose.html
 *
 * Since: Mar 2010
 * Date: @DATE 
 */
(function($) { 	

	// static constructs
	$.tools = $.tools || {version: '@VERSION'};
	
	var tool;
	
	tool = $.tools.expose = {
		
		conf: {	
			maskId: 'exposeMask',
			loadSpeed: 'slow',
			closeSpeed: 'fast',
			closeOnClick: true,
			closeOnEsc: true,
			
			// css settings
			zIndex: 9998,
			opacity: 0.8,
			startOpacity: 0,
			color: '#fff',
			
			// callbacks
			onLoad: null,
			onClose: null
		}
	};

	/* one of the greatest headaches in the tool. finally made it */
	function viewport() {
				
		// the horror case
		if ($.browser.msie) {
			
			// if there are no scrollbars then use window.height
			var d = $(document).height(), w = $(window).height();
			
			return [
				window.innerWidth || 							// ie7+
				document.documentElement.clientWidth || 	// ie6  
				document.body.clientWidth, 					// ie6 quirks mode
				d - w < 20 ? w : d
			];
		} 
		
		// other well behaving browsers
		return [$(document).width(), $(document).height()]; 
	} 
	
	function call(fn) {
		if (fn) { return fn.call($.mask); }
	}
	
	var mask, exposed, loaded, config, overlayIndex;		
	
	
	$.mask = {
		
		load: function(conf, els) {
			
			// already loaded ?
			if (loaded) { return this; }			
			
			// configuration
			if (typeof conf == 'string') {
				conf = {color: conf};	
			}
			
			// use latest config
			conf = conf || config;
			
			config = conf = $.extend($.extend({}, tool.conf), conf);

			// get the mask
			mask = $("#" + conf.maskId);
				
			// or create it
			if (!mask.length) {
				mask = $('<div/>').attr("id", conf.maskId);
				$("body").append(mask);
			}
			
			// set position and dimensions 			
			var size = viewport();
				
			mask.css({				
				position:'absolute', 
				top: 0, 
				left: 0,
				width: size[0],
				height: size[1],
				display: 'none',
				opacity: conf.startOpacity,					 		
				zIndex: conf.zIndex 
			});
			
			if (conf.color) {
				mask.css("backgroundColor", conf.color);	
			}			
			
			// onBeforeLoad
			if (call(conf.onBeforeLoad) === false) {
				return this;
			}
			
			// esc button
			if (conf.closeOnEsc) {						
				$(document).bind("keydown.mask", function(e) {							
					if (e.keyCode == 27) {
						$.mask.close(e);	
					}		
				});			
			}
			
			// mask click closes
			if (conf.closeOnClick) {
				mask.bind("click.mask", function(e)  {
					$.mask.close(e);		
				});					
			}			
			
			// resize mask when window is resized
			$(window).bind("resize.mask", function() {
				$.mask.fit();
			});
			
			// exposed elements
			if (els && els.length) {
				
				overlayIndex = els.eq(0).css("zIndex");

				// make sure element is positioned absolutely or relatively
				$.each(els, function() {
					var el = $(this);
					if (!/relative|absolute|fixed/i.test(el.css("position"))) {
						el.css("position", "relative");		
					}					
				});
			 
				// make elements sit on top of the mask
				exposed = els.css({ zIndex: Math.max(conf.zIndex + 1, overlayIndex == 'auto' ? 0 : overlayIndex)});			
			}	
			
			// reveal mask
			mask.css({display: 'block'}).fadeTo(conf.loadSpeed, conf.opacity, function() {
				$.mask.fit(); 
				call(conf.onLoad);
				loaded = "full";
			});
			
			loaded = true;			
			return this;				
		},
		
		close: function() {
			if (loaded) {
				
				// onBeforeClose
				if (call(config.onBeforeClose) === false) { return this; }
					
				mask.fadeOut(config.closeSpeed, function()  {					
					call(config.onClose);					
					if (exposed) {
						exposed.css({zIndex: overlayIndex});						
					}				
					loaded = false;
				});				
				
				// unbind various event listeners
				$(document).unbind("keydown.mask");
				mask.unbind("click.mask");
				$(window).unbind("resize.mask");  
			}
			
			return this; 
		},
		
		fit: function() {
			if (loaded) {
				var size = viewport();				
				mask.css({width: size[0], height: size[1]});
			}				
		},
		
		getMask: function() {
			return mask;	
		},
		
		isLoaded: function(fully) {
			return fully ? loaded == 'full' : loaded;	
		}, 
		
		getConf: function() {
			return config;	
		},
		
		getExposed: function() {
			return exposed;	
		}		
	};
	
	$.fn.mask = function(conf) {
		$.mask.load(conf,this);
		return this;		
	};			
	
	$.fn.expose = function(conf) {
		$.mask.load(conf, this);
		return this;			
	};


})(jQuery);

var TJ = TJ || {};
TJ.Index = {
    Init: function () {
        TJ.Index.InitSearch();
        //TJ.Index.InitSelect();
        //TJ.Index.InitPowerFloat();
        //TJ.Index.InitEdmSubscribe();
        //TJ.Index.InitCarousel();
        //TJ.Index.InitTheme();
        //TJ.Index.InitSpecialCitySetting();
        //TJ.Index.InitHostStoryLazy();
    },

    InitHostStoryLazy: function () {
        setTimeout(function () {
            $("#carousel").find("img:visible").trigger("hoststoryevent");
        }, 50);

    },

    InitSearch: function () {
        var $tabs = $("a", "#search-tabs");
        var $panel = $("#search-panel").children();
        $("a", "#search-tabs").each(function (index) {
            $(this).data("data-index", index);
            $(this).click(function () {
                var indexPanel = $(this).data("data-index");
                $tabs.removeClass("current");
                $(this).addClass("current");
                $panel.hide();
                $panel.eq(indexPanel).show();
            });
        });

        //  $("#search-tabs").tabs("#search-panel>div");
        var mindate = parseDate(minDate),
         maxdate = parseDate(maxDate);

        /*  houseSearch.dateInputInit($("#startDate"), $("#endDate"));*/

        //初始化国内公寓搜索部分
        houseSearch.initView({
            $destInput: $("#destInput"),
            $kwdInput: $("#adress"),
            $startDate: $("#startDate"),
            $endDate: $("#endDate"),
            $subBtn: $("#searchHouse"),
            destPinyin: $("#destInput").attr("data-destpinyin"),
            //cityInfo: cityInfo,
            destOffset: [0, 1],
            kwdOffset: [0, 1],
            dateOffset: [0, -55]
        });


        //初始化海外房搜索
        if ($("#internationalSearchForm").length > 0) {

            $("#internationalStartDate").dateinput({
                min: mindate,
                max: new Date(+maxdate - 24 * 3600000),
                offset: [0, -55]
            });
            $("#internationalEndDate").dateinput({
                min: new Date(+mindate + 24 * 3600000),
                max: maxdate,
                offset: [0, -55]
            });

            var checkDateApi = $("#internationalStartDate").data("dateinput"),
                leaveDateApi = $("#internationalEndDate").data("dateinput");

            //var startDate = $("#internationalStartDate").val();
            //if (startDate) {
            //    var days = checkDateApi.getValue();
            //    $("#internationalStartDate").next().text(getDayToString(days));
            //}
            //var endDate = $("#internationalEndDate").val();
            //if (endDate) {
            //    var days = leaveDateApi.getValue()
            //    $("#internationalEndDate").next().text(getDayToString(days));
            //}

            checkDateApi.change(function (event, date) {
                var leaveDay = parseDate(leaveDateApi.getInput().val()),
                    leaveMinDay = new Date(+date + 24 * 3600000);

                checkDateApi.getInput().next().next().hide();

                // 如果未设定离店时间或入住时间大于离店时间
                if (!leaveDay || compareDate(date, leaveDay)) {
                    leaveDateApi.setMin(leaveMinDay).setValue(leaveMinDay).show();
                } else if (leaveDay) {
                    leaveDateApi.setMin(leaveMinDay);
                }

                //  $("#internationalStartDate").next().text(getDayToString(date));
            });
            leaveDateApi.change(function (event, date) {
                var startDay = parseDate(checkDateApi.getInput().val()),
                    startMaxDay = new Date(+date - 24 * 3600000);

                leaveDateApi.getInput().next().next().hide();

                // 如果未设定入住时间或者入住时间大于离店时间
                if (!startDay || compareDate(startDay, date)) {
                    checkDateApi.setValue(startMaxDay).show();
                }

                //  $("#internationalEndDate").next().text(getDayToString(date));
            });
            $.each([checkDateApi, leaveDateApi], function (i, n) {
                var $emptyElem = n.getInput(),
                    $ipt = !!i ? checkDateApi.getInput() : leaveDateApi.getInput(),
                    $sy = $ipt.next().next();

                n.onEmpty(function () {
                    $emptyElem.next().empty();
                    $ipt.val("").next().empty();
                    $sy.show();
                });

                $ipt.bind("focus", function () {
                    $sy.hide();
                }).bind("blur", function () {
                    if (!$ipt.val()) {
                        $sy.show();
                    }
                });

                if ($ipt.val()) {
                    $sy.hide();
                } else {
                    $sy.show();
                }
            });

            // update international control id
            $("#internationalStartDate").prop("name", "StartDate");
            $("#internationalEndDate").prop("name", "EndDate");

            //    $("#internationalSearchButton").click(function () {
            //        $(this).val('搜索中');
            //        //// 处理卧室数参数
            //        //var roomCountHtml = $("#guestCount").next().html();
            //        //$("#guestCount option[text='" + roomCountHtml + "']").prop('selected', true);

            //        var oAction = $("#internationalSearchForm").attr("action");
            //        var originalAction = $("#internationalSearchForm").attr("action") + "/" + $("#internationalCriteriaSelect option:selected").attr("name") + "_gongyu_r" + $("#internationalCriteriaSelect option:selected").val() + "/";
            //        $("#internationalSearchForm").attr("action", originalAction);
            //        $("#internationalSearchForm").trigger("submit");
            //        $("#internationalSearchForm").attr("action", oAction);
            //    });

        }


    },
    InitSelect: function () {
        $("#guestCount").selectinput({
            Offset: [5, 5],
            autowidth: true,
            css: {
                rootclass: "ui-select",
                headclass: "ui-select-value",
                mouseon: "mouseon",
                current: "current"
            }
        });

    },
    InitTheme: function () {
        $("#theme-more-btn").click(function () {
            var self = $(this);
            $("#themeTemplate").toggle(300, function () {
                if ($(this).css('display') == 'none') {
                    self.html("查看更多<i class='i-acor'>");
                } else {
                    self.html("收起<i class='i-acor-up'>");
                }
            });
            $("#themeTemplate2").toggle(300);
        });
    },
    InitPowerFloat: function () {
        $("#mirmsg").powerFloat({
            //  target: "#mirmsgdrop",
            container: "plugin",
            reverseSharp: true,
            position: "7-5"
            // showCall: function () {
            // this.addClass("active");
            // },
            // hideCall: function () {
            //  this.removeClass("active");
            //   }
        });

        $("#edmmsg").powerFloat({
            target: "#edmdrop",
            position: "7-2",
            showCall: function () {
                this.addClass("active");
            },
            hideCall: function () {
                this.removeClass("active");
            }
        });
    },
    InitEdmSubscribe: function () {

        $("#edmemail").focus(function () {
            var el = $(this);
            if (el.val() == el.attr("defValue")) {
                $(this).val('');
            };
        });

        $("#edmemail").blur(function () {
            var el = $(this);
            if (el.val() == "") {
                $(this).val(el.attr("defValue"));
            };
        });


        var DilogContent = $('#dialog .msg-box').html();
        $("#addEmailBtn").overlay({
            mask: {
                color: '#000',
                loadSpeed: 200,
                opacity: 0.6
            },
            close: ".close-btn",  //触发关闭的dom节点，可以是图片，链接或者按钮
            closeOnClick: false, // 点击弹出层之外位置是否关闭弹出层
            closeOnEsc: true,   // 按下ESC是否关闭弹出层
            target: "#dialog",
            top: "30%",
            fixed: false,
            onBeforeLoad: function () {
                var wrap = this.getOverlay();
                $('#dialog .msg-box').html(DilogContent);
                $.ajax({
                    type: "Post",
                    url: "/Edmemail/Subscribe/",
                    data: { email: $('#edmemail').val() },
                    success: function (data) {
                        if (data.IsSuccess) {
                            var mailurl = "http://mail." + $('#edmemail').val().split('@')[1];
                            $('#dialog .msg-box').html("<i class='icon-success'></i>恭喜您已成功订阅").removeClass("failure-info").addClass("success-info").show();
                        } else {
                            $('#dialog .msg-box').html("<i class='icon-failure'></i>" + data.Message).removeClass("success-info").addClass("failure-info").show();
                        }
                    }
                });
            }
        });
    },
    InitSpecialCitySetting: function () {

        $("#SpecialLevelOneCategoryContainer a").click(function () {
            var self = $(this);
            var levelOneID = self.data("leveloneid");

            // 处理一级分类
            $("#SpecialLevelOneCategoryContainer a").removeClass("current");
            self.addClass("current");

            // 处理二级分类
            $("#SpecialLevelTwoCategoryContainer a").hide();

            var selectLevelTwo = 0;
            var isFirst = 1;
            $("#SpecialLevelTwoCategoryContainer a").each(function () {


                var self = $(this);
                self.removeClass("current");
                var id = self.data("leveloneid");
                if (id == levelOneID) {
                    if (self.is(".j-alwayshide")) {

                    }
                    else {
                        self.show();
                    }

                    $("#moreSpecialCityUnit").attr("href", self.data("moreurl"));
                    if (isFirst) {
                        self.addClass("current");
                        isFirst = 0;
                        selectLevelTwo = self.data("leveltwoid");
                        $("#theme-more-btn").attr("href", self.data("moreurl"));
                    }
                }
                else {
                    self.hide();
                }
            });

            // 处理房屋显示
            $(".j-specialunit-container").each(function () {
                var self = $(this);
                if (self.data("leveloneid") == levelOneID && self.data("leveltwoid") == selectLevelTwo) {
                    self.show();
                    setTimeout(function () {
                        self.find("img:visible").trigger("specialcity");
                    }, 0);
                }
                else {
                    self.hide();
                }
            });



        });

        $("#SpecialLevelTwoCategoryContainer a").click(function () {
            var self = $(this);
            var selectedLevelOne = self.data("leveloneid");
            var selectedLevelTwo = self.data("leveltwoid");

            $("#SpecialLevelTwoCategoryContainer a[class='current']").removeClass("current");

            self.addClass("current");

            $("#moreSpecialCityUnit").attr("href", self.data("moreurl"));

            // 处理房屋显示
            $(".j-specialunit-container").each(function () {
                var self = $(this);
                if (self.data("leveloneid") == selectedLevelOne && self.data("leveltwoid") == selectedLevelTwo) {
                    self.show();
                    setTimeout(function () {
                        self.find("img:visible").trigger("specialcity");
                    }, 0);
                }
                else {
                    self.hide();
                }
            });

        });
    }
};


TJ.Index.Init();









