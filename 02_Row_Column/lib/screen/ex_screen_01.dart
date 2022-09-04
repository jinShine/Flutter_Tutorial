import 'package:flutter/material.dart';

class ExScreen1 extends StatelessWidget {
  const ExScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.green,
                    width: 50.0,
                    height: 50.0,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 50.0,
                    height: 50.0,
                  ),
                  Container(
                    color: Colors.amber,
                    width: 50.0,
                    height: 50.0,
                  ),
                  Container(
                    color: Colors.orange,
                    width: 50.0,
                    height: 50.0,
                  ),
                ],
              ),
              Container(
                color: Colors.amber,
                width: 50.0,
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.green,
                    width: 50.0,
                    height: 50.0,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 50.0,
                    height: 50.0,
                  ),
                  Container(
                    color: Colors.amber,
                    width: 50.0,
                    height: 50.0,
                  ),
                  Container(
                    color: Colors.orange,
                    width: 50.0,
                    height: 50.0,
                  ),
                ],
              ),
              Container(
                color: Colors.blue,
                width: 50.0,
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
