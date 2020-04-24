<#include "layout/layout.ftl">
<#include "layout/comment/comment.ftl">
<@layout title="${sheet.title!} | ${blog_title!} " canonical="${links_url!}">
  <style>
    .clearfix:after {
      visibility: hidden;
      display: block;
      font-size: 0;
      content: " ";
      clear: both;
      height: 0;
    }
    .clearfix {
      *zoom: 1;
    }
    .menu-list li {
      width: 270px;
      max-width: 300px;
      margin: 15px 20px;
      background-color: #fff;
      border-radius: 6px;
      box-shadow: 0 0.25rem 1rem rgba(48, 55, 66, .15);
      color: #4a4a4a;
      display: block;
      float: left;
    }
    .media-content p {
      margin: 0;
      padding-top: 10px;
    }
    .menu-list a {
      padding: 0;
      cursor: pointer;
      color: #3273dc;
    }
    .menu-list a:hover {
      text-decoration: underline;
      background-color: #fff !important;
    }
  </style>
  <div class="card widget">
    <div class="card-content">
      <div class="menu">
        <h1 class="menu-label">${sheet.title!}</h1>
      <@linkTag method="listTeams">
        <#list teams as item>
          <#if item.team?? && item.team != ''>
            <h3 style="width: 100%; margin: 10px;">${item.team!}</h3>
          </#if>
          <ul class="menu-list clearfix">
            <#list item.links?sort_by('priority')?reverse as link>
            <li>
                <div class="media">
                  <div class="media-left">
                    <figure class="image is-64x64">
                      <#if link.logo?? && link.logo != ''>
                        <img src="${link.logo}" alt="${link.name}">
                      <#else>
                        <img src="${theme_base!}/source/images/gg.jpg" alt="${link.name!}">
                      </#if>
                    </figure>
                  </div>
                  <div class="media-content">
                    <p class="link-title">${link.name!}</p>
                    <p class="link-desc"><a href="${link.url!}" target="_blank" title="${link.description!}"> ${link.url!}</a></p>
                  </div>
                </div>
            </li>
            </#list>
          </ul>
        </#list>
      </@linkTag>
    </div>
    </div>
  </div>

  <div class="card widget">
    <div class="card-content">
      <h1 class="menu-label" style="font-size: 20px; text-align:center;">友链申请</h1>
      <div style="margin-left: 10px">
        <h2 style="font-size: 15px; font-weight: bold"># 友链须知</h2>
        <div style="border-left: 3px solid skyblue; margin-left: 20px">
          <p style="margin-left: 20px; font-weight: bold">1. 请确认您的网站可正常访问</p>
          <p style="margin-left: 20px; font-weight: bold">2. 不接受含有黄赌毒、政治敏感、暴力的网站</p>
          <p style="margin-left: 20px; font-weight: bold">3. 添加本站链接</p>
        </div>
        <h2 style="font-size: 15px; font-weight: bold"># 本站信息</h2>
        <div style="border-left: 3px solid skyblue; margin-left: 20px">
          <p style="margin-left: 20px; font-weight: bold">名称：${user.nickname!}</p>
          <p style="margin-left: 20px; font-weight: bold">链接：<a target="_blank" href="${context!}">${context!}</a></p>
          <p style="margin-left: 20px; font-weight: bold">头像：<a target="_blank" href="${context!}avatar">${context!}avatar</a></p>
          <p style="margin-left: 20px; font-weight: bold">描述：${user.description!}</p>
        </div>
        <p style="margin-left: 10px; font-weight: bold">本人会不定期清理无法访问的链接，请确保自己的链接长期有效
        </p>
        <p style="margin-left: 10px; font-weight: bold">有需要互换友链的童鞋可在下方评论区留言。</p>
      </div>
    </div>
  </div>

  <div class="card" style="margin-top: 2rem">
    <div class="card-content">
      <p class="title is-5">评论</p>
      <@comment post=sheet type="sheet" />
    </div>
  </div>

</@layout>
