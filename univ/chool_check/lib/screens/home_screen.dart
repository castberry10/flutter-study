import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class HomeScreen extends StatelessWidget {
  static const LatLng univLatLng = LatLng(
    37.8690,
    127.7450,
  );
  static const Marker marker = Marker(
    markerId: MarkerId('university'),
    position: univLatLng,
  );

  static final Circle circle = Circle(
    circleId: const CircleId('choolCheckCircle'),
    center: univLatLng,
    fillColor: Colors.blue.withOpacity(0.5),
    radius: 100,
    strokeColor: Colors.blue,
    strokeWidth: 1,
  );

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: renderAppbar(),
        body: FutureBuilder<String>(
          future: checkPermission(),
          builder: (context, snapshot) {
            if (!snapshot.hasData &&
                snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.data == '위치 권한이 허가되었습니다.') {
              return Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: GoogleMap(
                      initialCameraPosition: const CameraPosition(
                        target: univLatLng,
                        zoom: 16,
                      ),
                      markers: {marker},
                      circles: {circle},
                      myLocationEnabled: true,
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
                          onPressed: () async {
                            final curPosition =
                                await Geolocator.getCurrentPosition();
                            final distance = Geolocator.distanceBetween(
                              curPosition.latitude,
                              curPosition.longitude,
                              univLatLng.latitude,
                              univLatLng.longitude,
                            );
                            bool canCheck = distance < 100;
                            showDialog(
                                context: context,
                                builder: (_) {
                                  return AlertDialog(
                                    title: const Text('출근하기'),
                                    content: Text(canCheck
                                        ? '출근을 하시겠습니까?'
                                        : '출근할 수 없는 위치입니다.'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop(false);
                                        },
                                        child: const Text('취소'),
                                      ),
                                      if (canCheck)
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop(true);
                                          },
                                          child: const Text("출근하기"),
                                        ),
                                    ],
                                  );
                                });
                          },
                          child: const Text('출근하기'),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }
            return Center(
              child: Text(
                snapshot.data.toString(),
              ),
            );
          },
        ));
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
