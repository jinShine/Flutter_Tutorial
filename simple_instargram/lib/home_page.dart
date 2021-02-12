import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram Clone",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text("인스타그램에 오신걸 환영 합니다.", style: TextStyle(fontSize: 24.0),),
                Padding(padding: EdgeInsets.fromLTRB(0, 8, 0, 0)),
                Text("사진과 동영상을 보려면 팔로우하세요."),
                Padding(padding: EdgeInsets.fromLTRB(0, 16, 0, 0)),
                SizedBox(
                  width: 260.0,
                  child: Card(
                    elevation: 4.0,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 80.0,
                          height: 80.0,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://image.chosun.com/sitedata/image/202006/15/2020061504132_0.png'),
                          ),
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(0, 8, 0, 0)),
                        Text('Email address', style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('name'),
                        Padding(padding: EdgeInsets.fromLTRB(0, 16, 0, 0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 80.0, height: 80.0,
                              child: Image.network('https://image.chosun.com/sitedata/image/202006/15/2020061504132_0.png', fit: BoxFit.cover),
                            ),
                            SizedBox(
                              width: 80.0, height: 80.0,
                              child: Image.network('https://image.chosun.com/sitedata/image/202006/15/2020061504132_0.png', fit: BoxFit.cover,),
                            ),
                            SizedBox(
                              width: 80.0, height: 80.0,
                              child: Image.network('https://image.chosun.com/sitedata/image/202006/15/2020061504132_0.png', fit: BoxFit.cover,),
                            )
                          ],
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(0, 8, 0, 0)),
                        Text("Facebook 친구"),
                        Padding(padding: EdgeInsets.fromLTRB(0, 16, 0, 0)),
                        RaisedButton(
                          onPressed: () {},
                          child: Text("팔로우"),
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
