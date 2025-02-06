import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class FramingScreen extends StatefulWidget {
  const FramingScreen({super.key});

  @override
  _FramingScreenState createState() => _FramingScreenState();
}

class _FramingScreenState extends State<FramingScreen> {
  final TextEditingController _controller = TextEditingController();
  List<Map<String, String>> messages = [];
  bool _isApiHealthy = false;

  @override
  void initState() {
    super.initState();
    _checkApiHealth();
    Timer.periodic(const Duration(seconds: 5), (timer) => _checkApiHealth());
  }

  Future<void> _checkApiHealth() async {
    final String apiUrl = "http://localhost:8081/api/health"; // Change this for emulator

    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        setState(() {
          _isApiHealthy = true;
        });
      } else {
        setState(() {
          _isApiHealthy = false;
        });
      }
    } catch (e) {
      setState(() {
        _isApiHealthy = false;
      });
    }
  }

  Future<void> sendMessage() async {
    String userMessage = _controller.text;
    if (userMessage.isEmpty) return;

    setState(() {
      messages.add({"role": "user", "text": userMessage});
    });

    _controller.clear();

    final String apiUrl = "http://localhost:8081/api/chatbot"; // Change this for emulator

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"problem_description": userMessage}),
      );

      if (response.statusCode == 200) {
        List<dynamic> solutions = jsonDecode(response.body)["solutions"];

        setState(() {
          for (String solution in solutions) {
            messages.add({"role": "bot", "text": solution});
          }
        });
      } else {
        setState(() {
          messages.add({"role": "bot", "text": "Failed to retrieve solutions."});
        });
      }
    } catch (e) {
      setState(() {
        messages.add({"role": "bot", "text": "Error: Unable to connect to server."});
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Problem Framing")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.circle,
                  color: _isApiHealthy ? Colors.green : Colors.red,
                  size: 12,
                ),
                const SizedBox(width: 8),
                Text(
                  _isApiHealthy ? "Server Online" : "Server Offline",
                  style: TextStyle(fontSize: 12, color: _isApiHealthy ? Colors.green : Colors.red),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                return Align(
                  alignment: message["role"] == "user"
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: message["role"] == "user"
                          ? Colors.blue[200]
                          : Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(message["text"]!),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: "Describe your problem...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: sendMessage,
                  child: const Text("Send"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
