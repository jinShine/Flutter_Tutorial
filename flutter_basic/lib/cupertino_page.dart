import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoPage extends StatefulWidget {
  @override
  _CupertinoPageState createState() => _CupertinoPageState();
}

class _CupertinoPageState extends State<CupertinoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text("쿠퍼티노 UI"),
      ),
      body: Column(
        children: [
          CupertinoButton(
              child: Text("쿠퍼티노 버튼"),
          )
        ],
      ),
    );
  }
}
