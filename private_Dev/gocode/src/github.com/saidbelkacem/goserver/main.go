package main

import "fmt"
import "log"
import "net/http"

func helloHandler(w http.ResponseWriter, r *http.Request) {
	if r.URL.Path != "/hello" {
		http.Error(w, "404 not found", http.StatusNotFound)
		return
	}
}

func main() {
	fileserver := http.FileServer(http.Dir("./static/"))
	http.Handle("/", fileserver)
	http.HandlerFunc("/form", formHandler)
	http.HandlerFunc("/hello", helloHandler)

	fmt.Printf("Starting server at port 8080\n")
	if err := http.ListenAndServe(":8080", nil); err != nil {
		log.Fatal(err)
	}
}
