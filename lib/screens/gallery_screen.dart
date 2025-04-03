import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('사진첩'),
      ),
      body: PageView(
        // 명시적으로 가로 방향 설정
        scrollDirection: Axis.horizontal,
        // 페이지 전환 효과 추가
        physics: const BouncingScrollPhysics(),
        children: [
          // 각 페이지를 Container로 감싸고 배경색 설정
          Container(
            color: Colors.red.shade100,
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('1', style: TextStyle(fontSize: 72, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Text('첫 번째 페이지', style: TextStyle(fontSize: 24)),
                  SizedBox(height: 10),
                  Text('왼쪽에서 오른쪽으로 슬라이드하세요', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.blue.shade100,
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('2', style: TextStyle(fontSize: 72, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Text('두 번째 페이지', style: TextStyle(fontSize: 24)),
                  SizedBox(height: 10),
                  Text('계속 슬라이드하세요', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.green.shade100,
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('3', style: TextStyle(fontSize: 72, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Text('세 번째 페이지', style: TextStyle(fontSize: 24)),
                  SizedBox(height: 10),
                  Text('마지막 페이지입니다', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}