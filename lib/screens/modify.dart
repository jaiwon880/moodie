import 'package:flutter/material.dart';

class MyPageScreen extends StatefulWidget {
  @override
  _MyPageScreenState createState() => _MyPageScreenState();
}

class _MyPageScreenState extends State<MyPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
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
                "오늘의 답변",
                style: TextStyle(fontSize: 18, color: Color(0xff5973FF)),
              ),
            ),

            // 받은 질문 텍스트
            Container(
              margin: EdgeInsets.all(30),
              width: double.infinity,
              height: 500,

              decoration: BoxDecoration(
                color: Color(0xffE8EBFF),
                borderRadius: BorderRadius.circular(15), // 모서리를 둥글게
              ),

              // height: 265,
              // width: 316,
              alignment: Alignment.center,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'asset/img/love.png',
                                width: 37.65,
                                height: 37.65,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Q2. ",
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xff5973FF)),
                              ),
                              Text(" 오늘만을 위해 준비한 것이 있다면?",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "A. ",
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xff5973FF)),
                              ),
                              Text("그녀를 만나기 전 완벽한 데이트 코스와 꽃다발, ",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("그리고 반지를 준비했고, 멀끔하게 보이기 위해서 살면",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("서 한 번도 가보지 않은 샵에 들려 사람처럼 보이기 위해",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("화장도 했다. 오늘 반드시 그녀에게 고백할 것이다...!",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20.0, top: 180.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("2022-05-10",
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xff6D6D6D))),
                              Image.asset(
                                'asset/img/edit.png',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
