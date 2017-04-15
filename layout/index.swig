{# 首页 #}

{% extends 'ancestor.swig' %}

{% block bodyClass %}class="page-index"{% endblock %}

{% block stylesheet %}
<link rel="stylesheet" href="/build/css/index.css">
{% endblock %}

{% block primary %}
	<section class="u-maxWidth640 u-marginAuto">
		{% for post in page.posts %}
			{% set pipe = {
				item: post,
				index: true,
				className: "post-index"
			} %}

			{% include '_partial/article.swig' with pipe %}
		{% endfor %}

		{% include '_partial/pagination.swig' %}
	</section>
{% endblock %}