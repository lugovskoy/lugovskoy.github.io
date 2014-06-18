---
layout: post
title: "Productive Days!"
date: 2014-06-18 23:00:31
---

I've been very, very productive in the last few days. As a casual programmer, I love writing little scripts/hacks that make my life easier. So let's go over what I did in the last few days:

[oiseau][oiseau]
================

oiseau is probably my *magnum opus*. It's a [Last.fm][lfm] scrobbler for [Music Player Daemon][mpd]. I wrote it only because every other scrobbler was somehow buggy.

* scmpc submitted duplicate tracks.
* mpdscribble included MusicBrainz IDs in scrobbles, resulting in wrong tags getting submitted to Last.fm
* mpdas didn't work on my machine (crashed with 'illegal hardware instruction'. I actually liked mpdas a lot)
* mpdcron just didn't do its job
* sonata didn't have a CLI interface and was much more than a scrobbler

So, oiseau is actually a pretty minimal solution for my problem, and it actually has some nice [features][features].

It's licensed in the BSD 2-clause license, and you can view the source code here: [GitHub.][oiseau]

[flip][flip]
============

I love puzzles. I also love solving puzzles, but after a couple of times solving, it's no longer my job to solve the puzzle: I'd like it to be automated. So I wrote this little script to solve "Flip" from [Simon Tatham's puzzle collection.][sgtatham]

I would say that it has good performance. An excerpt from the README:

> Solves a 5x5 puzzle (the standard) in 0.01 seconds, and ten random 12x12 puzzles in approx. 34.8 seconds (in a pretty old machine).

> It solved a random 15x15 puzzle in 83.63 seconds, 132 moves, and generated a solution table consisting of 32766 entries. The bulk of the computation is in brute-forcing the solution table. TODO: optimize the solution table generation process

You can find the details as to how it works and how you can use it over at [GitHub.][flip]

[truth][truth]
=============

I love customizing my desktop. This is a recent screenshot of it:

![Desktop](http://pub.iotek.org/p/J6Vn3yp.png)

As you can see, I'm now using a light colorscheme instead of a dark one. Well, the dark colorschemes looked all hackerish and all, but I find light ones much more atmospheric and generally happier. Come on, we're in summer now! Also, [/r/unixporn][unixporn] patrons are now looking for light colorschemes, it's the new fashion now. Or, as some of my friends in [nixers][nixers] would put it:

> Light is the new dark.

And I needed a new colorscheme, so I wrote a new one. It looks like this:

![The Truth](http://pub.iotek.org/p/MM5PD2c.png)

Fetch it from [GitHub!][truth]

Sum-Up
======

So! Wrote all of this in 4 days. Oiseau had lots of bugs and issues, so I focused more on it. The more I write Python applications, the more I remember my love of the language Python. I like it all, except the packaging system which is traditional in the Python world. Couldn't it be like C programs, where I would put it all in a folder named `src/` and the rest is up to me? I didn't follow the rules, and I hope it doesn't get me in any trouble :p

Lots of coffee were spent, but I would say that I'm really satisfied with the end result. Happy hacking!

[oiseau]: https://github.com/berkoz/oiseau
[lfm]: http://www.last.fm
[mpd]: http://www.musicpd.org/
[features]: https://github.com/berkoz/oiseau#features
[flip]: https://github.com/berkoz/flip
[sgtatham]: http://www.chiark.greenend.org.uk/%7Esgtatham/puzzles/
[truth]: https://github.com/berkoz/truth
[unixporn]: http://www.reddit.com/r/unixporn
[nixers]: http://nixers.net/
