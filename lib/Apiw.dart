import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Mug {
  Future get(String url) async {
    var response = await http.get(Uri.parse(url));
  }

  Future post(String url, Map body) async {
    var response = await http.post(Uri.parse(url), body: body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      print('error');
    }
  }

  Future delete(String url, Map body) async {
    var response = await http.delete(Uri.parse(url), body: body);
    if (response.statusCode == 200) {
      return response.body;
    }
  }
  Future<void> updateResource(String url, Map<String, dynamic> data) async {
    try {
      final response = await http.put(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(data),
      );

      if (response.statusCode == 200) {
        // Success
        print('Resource updated successfully: ${response.body}');
      } else {
        // Error response
        print('Failed to update resource: ${response.statusCode} ${response.body}');
      }
    } catch (e) {
      print('Error occurred: $e');
    }
  }

}
