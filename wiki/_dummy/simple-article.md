---
title: "Simple article"
layout: article
tags: [dummy]
---

This a simple test article containing some ``zig`` code.

~~~zig
/// Zig

const std = @import("std");

pub fn main() void {
    std.debug.print("Hello, {s}\n", .{"world"});
}
~~~
