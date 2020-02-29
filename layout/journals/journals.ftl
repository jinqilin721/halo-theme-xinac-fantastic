<#if (journals.content)?? && journals.content?size gt 0>
    <#macro journalItem journal>
        <div class="card widght">
            <div class="card-content">
                <div class="menu">
                    <div class="journal-info">
                        <div class="journal-img">
                            <img src="${user.avatar!}" alt="">
                        </div>
                        <div class="journal-time">
                            <p>${user.nickname!}</p>
                            ${journal.createTime!}
                        </div>
                    </div>
                    <ul class="menu-list">
                        ${journal.content}
                    </ul>
                </div>
            </div>
        </div>
    </#macro>
    <#list journals.content as journal>
        <@journalItem journal=journal/>
    </#list>
</#if>