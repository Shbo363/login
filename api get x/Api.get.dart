import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {
  // Base URL of your API
  static const String baseUrl = 'https://jsonplaceholder.typicode.com';

  // Function to GET data
  Future<List<dynamic>> getData(String endpoint) async {
    final response = await http.get(Uri.parse('$baseUrl/$endpoint'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }

  // Function to POST data
  Future<Map<String, dynamic>> postData(String endpoint, Map<String, dynamic> body) async {
    final response = await http.post(
      Uri.parse('$baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(body),
    );

    if (response.statusCode == 201) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to create data');
    }
  }

  // Function to PUT data
  Future<Map<String, dynamic>> putData(String endpoint, Map<String, dynamic> body) async {
    final response = await http.put(
      Uri.parse('$baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(body),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to update data');
    }
  }

  // Function to DELETE data
  Future<void> deleteData(String endpoint) async {
    final response = await http.delete(Uri.parse('$baseUrl/$endpoint'));

    if (response.statusCode == 200) {
      // Successfully deleted
    } else {
      throw Exception('Failed to delete data');
    }
  }
}
