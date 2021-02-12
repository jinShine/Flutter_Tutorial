import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose(); // TextEditingController는 메모리 해제를 해주어야 한다.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
  
  Widget _buildAppBar() {
    return AppBar(
      actions: [
        IconButton(icon: Icon(Icons.send), onPressed: null)
      ],
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        Text("No Image"),
        TextField(
          controller: textEditingController,
          decoration: InputDecoration(hintText: "내용을 입력하세요"),
        )
      ],
    );
  }
}
