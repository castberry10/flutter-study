import 'package:http/http.dart' as http;

class ApiService {
  String baseUrl = "https://tinyurl.com/36hmb9af";
  String today = "today";
  Future<void> getTodayToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
    }
  }
}
