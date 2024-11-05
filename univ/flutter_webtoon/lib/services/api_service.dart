import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_webtoon/models/webtoon_model.dart';

class ApiService {
  String baseUrl = "https://tinyurl.com/36hmb9af";
  String today = "today";
  Future<void> getTodayToons() async {
    final url = Uri.parse('$baseUrl/$today');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        print(response.body);
        List<dynamic> webtoons = jsonDecode(response.body);
        for (var webtoon in webtoons) {
          // print(webtoon);
          final toon = WebtoonModel(
            id: webtoon['id'],
            title: webtoon['title'],
            thumb: webtoon['thumb'],
          );
          print(toon);
        }
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
