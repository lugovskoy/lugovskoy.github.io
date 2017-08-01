---
layout: post
title: Call Static Library Functions from Dynamic Library
published: true
date: 2015-02-04 07:41:31
category: program linking
tags:
  - memory management
  - memory profile
---

hi, this is just a stub

```c++
inline void foo() {
  int *p = malloc(...);
  for (int i = 0; i < 10; i++) {
    *= 10;
  }
  return;
}
```

~~~c++
inline void foo() {
  int *p = malloc(...);
  for (int i = 0; i < 10; i++) {
    *= 10;
  }
  return;
}
~~~

~~~c++
inline void foo() {
  int *p = malloc(...);
}
~~~
{% highlight c++ linenos %}
inline void foo() {
  int *p = malloc(...);
}
{% endhighlight %}



sample text

What is `that` ? 
* absolute
* positional

  New paragraph goes here.
  
HEader 1
========

Header 2
--------

> quote
> another quote


# HEader1

## Header 2

### HEader 3

#### Header 4

Lorem **ipsum** dolor sit *amet*, "consectetur" +adipiscing+ elit. Sed tincidunt molestie turpis in tempus. Curabitur ut sem lorem. Vivamus dictum velit quis magna elementum, sit amet rutrum libero bibendum. Vivamus a eleifend mi. Fusce sodales, orci et efficitur imperdiet, ipsum erat hendrerit erat, in ultricies ex dolor a nisi. Nullam ligula turpis, auctor a neque a, pulvinar fringilla urna. Duis in ligula eu felis ullamcorper auctor ut eu velit. Vestibulum sit amet gravida elit. Donec in lorem vitae nisi commodo interdum a vel neque. Ut lectus tortor, accumsan ac justo ac, sollicitudin luctus erat. Mauris quis quam ac orci ornare eleifend.
