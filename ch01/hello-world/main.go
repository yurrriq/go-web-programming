package main
import (
        "fmt"
        "net/http"
)
func handler(write http.ResponseWriter, request *http.Request) {
        fmt.Fprintf(write, "Hello World, %s!", request.URL.Path[1:])
}
func main() {
        http.HandleFunc("/", handler)
        http.ListenAndServe(":8080", nil)
}
