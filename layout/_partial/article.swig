<article class="article {{ item.layout }} {{ className }}">
	<div class="post-content">
		<header>
			{% include 'post/title.swig' with pipe %}
			{% include 'post/meta.swig' %}
		</header>
		<div class="entry">
			{% if item.excerpt && index %}
				{{ item.excerpt }}
			{% else %}
				{{ item.content }}

				{% include 'post/cc.swig' %}
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