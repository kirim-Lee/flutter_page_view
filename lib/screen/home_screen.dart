import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light); // 상태바의 색상 dart=> 검정, light=>흰색
    // 앱 풀스크린모드 지정 (시계, 배터리 잔량 등의 표기 설정)
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    // 앱 실행방향 결정
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
    // 시스템 UI 변경시 콜백함수
    SystemChrome.setSystemUIChangeCallback((bool systemOverlaysAreVisible) async {});

    print('loader');

    return Scaffold(
      body: PageView(
        children: [1,2,3,4,5]
            .map(
              (number) => Image.asset(
                  'assets/img/img$number.jpg',
                  fit:BoxFit.cover
              ),
            ).toList(),
      ),
    );
  }
}