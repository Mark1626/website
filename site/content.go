package main

import (
	"math/rand"
)

// Colors - green, pink, gray, blue
var SiteContent = Content{
	Quote: Quotes[rand.Int()%len(Quotes)],
	Articles: []Article{
		{
			"Origami",
			"green",
			"https://mark1626.github.io/knowledge/#origami",
			"Fri, 29 May 2020 10:45:59 GMT",
			"Have been trying out origami for quite a while now in the lockdown. You can check it out at my <a href=\"https://mark1626.github.io/knowledge/#origami\">repo</a>",
		},
	},
}
