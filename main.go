package main

import (
	"github.com/gin-gonic/gin"
	"net/http"
)

func main() {
	r := gin.Default()
	r.GET("/", func(context *gin.Context) {
		context.String(http.StatusOK, "git ops test")
	})
	if err := r.Run(); err != nil {
		panic(err)
	}
}
