package main

import (
	"log"

	"github.com/joho/godotenv"
)

const envFile = "dev.env"

func main() {
	if err := godotenv.Load(envFile); err != nil {
		log.Fatal(err)
	}
}
