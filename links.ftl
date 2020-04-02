<#include "layout/layout.ftl">
<#include "layout/common/article.ftl">
<#include "layout/comment/comment.ftl">
<@layout title="链接 - ${blog_title!}" canonical="${links_url!}">

  <#include "layout/widget/links.ftl">
  <div class="card widget">
    <div class="card-content">
      <h1 class="menu-label" style="font-size: 20px; text-align:center;">友链申请</h1>
      <div style="margin-left: 10px">
        <h2 style="font-size: 15px; font-weight: bold"># 友链须知</h2>
        <div style="border-left: 3px solid skyblue; margin-left: 20px">
          <p style="margin-left: 20px; font-weight: bold">1. 请确认您的网站可正常访问</p>
          <p style="margin-left: 20px; font-weight: bold">2. 内容包括但不限于原创、技术博客</p>
          <p style="margin-left: 20px; font-weight: bold">3. 不接受含有黄赌毒、政治敏感、暴力的网站</p>
          <p style="margin-left: 20px; font-weight: bold">4. 没有广告</p>
          <p style="margin-left: 20px; font-weight: bold">5. 添加本站链接</p>
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
        <p style="margin-left: 10px; font-weight: bold">有需要互换友链的童鞋也可在下方评论区留言。</p>
      </div>
    </div>
  </div>
  <div class="card" style="margin-top: 2rem">
    <div class="card-content">
      <p class="title is-5">
        评论
      </p>
      <div class="content">
        <div class="post-comment-wrap">
          <script src="${settings.cdn_vue_js!}"></script>
          <script src="${options.comment_internal_plugin_js!'//cdn.jsdelivr.net/npm/halo-comment-normal@1.1.1/dist/halo-comment.min.js'}"></script>
          <script>
            // var configs = {
            //     autoLoad: true,
            //     showUserAgent: true
            // }
          </script>
          <halo-comment id="1" type="post"></halo-comment>
        </div>
      </div>
    </div>
  </div>
</@layout>