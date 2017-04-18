{# 标签归档 #}

{% extends 'ancestor.swig' %}

{% block stylesheet %}
<link rel="stylesheet" href="/build/css/archive{% include '_common/timestamp.swig' %}.css">
{% endblock %}

{% block primary %}

	{% include '_partial/archive.swig' with pipe %}

{% endblock %}