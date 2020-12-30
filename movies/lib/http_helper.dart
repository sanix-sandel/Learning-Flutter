import 'package:http/http.dart' as http;
import 'dart:io';

class HttpHelper {
  final String urlKey = 'api_key=dc3fc3229cfc3359a79dab50d2b96a77';
  final String urlBase = 'https://api.themoviedb.org/3/movie';
  final String urlUpcoming = '/upcoming?';
  final String urlLanguage = '&language=en-US';

  Future<String> getUpcoming() async {
    final String upcoming = urlBase + urlUpcoming + urlKey + urlLanguage;
    http.Response result = await http.get(upcoming);
    if (result.statusCode == HttpStatus.ok) {
      String responseBody = result.body;
      return responseBody;
    } else {
      return null;
    }
  }
}
