package main

import (
	"github.com/gin-contrib/static"
	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()

	router.Use(static.Serve("/", static.LocalFile("./static", true)))
	router.GET("/ping", func(c *gin.Context) {
		c.String(200, "test")
	})

	router.Run(":80")
}
