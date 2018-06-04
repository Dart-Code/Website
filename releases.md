---
title: Releases
---

{% assign items = site.releases | where_exp:"item","item.hidden != true" | sort: "sort_order" | reverse %}

<ul>
	{% for item in items %}
		<li {% if page.url == item.url %}class="current"{% endif %}><a href="{{ item.url | escape }}">{{ item.title | escape }}</a> {{ item.excerpt }}</li>
	{% endfor %}
</ul>
