import 'package:flutter/material.dart';
import 'package:flutter_webtoon/models/webtoon_model.dart';
import 'package:flutter_webtoon/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Future<List<WebtoonModel>> webtoon = ApiService.getTodayToons();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          foregroundColor: Colors.green,
          title: const Text(
            '오늘의웹툰',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          )),
      body: FutureBuilder(
        future: webtoon,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return makeList(snapshot);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              print(index);
              var webtoon = snapshot.data![index];
              return Text(webtoon.title);
            },
            separatorBuilder: (context, index) => const SizedBox(
              width: 20,
            ),
          );
  }
}
