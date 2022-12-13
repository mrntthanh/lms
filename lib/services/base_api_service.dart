import 'package:get/get.dart';
import 'package:vus_lms/models/base_model.dart';

class BaseApiService extends GetConnect {
  @override
  void onInit() {

    //TODO set base Url heare
    httpClient.baseUrl = 'https://api.covid19api.com';
    // baseUrl = 'https://api.covid19api.com'; // It define baseUrl to
    

    httpClient.addRequestModifier<dynamic>((request) async {
      // add request here
      // request.headers['apikey'] = '12345678';
      return request;
    });

    // Even if the server sends data from the country "Brazil",
    // it will never be displayed to users, because you remove
    // that data from the response, even before the response is delivered
    httpClient.addResponseModifier<dynamic>((request, response) {
      // BaseModel? model = response.body;
      // if (model.countries.contains('Brazil')) {
      //   model.countries.remove('Brazilll');
      // }
    });

    httpClient.addAuthenticator<dynamic>((request) async {
      // TODO set token heare

      // final response = await get("http://yourapi/token");
      // final token = response.body['token'];
      // // Set the header
      // request.headers['Authorization'] = "$token";
      return request;
    });

    //Autenticator will be called 3 times if HttpStatus is
    //HttpStatus.unauthorized
    httpClient.maxAuthRetries = 3;
  }
}