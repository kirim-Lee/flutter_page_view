# image_carousel

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## 상태바에 관한 옵션

시스템의 UI 그래픽 설정 변경하는 기능을 제공

`import 'package:flutter/services.dart';`
```dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
const HomeScreen({Key? key}):super(key:key);

	// 상태바의 색상 dart=> 검정, light=>흰색
	SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light); 
	// 앱 풀스크린모드 지정 (시계, 배터리 잔량 등의 표기 설정)
SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
// 앱 실행방향 결정
SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
// 시스템 UI 변경시 콜백함수
SystemChrome.setSystemUIChangeCallback((bool systemOverlaysAreVisible) async {});
}
```


