import 'package:http/http.dart' as http;

String baseUrl = 'https://raktapp.sharpali.com/';

class ApiService {
  static Future<http.Response?> postData(Map data, url) async {
    try {
      var link = Uri.parse('$baseUrl$url');
      var bodyEncoded = data;

      http.Response response = await http.post(
        link,
        body: bodyEncoded,
      );
      return response;
    } catch (e) {
      return null;
    }
  }
}
