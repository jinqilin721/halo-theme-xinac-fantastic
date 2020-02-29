<footer class="footer">
    <div class="container">
        <div class="level">
            <div class="level-start has-text-centered-mobile">
<#--                <a class="footer-logo is-block has-mb-6" href="${context!}">-->
<#--                    <#if options.blog_logo?? && options.blog_logo!=''>-->
<#--                        <img src="${options.blog_logo!}" alt="${options.blog_title!}" height="28">-->
<#--                    <#else>-->
<#--                        ${options.blog_title!}-->
<#--                    </#if>-->
<#--                </a>-->

                    &nbsp;&nbsp;&nbsp;<@global.footer />

                   <!-- 不蒜子计数 -->
<script async src="//busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>
                  <br>
<span id="busuanzi_container_site_pv" style='display:none'>&nbsp;&nbsp;&nbsp; 总访问量 <span id="busuanzi_value_site_pv"></span> 次 </span>
<span id="busuanzi_container_site_uv" style='display:none'>| 总访客数 <span id="busuanzi_value_site_uv"></span> 人 </span>
                  <p style="text-align: center; line-height: 20px;margin: 0">
                    我的博客已经运行&nbsp;&nbsp;<span id="clock"></span>&nbsp;&nbsp;啦！<br>
  </p><p style="text-align: center; line-height: 20px;margin: 0">
                  <a href="http://beian.miit.gov.cn/" style="color: black;font-style: inherit;font-weight: inherit;">闽ICP备19016323号</a>
  </p><p style="text-align: center; line-height: 20px;margin: 0px 0px">
                    Thanks for <a href="https://halo.run/" target="_blank" rel="nofollow">Halo</a>&nbsp;&nbsp;&nbsp;&&nbsp;&nbsp;&nbsp;<a href="//www.upyun.com" target="_blank" rel="nofollow"><img src="//www.upyun.com/static/90X45.png" width="56" height="28" style="margin: -5px 0px"></a>
  				  </p>
                 <!-- <script type="text/javascript"
color="47,135,193" opacity='0.8' zIndex="-2" count="100" src="//cdn.bootcss.com/canvas-nest.js/1.0.0/canvas-nest.min.js">
                  </script> -->
        <!-- 定时 -->
        <script type="text/javascript">
		    /* 尾部定时 */
		    var int = self.setInterval("clock()", 1000);
		    function clock()
		    {
			    var nowDay = new Date();
			    var localDay = new Date("2019-08-10 00:00:00");
			    var time = parseInt((nowDay.getTime()-localDay.getTime())/1000);
			    var min = parseInt(time/60);
			    var hour = parseInt(time/60/60);
			    var day = parseInt(time/60/60/24);

			    var runTime = "0";
			    if(min == 0) {
				    runTime = time + "秒";
			    } else if(hour == 0) {
				    runTime = min + "分" + (time-min*60) + "秒";
			    } else if(day == 0) {
				    var mh = min-hour*60;
				    runTime = hour + "时" + mh + "分" + (time-hour*3600-mh*60) + "秒"
			    } else {
				    var hd = hour - day*24;
				    var mh = min - day*24*60 - hd*60;
				    runTime = day + "天" + hd + "时" + mh + "分" + (time-day*24*3600-hd*3600-mh*60) + "秒";
			    }

			    document.getElementById('clock').innerHTML = runTime;
		    }
        </script>
  <script src="https://www.lwjppz.cn/upload/2020/2/caidai-5e8e10ce0efc4886838a9ea8c5e1153a.js"></script>
    <script src="https://www.lwjppz.cn/upload/2020/2/dianji-1a07321c18b640deafcb13f4cb635307.js"></script>
                </p>
            </div>
            <div class="level-end">
                <div class="field has-addons is-flex-center-mobile has-mt-5-mobile is-flex-wrap is-flex-middle">
                    ${settings.links_footer!}
                </div>
            </div>
        </div>
    </div>
</footer>
