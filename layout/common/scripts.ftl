<script src="${settings.cdn_jquery_js!}"></script>
<#include "../plugin/gallery.ftl">
<#include "../plugin/outdated-browser.ftl">
<#include "../plugin/mathjax.ftl">
<#include "../plugin/back-to-top.ftl">

<script src="${theme_base!}/source/js/bundle.js"></script>
<#if is_index??>
    <script src="${theme_base!}/source/js/widget_pin.js"></script>
</#if>
<#if is_post??>
    <script src="${theme_base!}/source/lib/toc/toc.min.js"></script>
    <script>
        new Toc({
            wrapperId: 'post-article',
            insertId: 'toc',
            showSerial: true
        }).createToc();
    </script>
</#if>

<script>
    var url = location.href;
    var urlstatus = false;
    $(".navbar-start a").each(function () {
        if ((url + '/').indexOf($(this).attr('href')) > -1 && $(this).attr('href') != '/') {
            $(this).addClass('is-active');
            urlstatus = true;
        } else {
            $(this).removeClass('is-active');
        }
    });
    if (!urlstatus) {
        $(".navbar-start a").eq(0).addClass('is-active');
    }
</script>
