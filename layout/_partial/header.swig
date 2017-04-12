<header{% if atBottom %} class="header--bottom"{% endif %}>
	<section class="u-clearfix wide-center header__container">
		<nav class="grid-r">
			<ul class="u-clearfix header__nav--list">
				{% for menu in theme.menu %}
					<li><a href="{{ menu }}">{{ __(loop.key) }}</a></li>
				{% endfor %}
			</ul>
		</nav>

		<div class="grid">
			<h1>
			<a href="{{ config.root }}">
			<svg version="1.0" xmlns="http://www.w3.org/2000/svg"
			 width="40px" height="40px" viewBox="0 0 100.000000 100.000000"
			 preserveAspectRatio="xMidYMid meet">
			<g transform="translate(0.000000,100.000000) scale(0.100000,-0.100000)"
			fill="#000000" stroke="none">
			<path d="M320 673 c-7 -32 -19 -78 -27 -102 -10 -30 -11 -46 -4 -50 6 -4 12
			-58 13 -131 l3 -125 38 -3 37 -3 0 168 c0 116 5 185 15 223 21 78 20 80 -24
			80 l-40 0 -11 -57z"/>
			<path d="M473 712 c-55 -4 -56 -22 -2 -22 39 0 40 -1 35 -27 -3 -16 -8 -54
			-12 -85 l-6 -58 72 1 c51 1 75 -3 81 -13 11 -16 12 -208 2 -209 -5 0 -59 -1
			-120 -2 -62 -1 -113 -5 -113 -9 0 -5 72 -8 160 -8 l160 0 0 113 c0 138 -5 146
			-99 149 l-62 2 6 50 c10 72 14 88 20 95 3 3 37 5 76 3 40 -1 69 3 69 8 0 6
			-12 10 -27 11 -16 0 -66 1 -113 2 -47 1 -104 1 -127 -1z"/>
			</g>
			</svg>
			<span>{{ config.title }}</span>
			</a>
			</h1>
		</div>
	</section>
</header><!-- /header -->