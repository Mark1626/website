package main

import (
	"math/rand"
)

// Colors - green, pink, gray, blue
var SiteContent = Content{
	Quote: Quotes[rand.Int()%len(Quotes)],
	Articles: []Article{
		{
			"Title 1",
			"green",
			"Content 1",
		},
		{
			"Title 2",
			"blue",
			"Content 2",
		},
	},
}
