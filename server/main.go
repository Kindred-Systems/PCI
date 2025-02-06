package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	fmt.Println("Kindred Server is running...")

	http.HandleFunc("/api/health", func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusOK)
		w.Write([]byte(`{"status": "ok"}`))
	})

	log.Fatal(http.ListenAndServe(":8081", nil))
}
