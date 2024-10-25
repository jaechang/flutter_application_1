import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('상세 페이지'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              tooltip: '메뉴 열기',
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                '상세 페이지 메뉴',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('홈으로 돌아가기'),
              onTap: () {
                Navigator.pop(context); // Drawer 닫기
                Navigator.pop(context); // DetailPage 닫기 (홈으로 돌아가기)
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('상세 정보'),
              onTap: () {
                Navigator.pop(context); // Drawer 닫기
                // 여기에 상세 정보를 표시하는 로직을 추가할 수 있습니다.
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('여기에 상세 내용을 추가하세요.'),
      ),
    );
  }
}
