---
title: Latest
hidden: true
---

{% assign latest_release = site.releases | sort: "sort_order" | reverse | first %}

<script>
location.replace('{{ latest_release.url | replace: "'","" }}');
</script>


