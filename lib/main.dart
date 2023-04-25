import 'package:flutter/material.dart';
import 'package:web_view_android/screen/home_screen.dart';

void main() {
  // Flutter가 앱을 실행할 준비가 될 때까지 기다림 (WebView 4.x.x 때문에 추가)
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      home: HomeScreen(),
    )
  );
}
