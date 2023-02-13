import 'package:my_wnpl_project/app/data/providers/models/login_model.dart';
import 'package:my_wnpl_project/app/data/providers/models/request_list_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../constants/constants.dart';

import 'package:http/http.dart' as http;

class AppProvider {
  static var client = http.Client();
  static Future<Login?> fetchDataFromLoginAPI() async {
    final httpsUri =
        Uri(scheme: schemeBaseURL, host: hostBaseURL, path: loginURL);
    var request = http.MultipartRequest('POST', httpsUri);
    var params = "{\"email\":\"john@example.com\",\"password\": \"121212\"}";
    request.fields['JSONdata'] = params;
    var response = await request.send();
    if (response.statusCode == 200) {
      final respStr = await response.stream.bytesToString();
      return loginFromJson(respStr);
    } else {
      return null;
    }
  }

  static Future<RequestList?> fetchDataFromRequestListAPI() async {
    final httpsUri =
        Uri(scheme: schemeBaseURL, host: hostBaseURL, path: fetchRequestURL);
    var request = http.MultipartRequest('POST', httpsUri);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var operatorId = prefs.getString("operatorId");
    var params =
        "{\"operatorId\":\"$operatorId\",\"phoneNumber\": \"0412345678\"}";
    request.fields['JSONdata'] = params;
    var response = await request.send();
    if (response.statusCode == 200) {
      final respStr = await response.stream.bytesToString();
      return requestListFromJson(respStr);
    } else {
      return null;
    }
  }
}
