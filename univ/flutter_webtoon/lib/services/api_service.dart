import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  String baseUrl = "https://tinyurl.com/36hmb9af";
  String today = "today";
  Future<void> getTodayToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        print(webtoon);
      }
    }
  }
}
