---
title: "Awesome article"
layout: article
tags: [dummy]
order_id: 2
---

This is an awesome article demonstrating the power of the github_include plugin I wrote for this site.

You can include code snippets from github repository like this:

{% raw %}
```liquid
{% github_include repo revision path %}
```
{% endraw %}

Here, `repo` is the complete repository name (`username/repo`, or `organization/repo`), `revision` is the branch, tag, or commit hash and `path` is the path to the file you want to include.

For example, the following snippet includes a zig code snippet from the [ShadokOS](https://github.com/shadokos/kfs) project:

## Snippet

{% raw %}
```liquid
<div>{% github_include shadokos/kfs kfs-4 src/kernel.zig %}</div>
```
{% endraw %}

## Output

<div>{% github_include shadokos/kfs main src/kernel.zig %}</div>

