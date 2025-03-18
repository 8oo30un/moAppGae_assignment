import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: null, // AppBar 제거
        body: Column(
          children: [
            // 제목 섹션 (이름과 학번)
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Woo-Hyun 22100157', // 이름과 학번 입력
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.star,
                      color: Colors.yellow, // 별 아이콘 색상을 노란색으로 설정
                    ),
                    onPressed: () {
                      // 인터랙티브 기능 추가 (예: 별 아이콘을 눌렀을 때 색상 변경 등)
                    },
                  ),
                ],
              ),
            ),
            // Divider 추가
            Divider(
              height: 1.0,
              color: Colors.black, // 구분선 색상
            ),
            // 버튼 섹션
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0), // 패딩 추가
              child: Column(
                children: [
                  ButtonWithText(
                    icon: Icons.call,
                    text: 'Call',
                    color: Colors.blue, // 버튼 색상
                  ),
                  ButtonWithText(
                    icon: Icons.message,
                    text: 'Message',
                    color: Colors.green, // 버튼 색상
                  ),
                  ButtonWithText(
                    icon: Icons.email,
                    text: 'Email',
                    color: Colors.red, // 버튼 색상
                  ),
                  ButtonWithText(
                    icon: Icons.share,
                    text: 'Share',
                    color: Colors.orange, // 버튼 색상
                  ),
                  ButtonWithText(
                    icon: Icons.description,
                    text: 'Description',
                    color: Colors.purple, // 버튼 색상
                  ),
                ],
              ),
            ),
            // Divider 추가
            Divider(
              height: 1.0,
              color: Colors.black, // 구분선 색상
            ),
            // 메시지 섹션
            Container(
              padding: EdgeInsets.all(32.0), // 패딩 추가
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.message,
                    size: 40.0, // 아이콘 크기
                    color: Colors.black, // 아이콘 색상
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      10.0,
                      0.0,
                      10.0,
                      0.0,
                    ), // 텍스트 부분 패딩
                    child: Text(
                      'Recent Message',
                      style: TextStyle(
                        fontWeight: FontWeight.bold, // 텍스트 볼드
                        fontSize: 18.0, // 폰트 크기
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  ButtonWithText({required this.icon, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(backgroundColor: color),
        icon: Icon(
          icon,
          color: Colors.black, // 아이콘 색상
        ),
        label: Text(
          text,
          style: TextStyle(
            color: Colors.black, // 텍스트 색상 (검은색)
          ),
        ),
        onPressed: () {
          // 버튼 클릭 시의 기능을 여기에 추가
        },
      ),
    );
  }
}
