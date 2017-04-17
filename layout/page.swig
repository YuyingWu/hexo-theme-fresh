{#
	分页
	/source/**.md 文章使用此模板
#}

{% extends 'ancestor.swig' %}

{% block bodyClass %}class="page-page"{% endblock %}

{% block stylesheet %}
<link rel="stylesheet" href="/build/css/post_201704171545.css">
{% endblock %}

{% block primary %}

	{% set pipe = {item: page, unTitleLink: true} %}
	{% include '_partial/article.swig' with pipe %}

{% endblock %}
