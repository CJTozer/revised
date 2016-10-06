package main

import (
    "log"
    // "net/http"
    "os"

    "github.com/gin-gonic/gin"
)

func main() {
    port := os.Getenv("PORT")

    if port == "" {
        log.Fatal("$PORT must be set")
    }

    router := gin.Default()
    router.Static("/", "./dist")
    router.LoadHTMLFiles("dist/index.html")
    // router.GET("/", func(c *gin.Context) {
    //     c.HTML(200, "./dist/index.html", gin.H{
    //         "title": "reVISed",
    //     })
    // })

    // // For later
    // api := router.Group("/api")
    // {
    //     api.GET("/events", func(c *gin.Context) {
    //         c.JSON(200, gin.H{
    //             "message": "pong",
    //         })
    //     })
    // }

    router.Run(":" + port)
}
