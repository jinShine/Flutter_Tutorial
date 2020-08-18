import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'Hello Flutter22222',
  home: Scaffold(
    appBar: AppBar(title: Text('Hello Flutter2')),
    body: _FirstStatefulWidget(),
  ),
));

class _FirstStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('이것은 stateless 위젯 입니다.');
  }
}

class _FirstStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstStatefulWidgetState();
  }
}

class _FirstStatefulWidgetState extends State<_FirstStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Text('이것은 stateful 위젯 입니다.');
  }
}