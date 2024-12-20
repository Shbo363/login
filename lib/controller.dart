import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// ApiController using GetX for state management
class ApiController extends GetxController {
  // Observable variables
  var inputText = ''.obs; // Text field input text
  var responseText = ''.obs; // API response text

  final String apiUrl = "https://jsonplaceholder.typicode.com/posts"; // Dummy API


// GET API Method
  Future<void> getApi() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        responseText.value = response.body;
      } else {
        responseText.value = "Failed to load data";
      }
    } catch (e) {
      responseText.value = "Error: $e";
    }
  }

  // POST API Method
  Future<void> postApi() async {
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "title": inputText.value,
          "body": "This is a post body",
          "userId": 1,
        }),
      );
      if (response.statusCode == 201) {
        responseText.value = "Post successful: ${response.body}";
      } else {
        responseText.value = "Failed to post data";
      }
    } catch (e) {
      responseText.value = "Error: $e";
    }
  }

  // PUT API Method
  Future<void> putApi() async {
    try {
      final response = await http.put(
        Uri.parse('$apiUrl/1'), // Updating post with ID 1
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "id": 1,
          "title": inputText.value,
          "body": "Updated body",
          "userId": 1,
        }),
      );
      if (response.statusCode == 200) {
        responseText.value = "Put successful: ${response.body}";
      } else {
        responseText.value = "Failed to update data";
      }
    } catch (e) {
      responseText.value = "Error: $e";
    }
  }

  // DELETE API Method
  Future<void> deleteApi() async {
    try {
      final response = await http.delete(Uri.parse('$apiUrl/1')); // Deleting post with ID 1
      if (response.statusCode == 200) {
        responseText.value = "Delete successful: ${response.body}";
      } else {
        responseText.value = "Failed to delete data";
      }
    } catch (e) {
      responseText.value = "Error: $e";
    }
  }
}