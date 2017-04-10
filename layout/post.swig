{#
	文章
	/source/_posts/**.md 使用此模板
#}

{% extends 'ancestor.swig' %}

{% block primary %}

	{% set pipe = {
		item: page,
		unTitleLink: true,
		className: 'article-post'
	} %}

	{% include '_partial/article.swig' with pipe %}

{% endblock %}