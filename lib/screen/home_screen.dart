import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}):super(key:key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();


}

class _HomeScreenState extends State<HomeScreen> {
  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      // 현재 페이지 가져오기
      int? nextPage = pageController.page?.toInt();

      if(nextPage == null) return ;

      if (nextPage == 5) {
        nextPage = 1;
        pageController.jumpToPage(0);
      } else {
        nextPage += 1;
      }

      pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease
      );
      
      
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light); // 상태바의 색상 dart=> 검정, light=>흰색

    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [1,2,3,4,5,1]
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