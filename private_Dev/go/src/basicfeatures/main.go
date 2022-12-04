package main

import (
	"fmt"
	"strconv"
)

func main(){
  myString := "0"

  if bool1, b1error := strconv.ParseBool(myString); b1error == nil {
    fmt.Println("Parsed value:", bool1)
  } else {
    fmt.Println("cannot parse")
  }
}
