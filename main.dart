import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'تطبيق بخروجين',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الشاشة الرئيسية')),
      body: Center(
        child: ElevatedButton(
          child: Text('اذهب للشاشة الثانية'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الشاشة الثانية')),
      body: Center(
        child: ElevatedButton(
          child: Text('العودة للشاشة الرئيسية'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
