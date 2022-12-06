package main

import "fmt"

func main() {
	var count int
  fmt.Println("number for count")
  fmt.Scan(&count)
	for i := 0; i < count; i++ {
    if i % 2 == 0 && i < 5000 {
		fmt.Println(i)
    }
	}
}
