import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}):super(key:key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();


}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      print('실행');
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light); // 상태바의 색상 dart=> 검정, light=>흰색

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