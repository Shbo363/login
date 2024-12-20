import 'package:get/get.dart';

import 'Api.get.dart';
class ApiController extends GetxController {
  var dataList = <dynamic>[].obs;  // Observable list of data
  var isLoading = false.obs;
  var errorMessage = ''.obs;

  final ApiClient apiClient = ApiClient();

  // Get data from API
  Future<void> fetchData(String endpoint) async {
    try {
      isLoading(true);  // Start loading
      final data = await apiClient.getData(endpoint);
      dataList.assignAll(data);  // Assign data to the observable list
    } catch (e) {
      errorMessage.value = 'Error: $e';
    } finally {
      isLoading(false);  // Stop loading
    }
  }

  // Post data to API
  Future<void> postData(String endpoint, Map<String, dynamic> body) async {
    try {
      isLoading(true);
      final response = await apiClient.postData(endpoint, body);
      dataList.add(response);  // Add new data to list
    } catch (e) {
      errorMessage.value = 'Error: $e';
    } finally {
      isLoading(false);
    }
  }

  // Put data to API (update existing data)
  Future<void> putData(String endpoint, Map<String, dynamic> body) async {
    try {
      isLoading(true);
      final response = await apiClient.putData(endpoint, body);
      final index = dataList.indexWhere((item) => item['id'] == body['id']);
      if (index != -1) {
        dataList[index] = response;  // Update existing item
      }
    } catch (e) {
      errorMessage.value = 'Error: $e';
    } finally {
      isLoading(false);
    }
  }

  // Delete data from API
  Future<void> deleteData(String endpoint) async {
    try {
      isLoading(true);
      await apiClient.deleteData(endpoint);
      dataList.removeWhere((item) => item['id'] == endpoint);  // Remove from list
    } catch (e) {
      errorMessage.value = 'Error: $e';
    } finally {
      isLoading(false);
    }
  }
}
