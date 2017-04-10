{% if item.tags && item.tags.length %}
	<span class="tags">
		<i class="fa fa-tags"></i>
		{% for tag in item.tags %}
			<a href="{{ url_for(tag.path ) }}">#{{ tag.name}}</a>
		{% endfor %}
	</span>
{% endif %}