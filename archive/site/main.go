package main

import (
	"io/ioutil"
	"log"
	"os"
	"text/template"
)

type Article struct {
	Title   string
	Theme   string
	Url     string
	PubDate string
	Content string
}

type Content struct {
	Quote    string
	Articles []Article
}

func handleError(err error) {
	if err != nil {
		log.Fatal(err)
	}
}

func main() {
	html, err := os.Create("./index.html")
	handleError(err)
	defer html.Close()

	rss, err := os.Create("./rss.xml")
	handleError(err)
	defer rss.Close()

	templateRSS, err := ioutil.ReadFile("./rss_template.xml")
	handleError(err)

	templateHTML, err := ioutil.ReadFile("./template.html")
	handleError(err)

	rssTmpl := template.Must(template.New("rss").Parse(string(templateRSS)))
	htmlTmpl := template.Must(template.New("site").Parse(string(templateHTML)))

	err = htmlTmpl.Execute(html, SiteContent)
	handleError(err)
	err = rssTmpl.Execute(rss, SiteContent)
}
