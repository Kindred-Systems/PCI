package services

import (
	"encoding/json"
	"net/http"
)

type ChatbotRequest struct {
	ProblemDescription string `json:"problem_description"`
}

type ChatbotResponse struct {
	Solutions []string `json:"solutions"`
}

func ChatbotHandler(w http.ResponseWriter, r *http.Request) {
	var request ChatbotRequest
	json.NewDecoder(r.Body).Decode(&request)

	// Mock AI-generated solutions (Replace with Langflow/OpenAI API call)
	solutions := []string{
		"Solution 1: Use a microservices architecture.",
		"Solution 2: Implement an event-driven system.",
		"Solution 3: Use a monolithic structure for simplicity.",
	}

	response := ChatbotResponse{Solutions: solutions}
	json.NewEncoder(w).Encode(response)
}