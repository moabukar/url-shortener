package main

import (
	"goly/model"
	"goly/server"
)

func main() {
	model.Setup()
	server.SetupAndListen()
}
