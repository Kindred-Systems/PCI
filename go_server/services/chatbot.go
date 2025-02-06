package services

import (
	"encoding/json"
	"fmt"
	"net/http"
)

// Request & Response Structs
type ChatbotRequest struct {
	ProblemDescription string `json:"problem_description"`
}

type ChatbotResponse struct {
	Solutions []string `json:"solutions"`
}

// Chatbot Handler
func ChatbotHandler(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")

	// Only accept POST requests
	if r.Method != http.MethodPost {
		http.Error(w, `{"error": "Invalid request method"}`, http.StatusMethodNotAllowed)
		return
	}

	var request ChatbotRequest
	err := json.NewDecoder(r.Body).Decode(&request)
	if err != nil {
		http.Error(w, `{"error": "Invalid JSON format"}`, http.StatusBadRequest)
		return
	}

	// Log received input
	fmt.Printf("Received Problem: %s\n", request.ProblemDescription)

	// Mock AI-generated solutions
	solutions := []string{
		"Solution 1: Use Agile methodology.",
		"Solution 2: Implement a monolithic backend.",
		"Solution 3: Use a microservices architecture.",
	}

	// Return JSON response
	response := ChatbotResponse{Solutions: solutions}
	json.NewEncoder(w).Encode(response)
}
