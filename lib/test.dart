
import 'package:get/get.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'controller.dart';

class ApiDemo extends StatelessWidget {
  // Instantiate the controller
  final ApiController apiController = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Demo with GetX'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TextField to input text
            TextField(
              onChanged: (text) => apiController.inputText.value = text,
              decoration: InputDecoration(
                labelText: 'Enter text for POST/PUT',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // Elevated Buttons for each API Method
            ElevatedButton(
              onPressed: () => apiController.getApi(),
              child: Text('GET API'),
            ),
            ElevatedButton(
              onPressed: () => apiController.postApi(),
              child: Text('POST API'),
            ),
            ElevatedButton(
              onPressed: () => apiController.putApi(),
              child: Text('PUT API'),
            ),
            ElevatedButton(
              onPressed: () => apiController.deleteApi(),
              child: Text('DELETE API'),
            ),
            SizedBox(height: 20),

            // Obx widget to reactively display the input text
            Obx(() {
              return Text('API Response: ${apiController.responseText.value}',
                  style: TextStyle(fontSize: 18));
            }),
          ],
        ),
      ),
    );
  }
}

