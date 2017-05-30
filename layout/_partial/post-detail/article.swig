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
			{% include '../post/shield.swig' %}
		</footer>

		{% if !index && item.layout == 'post' %}
			{% include '../comment.swig' with pipe %}
		{% endif %}
	</div>
</article>