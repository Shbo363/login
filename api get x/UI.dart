import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controler.dart';

void main() {
  runApp(UI());
}

class UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final ApiController apiController = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX API Example')),
      body: Obx(() {
        if (apiController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        if (apiController.errorMessage.isNotEmpty) {
          return Center(child: Text(apiController.errorMessage.value));
        }
        return ListView.builder(
          itemCount: apiController.dataList.length,
          itemBuilder: (context, index) {
            final item = apiController.dataList[index];
            return ListTile(
              title: Text(item['title'] ?? 'No Title'),
              subtitle: Text('ID: ${item['id']}'),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Example: Fetch data
          apiController.fetchData('posts');
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
