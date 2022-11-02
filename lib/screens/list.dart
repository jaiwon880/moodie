import 'package:flutter/material.dart';

class WriteScreen extends StatefulWidget {
  @override
  _WriteScreen createState() => _WriteScreen();
}

class _WriteScreen extends State<WriteScreen> {
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
            Container(
              margin: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("나의 문답 List",
                      style: TextStyle(fontSize: 16, color: Color(0xff5973FF))),
                  Text("정렬",
                      style: TextStyle(fontSize: 11, color: Color(0xff6D6D6D))),
                ],
              ),
            ),

            // 컨테이너 1
            Container(
              margin: EdgeInsets.all(12),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xffE8EBFF),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ], // 모서리를 둥글게
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(25),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'asset/img/love.png',
                                width: 30,
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 27),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Q. ",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff5973FF)),
                                  ),
                                  Text("오늘만을 위해 준비한 것이 있다면?",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 28, top: 11, bottom: 27),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "A. ",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff5973FF)),
                                  ),
                                  Text("배틀그라운드 치킨을 먹기 위한 게임 연습",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xffE8EBFF),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ], // 모서리를 둥글게
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(25),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'asset/img/happy.png',
                                width: 30,
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 27),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Q. ",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff5973FF)),
                                  ),
                                  Text("오늘만을 위해 준비한 것이 있다면?",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 28, top: 11, bottom: 27),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "A. ",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff5973FF)),
                                  ),
                                  Text("배틀그라운드 치킨을 먹기 위한 게임 연습",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xffE8EBFF),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ], // 모서리를 둥글게
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(25),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'asset/img/soso.png',
                                width: 30,
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 27),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Q. ",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff5973FF)),
                                  ),
                                  Text("오늘만을 위해 준비한 것이 있다면?",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 28, top: 11, bottom: 27),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "A. ",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff5973FF)),
                                  ),
                                  Text("배틀그라운드 치킨을 먹기 위한 게임 연습",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xffE8EBFF),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ], // 모서리를 둥글게
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(25),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'asset/img/sad.png',
                                width: 30,
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 27),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Q. ",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff5973FF)),
                                  ),
                                  Text("오늘만을 위해 준비한 것이 있다면?",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 28, top: 11, bottom: 27),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "A. ",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff5973FF)),
                                  ),
                                  Text("배틀그라운드 치킨을 먹기 위한 게임 연습",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xffE8EBFF),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ], // 모서리를 둥글게
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(25),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'asset/img/angry.png',
                                width: 30,
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 27),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Q. ",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff5973FF)),
                                  ),
                                  Text("오늘만을 위해 준비한 것이 있다면?",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 28, top: 11, bottom: 27),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "A. ",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff5973FF)),
                                  ),
                                  Text("배틀그라운드 치킨을 먹기 위한 게임 연습",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xffE8EBFF),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ], // 모서리를 둥글게
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(25),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'asset/img/happy.png',
                                width: 30,
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 27),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Q. ",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff5973FF)),
                                  ),
                                  Text("오늘만을 위해 준비한 것이 있다면?",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 28, top: 11, bottom: 27),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "A. ",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff5973FF)),
                                  ),
                                  Text("배틀그라운드 치킨을 먹기 위한 게임 연습",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                            ),
                          ],
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
