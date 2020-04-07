> 当前主题已支持 Halo v1.3.0版本，Halo 1.2.0及以下版本请使用 1.2.0 版本主题。

---

感谢分享如此优秀的主题！<br>
有点强迫症，在 https://github.com/Bursteretion/halo-theme-fantastic 主题的基础上做了一点点优化：

> 1、全部日期样式改为：yyyy-MM-dd EE <br>
> 2、首页和文章详情页增加了评论量、浏览量、标签，页脚显示靠左 <br>
> 3、主题设置增加 关注我和文章代码主题 <br>
> 4、友链按排序显示 <br>
> 5、摘要如果有代码时，样式会有问题，增加 word-break: break-word;<br>
> 6、页面优化更加细致，新增CDN优选功能，可自行配置CDN网址
> 7、增加是否显示评论和是否显示文章封面图

<p>
该主题的友链页面暂无法评论。因为Halo的作者没有开发这个地方的评论功能。<br>

解决方案：<br>
    新建一篇文章（比如我用的`Hello Halo`这篇初始文章），然后放入回收站但不要删除。<br>
    将此主题的评论页面代码 <br>
    `<halo-comment id="59" type="sheet"></halo-comment>`部分，
    修改为 <br>
    `<halo-comment id="1" type="post"></halo-comment>`<br>
    `id`就是文章的`数据库id`，不知道的去数据库查一下，然后就可以评论了。
</p>

---

## 预览网址
[https://blog.xinac.cn/](https://blog.xinac.cn/) 

---
---
---

在原来主题的基础上增加了日志页面, 增加了自定义插件功能

## 原预览地址

[https://www.lwjppz.cn](https://www.lwjppz.cn/)


## 预览截图

![](https://cdn.xinac.cn/blog/screenshot_1586231110425.png)

![](https://cdn.xinac.cn/blog/screenshot-2_1586231110444.png)

![](https://cdn.xinac.cn/blog/screenshot-3_1586231110351.png)

![](https://cdn.xinac.cn/blog/screenshot-4_1586231115821.png)


## 使用方法

1. 克隆或者下载
2. 压缩为 zip 压缩包之后在后台的主题设置直接上传即可使用
3. 用Halo自还的程序拉取 `https://github.com/jinqilin721/halo-theme-fantastic.git`
