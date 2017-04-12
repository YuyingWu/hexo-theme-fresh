{% if item.tags && item.tags.length %}
	<section class="post__widget">
		<i class="fa fa-tags"></i>
		<span>{{ __('tag') }}: </span>
		{% for tag in item.tags %}
			<a href="{{ url_for(tag.path ) }}">#{{ tag.name}}</a>
		{% endfor %}
	</section>
{% endif %}