{% if item.categories && item.categories.length %}
	<section class="post__widget">
		<i class="fa fa-folder"></i>
		<span>{{ __('category') }}：</span>
		{% for category in item.categories %}
			<a href="{{ url_for(category.path ) }}">{{ category.name}}</a>
		{% endfor %}
	</section>
{% endif %}