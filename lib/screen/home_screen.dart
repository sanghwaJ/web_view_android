import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// Uri 타입은 꼭 숙지하자
final homeUrl = Uri.parse('https://velog.io/@idkwhattodo');

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(homeUrl);

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('SH'),
        centerTitle: true,
        // AppBar에 원하는 widget을 추가할 수 있음
        actions: [
          IconButton(
            onPressed: () {
              controller.loadRequest(homeUrl);
            },
            icon: Icon(
              Icons.home,
            ),
          ),
        ],
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
