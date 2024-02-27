import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple",
            style: TextStyle(
                // Colors.white,
                )),
        backgroundColor: Colors.blue,
      ),
      //다른 위젯들 연결
      body: const AppBody(),
      floatingActionButton: actionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  /// context: 현재 보고있는 화면
  /// 기본 Wedget 아닌 Alert 등을 띄울때는 어떤 context를 대상으로
  /// 실행할 것인지를 명시해 주어야 한다
  /// flutter 에서는 context 라는 대상이 많이 나온다

  Future<void> _showDialog() async {
    return showDialog(
      //클릭시 반응
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("안녕"),
          content: const Text("반갑습니다"),
          actions: [
            TextButton(
              // 현재 alert popup 창 닫기
              onPressed: () => Navigator.pop(context, "취소"),
              child: const Text("취소"),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, "확인"),
              child: const Text("확인"),
            ),
          ],
        );
      },
    );
  }

  FloatingActionButton actionButton() {
    return FloatingActionButton.extended(
      onPressed: () => {_showDialog()},
      label: const Text("click"),
      isExtended: true,
      icon: const Icon(Icons.add_a_photo, size: 30),
      foregroundColor: Colors.white,
      backgroundColor: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class AppBody extends StatelessWidget {
  const AppBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "대한민국",
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
            ),
          ),
          Text("우리나라만세"),
          Text("Republic of korea"),
        ],
      ),
    );
  }
}
