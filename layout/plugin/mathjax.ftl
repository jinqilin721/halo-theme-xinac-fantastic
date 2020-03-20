<#if (is_post?? || is_sheet??) && settings.mathjax_enable!false>
    <script src="${settings.cdn_mathjax_js!}" defer></script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            MathJax.Hub.Config({
                'HTML-CSS': {
                    matchFontHeight: false
                },
                SVG: {
                    matchFontHeight: false
                },
                CommonHTML: {
                    matchFontHeight: false
                },
                tex2jax: {
                    inlineMath: [
                        ['$', '$'],
                        ['\\(', '\\)']
                    ]
                }
            });
        });
    </script>
</#if>