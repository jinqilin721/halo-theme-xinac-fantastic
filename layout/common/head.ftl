<#if settings.theme_static_base??>
    <#if settings.theme_static_base == ''>
    <#elseif settings.theme_static_base == '/' || settings.theme_static_base == '.'>
        <#assign theme_base = ''>
    <#else>
        <#assign theme_base = settings.theme_static_base>
    </#if>
</#if>

<#function check_post_thumbnail_enable>
    <#return (settings.post_thumbnail_enable?? && settings.post_thumbnail_enable != 'false')>
</#function>

<#assign time_count = 0>
<#function post_thumbnail_url src>
    <#assign time_count = time_count + 1>
    <#if check_post_thumbnail_enable()>
        <#assign timestamp = .now?long + time_count>
        <#assign random_pic = timestamp?substring(timestamp?length - 1) + ".jpg">
        <#if settings.post_thumbnail_enable == 'true'>
            <#if src != ''>
                <#return src>
            <#else>
                <#return theme_base + "/source/images/cover/" + random_pic>
            </#if>
        <#elseif settings.post_thumbnail_enable == 'random_pic'>
            <#return theme_base + "/source/images/cover/" + random_pic>
        </#if>
    </#if>
</#function>