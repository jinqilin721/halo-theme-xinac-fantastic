<#if settings.theme_static_base??>
    <#if settings.theme_static_base == ''>
    <#elseif settings.theme_static_base == '/' || settings.theme_static_base == '.'>
        <#assign theme_base = ''>
    <#else>
        <#assign theme_base = settings.theme_static_base>
    </#if>
</#if>