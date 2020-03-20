<#macro comment post,type>
    <#if !post.disallowComment!false>
        <script src="${settings.cdn_vue_js!}"></script>
        <script src="${options.comment_internal_plugin_js!'//cdn.jsdelivr.net/npm/halo-comment-normal@1.1.1/dist/halo-comment.min.js'}"></script>
        <halo-comment id="${post.id}" type="${type}"/>
    </#if>
    <style>
        .halo-comment .comment-placeholder {
            border: none !important;
        }
        .comment-item-content img {
            width: 100%;
        }
    </style>
</#macro>