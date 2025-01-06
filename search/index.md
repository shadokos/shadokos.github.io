---
layout: page
title: "Search"
---

{% if site.google and site.google.cx %}

  <script async src="https://cse.google.com/cse.js?cx={{ site.google.cx }}"></script>
  <style>
    .gsc-control-cse {
      padding-top: 0;
      margin-top: -1rem;
    }</style>
  <div class="gcse-searchresults-only"></div>

{% else %}

<div class="alert alert-danger" role="alert">
    <h3>Search engine disabled</h3>

    To enable the search engine, please set the <code>google_search.cx</code> parameter in the <code>_config.yml</code> file.
    the cx parameter is the custom search engine id that you can get from the google custom search engine console.

    To create a custom search engine, you can visit <a href="https://cse.google.com/cse/">Google Custom Search Engine</a>.
</div>
{% endif %}
