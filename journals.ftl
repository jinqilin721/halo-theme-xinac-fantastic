<#include "layout/layout.ftl">
<#include "layout/common/article.ftl">
<@layout title="耳语 - ${blog_title!}" canonical="${journals_url!}">
    <div class="journals">
        <#include "layout/journals/journals.ftl"/>
    </div>
    <div class="journal-page"></div>
    <#if journals.getTotalPages() gt 0>
        <div class="card card-transparent">
            <nav class="pagination is-centered" role="navigation" aria-label="pagination">
                <div class="pagination-previous<#if journals.number gt 0><#else > is-invisible is-hidden-mobile</#if>">
                    <#if journals.number == 1>
                        <a class="is-flex-grow has-text-black-ter" href="${context!}/journals/page/${journals.number}">上一页</a>
                    <#else>
                        <a class="is-flex-grow has-text-black-ter" href="${context!}/journals/page/${journals.number}">上一页</a>
                    </#if>
                </div>
                <div class="pagination-next<#if journals.getTotalPages() gt journals.number+1><#else > is-invisible is-hidden-mobile</#if>">
                    <a class="is-flex-grow has-text-black-ter" href="${context!}/journals/page/${journals
                    .number+2}">下一页</a>
                </div>
                <ul class="pagination-list is-hidden-mobile">
                    <#list rainbow as r>
                        <#if r == journals.number+1>
                            <li><a class="pagination-link is-current" href="${context!}/journals/page/${journals.number+1}">${journals.number+1}</a></li>
                        <#else>
                            <li><a class="pagination-link" href="${context!}/journals/page/${r}">${r}</a></li>
                        </#if>
                    </#list>
                </ul>
            </nav>
        </div>
    </#if>
</@layout>