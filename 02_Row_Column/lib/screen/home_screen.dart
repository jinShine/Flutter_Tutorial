import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.black,
          // width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          child: Row(
            // MainAxisAlignment - 주축 정렬
            // start - 시작
            // end - 끝
            // center - 가운데
            // spaceBetween - 위젯과 위젯 사이가 동일하게 배치
            // spaceEvenly - 위젯을 같은 간격으로 배치하지만, 끝과 끝에도 위젯이 아닌 빈 간격으로 시작한다.
            // spaceAround - spaceEvenly + 끝과 끝 간격은 1/2
            mainAxisAlignment: MainAxisAlignment.start,
            // CrossAxisAlignment - 반대축 정렬
            // start - 시작
            // end - 끝
            // center - 가운데
            // stretch - 최대한으로 늘림
            crossAxisAlignment: CrossAxisAlignment.center,
            // MainAxisSize - 주측 크기
            // max - 최대
            // min - 최소
            mainAxisSize: MainAxisSize.max,
            children: [
              // Expanded / Flexible
              // Row or Column의 children에 사용
              // - flex는 비율을 나타냄
              Expanded(
                flex: 1, // 기본값이 1
                child: Container(
                  color: Colors.red,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.orange,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.blue,
                  width: 50.0,
                  height: 50.0,
                ),
              ),

              // Flexible(
              //   flex: 1, //  기본값이 1
              //   child: Container(
              //     color: Colors.red,
              //     height: 50.0,
              //   ),
              // ),
              // Flexible(
              //   flex: 2,
              //   child: Container(
              //     color: Colors.orange,
              //     height: 50.0,
              //   ),
              // ),
              // Flexible(
              //   flex: 3,
              //   child: Container(
              //     color: Colors.blue,
              //     height: 50.0,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
