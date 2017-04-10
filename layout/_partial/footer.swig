<footer class="wgt-footer">
	<div class="center">
		&copy; 
		{%if theme.copyright_start %}{{ theme.copyright_start}}-{% endif %}{{ moment(Date.now()).format('YYYY') }}

		{% if config.author %}
			<a href="{{ config.root }}">{{ config.author }}</a>
		{% else %}
			{{ config.title }}
		{% endif %}

		&nbsp;|&nbsp;
		{% include 'social.swig' %}
	</div>
</footer>