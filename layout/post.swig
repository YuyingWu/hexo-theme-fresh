{#
	文章
	/source/_posts/**.md 使用此模板
#}

{% extends 'ancestor.swig' %}

{% block bodyClass %}class="page-post"{% endblock %}

{% block header %}{% endblock %}

{% block primary %}

	{% set pipe = {
		item: page,
		unTitleLink: true,
		className: 'article-post'
	} %}

	{% include '_partial/article.swig' with pipe %}

{% endblock %}

{% block extendElement %}
	{% include '_partial/header.swig' with {atBottom: true} %}
{% endblock %}