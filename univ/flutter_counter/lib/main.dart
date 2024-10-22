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
  // late int _counter;
  late List<int> numbers = [];
  @override
  void initState() {
    // 처음 한번만 호출
    super.initState();
    // _counter = 0;
    numbers = [];
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
      // _counter++;
      numbers.add(numbers.length);
      print('numbers의 길이: $numbers');
    });
  }

//   didUpdateWidget 메소드
//    § StatefulWidget의 속성 변경을 감지하여 기존 상태를 유지하면서도 새
//       로운 데이터를 반영하는데 사용
//    § 호출 시점
// - 부모 위젯이 자식 위젯을 업데이트할 때 호출
// - 위젯 인스터스를 변경할 때 호출

// dispose 메소드
// § State 객체가 제거될 때 호출되며 주로 위젯이 트리에서 제거될 때, 더
// 이상 필요하지 않은 리소스(예: 애니메이션 컨트롤러 등)를 해제하는데
// 사용

// 빌드의 인자임
//BuildContext
// § 위젯 트리 상의 특정 위젯의 위치 및 그 위젯과 관련된 부모 위제들에 대
// 한 정보가 담긴 객체
// § BuildContext를 통해 위젯의 상위 위젯과의 관계를 추적하며, 트리 상의
// 다른 위젯들과 상호작용하거나 데이터를 주고 받을 수 있음
// BuildContext의 주요 메소드
// § of() 메소드
// - 상위 트리에서 특정 데이터를 가져오기 위해 사용
// § findAncestorWidgetOfExactType<T>()
// - 특정타입의 부모 위젯 찾기
// § findAncestorStateOfType<T>()
// - 특정타입의 State 객체 찾기

  @override
  Widget build(BuildContext context) {
    // 위젯의 UI를 생성하는 메소드
    // 위젯 트리를 반환
    // 위젯의 상태나 데이터가 변경될떄마다 호출
    // - 상태가 변경될 때 새로운 위젯트리 생성
    print('build 호출');
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(color: Colors.red),
        ),
      ),
      home: const Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyLargeTitle()
              // const Text(
              //   "Click count",
              //   style: TextStyle(fontSize: 30),
              // ),
              // for (var n in numbers)
              //   Text(
              //     '$n',
              //     style: const TextStyle(fontSize: 30),
              //   ),
              // // Text(
              // //   "$_counter",
              // //   style: const TextStyle(fontSize: 30),
              // // ),
              // IconButton(
              //   onPressed: onClick,
              //   icon: const Icon(Icons.add),
              //   iconSize: 50,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatelessWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge!.color,
      ),
    );
  }
}
