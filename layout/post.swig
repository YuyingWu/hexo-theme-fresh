{#
	文章
	/source/_posts/**.md 使用此模板
#}

{% extends 'ancestor.swig' %}

{% block stylesheet %}
<link rel="stylesheet" href="/build/css/post{% include '_common/timestamp.swig' %}.css">
{% endblock %}

{% block title %}{{ page.title }} - {{ config.title }}{% endblock %}

{% block bodyClass %}class="page-post"{% endblock %}

{% block primary %}
	{% set pipe = {
		item: page,
		unTitleLink: true,
		className: 'article-post'
	} %}
	{% include '_partial/post-detail/article.swig' with pipe %}
{% endblock %}