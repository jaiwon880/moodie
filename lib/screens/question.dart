import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

// final List<int> pages = List.generate(3, (index) => index);

class _QuestionScreenState extends State<QuestionScreen> {
  // final PageController controller = PageController(initialPage: 0);
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(children: [
          // moodie 컨테이너
          Container(
            alignment: Alignment.center,
            height: 76,
            child: Text(
              "Moodie",
              style: TextStyle(fontSize: 25, color: Color(0xff5973FF)),
            ),
          ),
          //뒤로가기 컨테이너
          Container(
              height: 23,
              width: 100.0,
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.arrow_back,
                    color: Colors.grey,
                  ),
                ],
              )),

          // 오늘의 질문 텍스트 컨테이너
          Container(
            alignment: Alignment.center,
            height: 38,
            child: Text(
              "오늘의 질문",
              style: TextStyle(fontSize: 18, color: Color(0xff5973FF)),
            ),
          ),

          // 받은 질문 텍스트
          Container(
            margin: EdgeInsets.all(40),
            width: 316,
            height: 265,

            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(15), // 모서리를 둥글게
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),

            // height: 265,
            // width: 316,
            alignment: Alignment.center,
            child: Row(children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(42, 90, 42, 80),
                      child: Text("Q1. 오늘 같은 날씨에 [   ]님이 요리해 먹고 싶은 음식은?",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                              color: Colors.black)),
                    ),
                    Text("질문을 좌우로 스와이프하고 터치해 보세요!",
                        style: TextStyle(
                            fontSize: 10, color: Colors.grey.withOpacity(0.5))),
                    Text(
                      "건너뛰기 (일 2회)",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff5973FF),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
