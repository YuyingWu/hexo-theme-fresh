{% if item.categories && item.categories.length %}
	<span class="categories">
		<i class="fa fa-folder"></i>
		{% for category in item.categories %}
			<a href="{{ url_for(category.path ) }}">{{ category.name}}</a>
		{% endfor %}
	</span>
{% endif %}