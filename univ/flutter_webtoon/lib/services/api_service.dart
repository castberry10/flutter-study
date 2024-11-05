import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_webtoon/models/webtoon_model.dart';

class ApiService {
  static String baseUrl = "https://tinyurl.com/36hmb9af";
  static String today = "today";
  static Future<List<WebtoonModel>> getTodayToons() async {
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        print(response.body);
        List<dynamic> webtoons = jsonDecode(response.body);
        for (var webtoon in webtoons) {
          final toon = WebtoonModel.webtoonConstructor(webtoon);
          webtoonInstances.add(toon);
        }
      }
    } catch (e) {
      print(e.toString());
    }
    return webtoonInstances;
  }
}
