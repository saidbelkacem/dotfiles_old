package main

import (
	"fmt"
	// "math/rand"
)

func main(){
  const price, tax float32 = 275.00, 28.0
  const quantity, inStock = 2, true
  fmt.Println("sum:", quantity * (price + tax))
  fmt.Println("In stock:",inStock)
}
