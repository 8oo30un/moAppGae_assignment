import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isStarred = false; // 별이 활성화된 상태인지 저장

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: null,
        body: Column(
          children: [
            // 상단 배경 컨테이너 (배경 이미지 추가)
            Container(
              width: double.infinity,
              height: 180, // 컨테이너 높이 설정
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/IMG_1979.JPG'), // 배경 이미지
                  fit: BoxFit.cover, // 화면에 꽉 차도록 설정
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                      'images/IMG_3670.JPG',
                    ), // 프로필 사진
                  ),
                  SizedBox(height: 10), // 간격 추가
                ],
              ),
            ),

            // 프로필 정보 섹션
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 왼쪽 빈 컨테이너 (공간 확보)
                  Container(width: 80),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Kim Woohyun',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '22100157',
                        style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(width: 50),

                  // ⭐ 인터랙티브 기능 추가 (클릭 시 색상 변경)
                  IconButton(
                    icon: Icon(
                      Icons.star,
                      color:
                          isStarred
                              ? Colors.yellow
                              : Colors.grey, // 상태에 따라 색 변경
                    ),
                    onPressed: () {
                      setState(() {
                        isStarred = !isStarred; // 클릭할 때마다 상태 변경
                      });
                    },
                  ),
                ],
              ),
            ),

            Divider(height: 1.0, color: Colors.black),

            // 버튼 섹션 (한 줄 정렬)
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: GridView.count(
                crossAxisCount: 5, // 한 줄에 5개씩 배치
                shrinkWrap: true, // GridView가 Column 안에서 높이 제한됨
                physics: NeverScrollableScrollPhysics(), // 스크롤 제거 (부드러운 UI)
                childAspectRatio: 1.0, // 가로 세로 비율을 1:1로 설정 (높이를 낮게 할 수 있음)
                children: [
                  ButtonWithText(
                    icon: Icons.call,
                    text: 'Call',
                    color: Colors.blue,
                  ),
                  ButtonWithText(
                    icon: Icons.message,
                    text: 'Mes.',
                    color: Colors.green,
                  ),
                  ButtonWithText(
                    icon: Icons.email,
                    text: 'Email',
                    color: Colors.red,
                  ),
                  ButtonWithText(
                    icon: Icons.share,
                    text: 'Share',
                    color: Colors.orange,
                  ),
                  ButtonWithText(
                    icon: Icons.description,
                    text: 'Des.',
                    color: Colors.amberAccent,
                  ),
                ],
              ),
            ),

            // 메시지 섹션
            Container(
              padding: EdgeInsets.all(32.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.message, size: 40.0, color: Colors.black),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      10.0,
                      0.0,
                      10.0,
                      0.0,
                    ), // 왼쪽과 오른쪽에 패딩 추가
                    child: Text(
                      'Recent Message',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
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

// 버튼 위젯 (아이콘과 텍스트를 세로 배치)
class ButtonWithText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  ButtonWithText({required this.icon, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6), // 버튼 사이 간격
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.black, size: 20),
            SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(color: Colors.black, fontSize: 5),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
