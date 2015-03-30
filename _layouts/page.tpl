<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8" />
<meta name="author" content="{{ site.meta.author.name }}" />
<meta name="keywords" content="{{ page.tags | join: ',' }}" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>{{ site.name }}{% if page.title %} / {{ page.title }}{% endif %}</title>
<link href="http://{{ site.host }}/feed.xml" rel="alternate" title="{{ site.name }}" type="application/atom+xml" />
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />
<link rel="stylesheet" type="text/css" href="{{ site.baseurl }}/assets/css/site.css" />
<link rel="stylesheet" type="text/css" href="{{ site.baseurl }}/assets/css/code/github.css" />
{% for style in page.styles %}<link rel="stylesheet" type="text/css" href="{{ style }}" />
{% endfor %}
</head>

<body class="{{ page.pageClass }}">

<div class="main">
	{{ content }}

	<footer>
		<p>&copy; Since 2012</p>
	</footer>
</div>

<aside>
	<h2><a href="{{ site.baseurl }}/">{{ site.name }}</a><a href="{{ site.baseurl }}/feed.xml" class="feed-link" title="Subscribe"><i class="fa fa-rss-square"></i></a></h2>
	
	<nav class="block">
		<ul>
		{% for category in site.custom.categories %}<li class="{{ category.name }}"><a href="{{ site.baseurl }}/category/{{ category.name }}/">{{ category.title }}</a></li>
		{% endfor %}
		</ul>
	</nav>
	
	<!--form action="/search/" class="block block-search">
		<h3>Search</h3>
		<p><input type="search" name="q" placeholder="Search" /></p>
	</form-->
	
	<div class="block block-about">
		<h3>About</h3>
		<figure>
			{% if site.meta.author.gravatar %}<img src="{{ site.meta.gravatar}}{{ site.meta.author.gravatar }}?s=48" />{% endif %}
			<figcaption><strong>{{ site.meta.author.name }}</strong></figcaption>
		</figure>
		<p>爱好宇宙和平</p>
	</div>
	
	<div class="block block-license">
		<h3>Copyright</h3>
		<p><a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/2.5/cn/" target="_blank" class="hide-target-icon" title="Copyright declaration of site content"><img alt="知识共享许可协议" src="http://i.creativecommons.org/l/by-nc-nd/2.5/cn/88x31.png" /></a></p>
	</div>

	<div class="block block-links">
                <h3>Links</h3>
                <p>
                        <a href="http://www.phonzia.com" target="_blank">大P的博客</a><br>
                        <a href="http://dyl.gitcafe.com" target="_blank">AL.的博客</a><br>
                        <a href="http://www.cnblogs.com/alan-forever" target="_blank">Alan-forever</a><br>
                        <a href="http://www.kiwee.me/" target="_blank">Absolute Zero</a><br>
                        <a href="http://www.mewx.org/" target="_blank">MewX</a><br>
                        <a href="http://foursking.github.io/" target="_blank">Setsuna F.Seiei</a><br>
                        
                </p>
    	</div>
	
	<div class="block block-thank">
		<h3>Powered by</h3>
		<p>
			<a href="http://disqus.com/" target="_blank">Disqus</a>,
			<a href="http://elfjs.com/" target="_blank">elf+js</a>,
			<a href="https://github.com/" target="_blank">GitHub</a>,
			<a href="http://www.google.com/cse/" target="_blank">Google Custom Search</a>,
			<a href="http://en.gravatar.com/" target="_blank">Gravatar</a>,
			<a href="http://softwaremaniacs.org/soft/highlight/en/">HighlightJS</a>,
			<a href="https://github.com/mojombo/jekyll" target="_blank">jekyll</a>,
			<a href="https://github.com/mytharcher/SimpleGray" target="_blank">SimpleGray</a>
		</p>
	</div>
</aside>

<script src="http://elfjs.qiniudn.com/code/elf-0.5.0.min.js"></script>
<script src="http://yandex.st/highlightjs/7.3/highlight.min.js"></script>

<script src="{{ site.baseurl }}/assets/js/site.js"></script>
{% for script in page.scripts %}<script src="{{ script }}"></script>
{% endfor %}
<script>
site.URL_GOOGLE_API = '{{site.meta.gapi}}';
site.URL_DISCUS_COMMENT = '{{ site.meta.author.disqus }}' ? 'http://{{ site.meta.author.disqus }}.{{ site.meta.disqus }}' : '';

site.VAR_SITE_NAME = '{{ site.name }}';
site.VAR_GOOGLE_CUSTOM_SEARCH_ID = '{{ site.meta.author.gcse }}';
site.TPL_SEARCH_TITLE = '#{0} / 搜索：#{1}';
site.VAR_AUTO_LOAD_ON_SCROLL = {{ site.custom.scrollingLoadCount }};
</script>
</body>
</html>