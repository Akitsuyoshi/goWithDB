// main.go

package main

import "os"

func main() {
	os.Setenv("APP_DB_USERNAME", "akiyamatsuyoshi")
	os.Setenv("APP_DB_PASSWORD", "akiyamatsuyoshi")
	os.Setenv("APP_DB_NAME", "akiyamatsuyoshi")

	a := App{}
	a.Initialize(
		os.Getenv("APP_DB_USERNAME"),
		os.Getenv("APP_DB_PASSWORD"),
		os.Getenv("APP_DB_NAME"))

	a.Run(":8080")
}
