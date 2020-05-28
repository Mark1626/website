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
	Content string
}

type Content struct {
	Quote    string
	Articles []Article
}

func main() {
	templateHTML, err := ioutil.ReadFile("./template.html")
	if err != nil {
		log.Fatal(err)
	}

	tmpl := template.Must(template.New("site").Parse(string(templateHTML)))

	err = tmpl.Execute(os.Stdout, SiteContent)
	if err != nil {
		log.Fatal(err)
	}
}
