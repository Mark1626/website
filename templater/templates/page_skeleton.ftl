<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="My ctrl c page" />
    <title>~mark1626</title>
    <link rel="stylesheet" href="https://unpkg.com/tachyons@4.12.0/css/tachyons.min.css" />
</head>

<body class="center code bg-washed-green pa3">
    <noscript>Don't worry friend this space is free from javascript</noscript>
    <nav class="pa4-ns">
        <div class="dib">
            <a class="link dim black b f2 db mb3 mb4-ns" title="Home">Nimalan ~mark1626</a>
            <div class="pb3" style="line-height: 25px; font-size: 25px;">
                <a class="link dim gray f6 f5-ns dib mr1" href="./about.html" title="Home">| about |</a>
                <a class="link dim gray f6 f5-ns dib mr1 ml1" href="https://mark1626.github.io/micro-blog/twtxt.txt"
                    title="micro-blog">micro-blog |</a>
                <a class="link dim gray f6 f5-ns dib mr1 ml1" href="https://mark1626.github.io/"
                    title="projects">projects |</a>
                <a class="link dim gray f6 f5-ns dib mr1 ml1" href="https://github.com/mark1626" title="github">github
                    |</a>
                <a class="link dim f6 f5-ns dib mr1 ml1" href="https://webring.xxiivv.com/#random" target="_blank"><img
                        style="width: 25px;" src="https://webring.xxiivv.com/icon.black.svg" /></a>
            </div>
        </div>
        <div class="dib fr">
            <a class="link dim black b f3 tr db mb1 mb1-ns" href="./rss.xml" title="Home">RSS</a>
            <a class="link dim black b f6 tr db mb3 mb4-ns" href="#" title="Home">site-map</a>
        </div>
    </nav>
    <div class="pa3 pa4-ns">
        <blockquote class="athelas ml0 mt0 pl4 black-90 bl bw2 b--black">
            <p class="f5 f4-m f3-l lh-copy measure mt0">
                ${quote}
            </p>
        </blockquote>
    </div>
    <div class="ml3">
        <h3 class="f3">Recent Activity</h3>
        <article class="mw8 mw6-m hidden ba mv4">
            <h1 class="f4 bg-dark-${article.theme} white mv0 pv2 ph3">${article.title}</h1>
            <div class="pa3 bt">
                <p class="f6 f5-ns lh-copy measure mv0">
                    ${article.content}
                </p>
            </div>
        </article>
    </div>
</body>

</html>
