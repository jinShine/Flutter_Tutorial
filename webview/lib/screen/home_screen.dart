
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? webViewController;
  final homeURL = "https://www.naver.com";

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("네이버"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {
              print("클릭!!!");
              if (webViewController == null) { return; }
              webViewController?.loadUrl(homeURL);

            }, icon: Icon(Icons.home))
          ],
        ),
        body: Center(
          child: WebView(
            initialUrl: homeURL,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              this.webViewController = webViewController;
            },
          ),
        ),
      ),
    );
  }
}
