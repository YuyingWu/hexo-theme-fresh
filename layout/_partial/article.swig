<article class="article {{ item.layout }} {{ className }}">
	<div class="post-content">
		<header>
			{% include 'post/title.swig' with pipe %}
			{% include 'post/meta.swig' %}

			{% if !index && item.layout == 'post' %}
				{% include 'post/category.swig' %}
				{% include 'post/tag.swig' %}
			{% endif %}
		</header>
		<div class="entry">
			{% if item.excerpt && index %}
				{{ item.excerpt }}
			{% else %}
				{{ item.content }}

				{% if item.layout == 'post' %}
					{% include 'post/donate.swig' %}
					{% include 'post/cc.swig' %}
				{% endif %}
			{% endif %}
		</div>
		<footer class="clearfix">
			{% if index %}
				{% if item.excerpt %}
					<div class="read-more">
						<a href="{{ url_for(item.path) }}#more" class="more-link">{{ theme.excerpt_link }}</a>
					</div>
				{% endif %}
			{% endif %}
		</footer>
	</div>
</article>