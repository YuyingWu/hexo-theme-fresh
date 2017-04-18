{% if item.type == 'title' %}
	{% set postTitle = true %}
{% endif %}
<article class="article article-excerpt {{ item.layout }} {{ className }}">
	<div class="post-content">
		{%if postTitle %}
			{% include 'article-title.swig' with pipe %}
		{% else %}
			{% include 'article-normal.swig' with pipe %}
		{% endif %}
	</div>
</article>