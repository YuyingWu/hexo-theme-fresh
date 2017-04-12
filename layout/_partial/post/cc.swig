<footer class="post__widget wgt-post-copyright">
	<div class="license-cc">
		<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/" class="license-img">
			<img alt="知识共享许可协议" style="border-width:0" src="http://cdn.sinacloud.net/woodysblog/blog/cc.png" />
		</a>
		<br />
		本作品采用<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">知识共享署名-非商业性使用-相同方式共享 4.0 国际许可协议</a>进行许可。
		<br/><br/>
		若转载本文，请至少保留作者、标题和原文地址~
	</div>

	<ul>
		<li>作者：<a href="{{ config.url }}">{{ config.title }}</a></li>
		<li>标题：{{ item.title }}</li>
		<li>原文地址：{{ config.url }}{{ url_for(item.path) }}</li>
		<li>发表日期：{{ item.date.format(config.date_format) }}</li>
		<li>社交媒体：{% include '../social.swig' %}</li>
		<li>Feed订阅：<a href="{{ config.url }}/atom.xml"><i class="fa fa-rss"></i> RSS</a></li>
	</ul>
</footer>