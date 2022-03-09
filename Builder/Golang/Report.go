package main

import "fmt"

type Report struct {
	filename string
	content string
}

func (report *Report) setFilename(filename string)  {
	report.filename = filename
}

func (report *Report) setContent(content string)  {
	report.content = content
}

func (report *Report) describe() {
	if report.filename != "" {
		fmt.Println("The name of the file is", report.filename)
	} else {
		fmt.Println("The name file doesn't have any name")
	}

	if report.content != "" {
		fmt.Println("The content of the file is", report.content)
	} else {
		fmt.Println("The name file doesn't have any content")
	}
}