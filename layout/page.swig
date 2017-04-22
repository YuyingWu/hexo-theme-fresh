{#
	分页
	/source/**.md 文章使用此模板
#}

{% extends 'ancestor.swig' %}

{% block bodyClass %}class="page-page"{% endblock %}

{% block stylesheet %}
<link rel="stylesheet" href="/build/css/post{% include '_common/timestamp.swig' %}.css">
{% endblock %}

{% block title %}{{ page.title }} - {{ config.title }}{% endblock %}

{% block primary %}

	{% set pipe = {item: page, unTitleLink: true} %}
	{% include '_partial/post-detail/article.swig' with pipe %}

{% endblock %}
