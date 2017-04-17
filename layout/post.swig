{#
	文章
	/source/_posts/**.md 使用此模板
#}

{% extends 'ancestor.swig' %}

{% block stylesheet %}
<link rel="stylesheet" href="/build/css/post_201704171545.css">
{% endblock %}

{% block bodyClass %}class="page-post"{% endblock %}

{% block primary %}
	{% set pipe = {
		item: page,
		unTitleLink: true,
		className: 'article-post'
	} %}

	{% include '_partial/article.swig' with pipe %}
{% endblock %}