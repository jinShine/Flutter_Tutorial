import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      actions: [
        IconButton(icon: Icon(Icons.exit_to_app), onPressed: () { print("1"); })
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 80.0, height: 80.0,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://image.chosun.com/sitedata/image/202006/15/2020061504132_0.png'),
                    ),
                  ),
                  Container(
                    width: 80.0,
                    height: 80.0,
                    alignment: Alignment.bottomRight,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                            width: 28.0, height: 28.0,
                            child: FloatingActionButton(onPressed: null, backgroundColor: Colors.white, child: Icon(Icons.add)
                            )
                        ),
                        SizedBox(
                            width: 25.0, height: 25.0,
                            child: FloatingActionButton(onPressed: () { print("add"); }, backgroundColor: Colors.blue, child: Icon(Icons.add)
                            )
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 8, 0, 0)),
              Text("이름", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0))
            ],
          ),
          Text(
              "0\n게시물",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
          ),
          Text(
              "0\n팔로워",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18)
          ),
          Text(
              "0\n팔로잉",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18)
          ),
        ],
      ),
    );
  }
}
