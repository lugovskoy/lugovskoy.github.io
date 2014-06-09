---
layout: post
title: "In re Telegram"
date: 2014-06-09 22:46:31
---

So! There's a new *WhatsApp-killer* application called Telegram. It's open-source, and claims to have a more secure encryption. It has around 35 million users worldwide, so we could say that it's growing really fast (considering the fact that it was founded in the last year).

We can also say that Telegram is a direct response to WhatsApp. In their FAQs, [they compare the application to WhatsApp.][comparision] Their application's design heavily resembles WhatsApp's, etc. but it doesn't really matter in the end, as this happens quite often in the FOSS world. We know that OpenOffice is the reply to Microsoft Office, becoming its competitor. We know that GIMP answers Photoshop, and so on. But Telegram's case is a little weird - it's basically *equal to WhatsApp, but it advertises itself as a secure messaging option.*

Now this is creepy. Putting Lemma 1.1 and Lemma 1.2 together, we can conclude to this: **people are worried about their privacy, and they demand securer options.**

Making sure that there's a hype towards Telegram, we have only one question remaining: is it going to be a sufficent answer to the users' needs?

Instead of asking the question "how secure is Telegram?", I'll ask the question: "how is Telegram secure?"

## Encryption

Telegram uses a non-standard protocol named [MTProto][mtproto], they wrote it themselves as a custom protocol because TLS was too slow (and too complicated). That's kind of true, because it needs x509 certificates, public-key algorithms such as RSA or DSA, and a key exchange algorithm (e.g. Diffie-Hellman).

Let me remind us all that the first rule of cryptography is ["don't roll your own crypto."][dave] Especially if you're not a trained cryptographer. And I can assure you, the Telegram developers are not.

>The team behind Telegram, led by Nikolai Durov, consists of six ACM champions, half of them Ph.Ds in math. It took them about two years to roll out the current version of MTProto. Names and degrees may indeed not mean as much in some fields as they do in others, but this protocol is the result of thougtful and prolonged work of professionals.

(Source: [Hacker News][hn])

I have a silver medal from a chess tournament in my elementary school and a few certificates from here and there - so what? Math Ph.Ds are not cryptographers. It doesn't prove anything. MTProto is flawed. A beautiful article [here][against] explains why.

The problem is not whether it's secure or not. The problem is, that it's **too complicated** for us to test its security. It's not as easy as saying "it's open-source, go find the exploits, and get your 200 thousand dollars". It's not going to be a person who will find the exploit, it's going to be an organisation and as soon as they find the exploit, they are going to systematically track people. And they are not going to need that 200 thousand dollars. People will continue believing that Telegram is secure. Good job, Telegram, for putting on a contest to risk your security! (see: security through obscurity)

(More about the contest [here][thoughtcrime])

People trust OTR, PGP, etc. because they are simple. One does not try hacking passwords for their lives. People trust on the things built upon what is trusted. And that's why it's critical for the protocol to be simple.

Things like this one aren't welcome in the open source world. Non-standard cryptography protocols should make everyone nervous. Strong theoretical foundations are a necessity for every protocol expecting mass adoption. And the people designing the protocols must be trained cryptographers (instead of Math or Physics Ph.Ds)

## Storage

Yes, Telegram stores your chats (except for the secret chats). In the context of security, this immediately means: "Your chats can be copied for later decryption." This increases the exposure of the messages. A [quote][quote] from Karsten Gerloff:

> There is no cloud, just other peoples' computers.

## It asks for your mobile phone number ...

... everytime you try to log in on another device, or from another client. Close your eyes and think about it for ten seconds. Yeah.

Considered harmful.

[comparision]: https://telegram.org/faq#q-how-is-telegram-different-from-whatsapp
[mtproto]: https://core.telegram.org/mtproto
[dave]: http://security.stackexchange.com/questions/25585/is-my-developers-home-brew-password-security-right-or-wrong-and-why
[hn]: https://news.ycombinator.com/item?id=6916860
[against]: http://unhandledexpression.com/2013/12/17/telegram-stand-back-we-know-maths/
[thoughtcrime]: http://thoughtcrime.org/blog/telegram-crypto-challenge/
[quote]: https://twitter.com/kgerloff/status/468674560813203456
