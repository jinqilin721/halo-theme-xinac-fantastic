<#include "./layout/common/navbar.ftl">
<#include "./layout/common/head.ftl">
<!DOCTYPE html>
<html lang="zh-CN" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <title>${options.photos_title!} - ${blog_title!}</title>

    <meta name="keywords" content="${meta_keywords!}"/>
    <meta name="description" content="${meta_description!}"/>
    <meta property="og:type" content="website"/>
    <meta property="og:title" content="${options.photos_title!}"/>
    <meta property="og:site_name" content="${options.photos_title!}"/>
    <meta property="og:description" content="${meta_description!}"/>
    <meta property="og:locale" content="zh-CN"/>
    <meta property="og:image" content="${user.avatar!}"/>
    <meta name="twitter:card" content="summary"/>
    <meta name="twitter:title" content="${options.photos_title!}"/>
    <meta name="twitter:description" content="${meta_description!}"/>
    <meta name="twitter:image" content="${user.avatar!}"/>

    <link rel="canonical" href="${canonical!}"/>

    <link rel="alternative" href="${atom_url!}" title="${blog_title!}" type="application/atom+xml"/>

    <@global.head />

    <link rel="stylesheet" href="${settings.cdn_bulma_css!}"/>
    <link rel="stylesheet" href="${settings.cdn_fontawesome_css!}"/>
    <#include "layout/plugin/style.theme.ftl">

    <link rel="stylesheet" href="${theme_base!}/source/css/style.css"/>
    <link rel="stylesheet" href="${theme_base!}/source/css/bundle.css"/>
    <link rel="stylesheet" href="${theme_base!}/source/css/back-to-top.css"/>
    <link rel="stylesheet" href="${theme_base!}/source/lib/lg/css/lightgallery.css"/>
</head>
<body class="is-3-column">
<@navbar 'page' />
<section class="section photos">
    <div class="container">
    <@photoTag method="listTeams">
        <#list teams as item>
            <h3 class="level title is-3">${item.team!}</h3>
            <div class="columns is-multiline"  id="view_${item.team!}">
                <#list item.photos?sort_by('takeTime')?reverse as photo>
                    <#if photo_index gte options.photos_page_size>
                        <#break>
                    </#if>
                    <div class="column is-one-quarter-desktop is-half-tablet" style="margin-bottom: 40px;">
                        <div class="card" style="width: 100%; height: 205px;">
                            <div class="card-image">
                                <figure class="image">
                                    <a href="${photo.url!}" class="show" title="${photo.name!}" >
                                        <img src="${photo.thumbnail!}"
                                             data-src="${photo.thumbnail!}"
                                             alt="${photo.takeTime!?string('yyyy.MM.dd')} - ${photo.name!}">
                                    </a>
                                </figure>
                                <#--<div class="card-content is-overlay is-clipped">
                                    <span class="tag is-info">
                                    ${photo.name}
                                    </span>
                                </div>-->
                            </div>
                            <footer class="card-footer is-hidden-mobile" style="background-color: #fff; height: 64px; overflow-y: hidden;">
                                <a class="card-footer-item">
                                    <#if photo.name?? && photo.name != '' && photo.name?length gt 50 >
                                        ${photo.takeTime!?string('yyyy.MM.dd')} - ${photo.name!?substring(0,50)}
                                    <#else>
                                        ${photo.takeTime!?string('yyyy.MM.dd')} - ${photo.name!}
                                    </#if>
                                </a>
                            </footer>
                        </div>
                    </div>
                </#list>
            </div>
        </#list>
    </@photoTag>
    </div>
</section>
<#include "./layout/common/footer.ftl">
<#include "./layout/plugin/back-to-top.ftl">

</body>
<script src="${settings.cdn_jquery_js!}"></script>
<script src="${theme_base!}/source/lib/lg/js/lightgallery.min.js"></script>
<script src="${theme_base!}/source/lib/lg/js/lg-thumbnail.min.js"></script>
<script src="${theme_base!}/source/lib/lg/js/lg-fullscreen.min.js"></script>
<script>
    var views = []
    <@photoTag method="listTeams">
    <#list teams as item>
        views.push('view_${item.team}')
    </#list>
    </@photoTag>
    views.forEach(function (value) {
        var lg = document.getElementById((value));
        lightGallery(document.getElementById((value)), {
            mode: 'lg-slide',
            cssEasing: 'ease',
            speed: 500,
            thumbnail: true,
            animateThumb: true,
            showThumbByDefault: true,
            autoplay: true,
            progressBar: true,
            selector: '.show'
        });
    });

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
<style>
    .card {
        height: 100%;
    }
    .card-image {
        /*height: 100%;*/
    }

    .image {
        height: 100%;
        /*padding: 5px;*/
    }
    .image img{
        height: 100%;
        border-radius: 0.3rem !important;
    }
    #animated-thumbnail a {
        display: block;
        padding: 5px;
        border-radius: 2px;
    }

    #animated-thumbnail a {
        height: 100%;
    }

    #animated-thumbnail a:hover img {
        transform: scale(1.01);
    }

    #animated-thumbnail a img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        border-radius: 2px;
    }
</style>
</html>
