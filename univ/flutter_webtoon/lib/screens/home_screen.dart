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
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      itemBuilder: (context, index) {
        var webtoon = snapshot.data![index];
        return Column(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        offset: const Offset(10, 10),
                        color: Colors.black.withOpacity(0.5))
                  ]),
              width: 250,
              child: Image.network(
                webtoon.thumb,
                headers: const {
                  "User-Agent":
                      "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit 537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari 537.36"
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              webtoon.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 20,
      ),
    );
  }
}
