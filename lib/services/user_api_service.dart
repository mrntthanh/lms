import 'package:get/get.dart';
import 'package:vus_lms/services/base_api_service.dart';

class UserApiService extends BaseApiService {
 // Sample api request
  Future<dynamic> getUser(int id) => get('${httpClient.baseUrl}/users/$id'); 
}