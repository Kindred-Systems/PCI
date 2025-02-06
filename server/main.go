package main

import (
	"fmt"
	"log"
	"net/http"
)

func healthCheckHandler(w http.ResponseWriter, r *http.Request) {
	w.WriteHeader(http.StatusOK)
	w.Write([]byte(`{"status": "ok"}`))
	fmt.Println("Health check request received") // Log request
}

func main() {
	fmt.Println("Kindred Server is starting on port 8081...")

	http.HandleFunc("/api/health", healthCheckHandler)

	err := http.ListenAndServe("0.0.0.0:8081", nil)
	if err != nil {
		log.Fatalf("Server failed to start: %v", err)
	}
}
