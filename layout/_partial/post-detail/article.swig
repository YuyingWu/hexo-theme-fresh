<article class="article article-detail {{ item.layout }} {{ className }}">
	<div class="post-content">
		<header>
			{% include '../post/title.swig' with pipe %}
			{% include '../post/meta.swig' %}
			{% include '../post/category.swig' %}
		</header>
		<div class="entry">
			{{ item.content }}
		</div>

		<footer>
			{% include '../post/tag.swig' %}
			{% include '../post/donate.swig' %}
			{% include '../post/cc.swig' %}
		</footer>
	</div>
</article>