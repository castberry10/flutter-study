import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class HomeScreen extends StatelessWidget {
  static const LatLng univLatLng = LatLng(
    37.8690,
    127.7450,
  );

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: renderAppbar(),
      body: Column(
        children: [
          const Expanded(
            flex: 2,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: univLatLng,
                zoom: 5,
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const Icon(
                  Icons.timelapse_outlined,
                  color: Colors.blue,
                  size: 50,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('출근하기'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  AppBar renderAppbar() {
    return AppBar(
      centerTitle: true,
      title: const Text(
        '오늘도 출첵',
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.w700,
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Future<String> checkPermission() async {
    final isLocationEnbled =
        await Geolocator.isLocationServiceEnabled(); // 위치서비스 활성화 여부
    if (!isLocationEnbled) {
      return '위치 서비스 활성화 해주세요';
    }
    LocationPermission checkedPermission =
        await Geolocator.checkPermission(); // 위치 권한 확인
    if (checkedPermission == LocationPermission.denied) {
      // 권한 없으면
      checkedPermission = await Geolocator.requestPermission(); // 요청
      if (checkedPermission == LocationPermission.denied) {
        // 거절되면
        return '위치 권한을 허가해주세요.';
      }
    }
    // 앱에서 재요청 불가한 거절
    if (checkedPermission == LocationPermission.deniedForever) {
      return '앱의 위치 권한을 설정에서 허가해주세요';
    }
    return '위치 권한이 허가되었습니다.';
  }
}
