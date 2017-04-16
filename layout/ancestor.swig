{# root 模板 #}

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"/>
  	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  	<meta name="renderer" content="webkit">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="description" content="{{ config.description }}">

	{% block stylesheet %}
	<link rel="stylesheet" href="/build/css/post.css">
	{% endblock %}

	<title>{% block title %}{{ config.title }} - {{ config.subtitle }}{% endblock %}</title>
</head>
<body {% block bodyClass %}{% endblock %}>

{% block header %}
	{% include '_partial/header.swig' %}
{% endblock %}

<div id="content">
	<div class="center">
		<div class="main-col">
			{% block primary %}{% endblock %}
		</div>
		{% block extendElement %}{% endblock %}
	</div>
</div>

{% block styleFontawesome %}
<link rel="stylesheet" href="/build/css/font-awesome.css">
{% endblock %}

{% block footer %}
	{% include '_partial/footer.swig' %}
{% endblock %}

{% block afterFooter %}{% endblock %}

{# <script src="http://apps.bdimg.com/libs/zepto/1.1.4/zepto.min.js"></script>
<script src="/build/js/aio.js"></script> #}

<script type="text/javascript" src="/build/js/lib/mod.js"></script>

{% block scripts %}
<script type="text/javascript" src="/build/js/aio.js"></script>
{% endblock %}

</body>
</html>