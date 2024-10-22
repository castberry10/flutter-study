import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() {
    print('createState() 호출');
    return _AppState();
  }
  // State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late int _counter;

  @override
  void initState() {
    // 처음 한번만 호출
    super.initState();
    _counter = 0;
    print('InitState 호출');
  }

  @override
  void didChangeDependencies() {
    //위젯이 처음 트리에 추가될때,
    //위젯이 종속성이 변경될 때 호출
    super.didChangeDependencies();
    print('didChangeDependencies()');
  }

  void onClick() {
    print('onClick 호출');
    setState(() {
      //상태를 변경하고, 변경된 상태를 UI에 반영하기 위해 호출

      // § setState 메소드를 호출하면 build 메소드가 재실행되어 상태 변경에 따
      // 라 UI가 갱신
      //
      print('setState 호출');
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // 위젯의 UI를 생성하는 메소드
    // 위젯 트리를 반환
    // 위젯의 상태나 데이터가 변경될떄마다 호출
    // - 상태가 변경될 때 새로운 위젯트리 생성
    print('build 호출');
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Click count",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "$_counter",
                style: const TextStyle(fontSize: 30),
              ),
              IconButton(
                onPressed: onClick,
                icon: const Icon(Icons.add),
                iconSize: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
