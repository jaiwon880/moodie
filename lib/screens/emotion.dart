import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

final List<String> imgList = [];
final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class _ListScreenState extends State<ListScreen> {
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
              "오늘의 감정",
              style: TextStyle(fontSize: 18, color: Color(0xff5973FF)),
            ),
          ),

          // 받은 질문 텍스트
          Container(
            margin: EdgeInsets.all(30),
            width: double.infinity,
            height: 400,

            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(15), // 모서리를 둥글게
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),

            // height: 265,
            // width: 316,
            alignment: Alignment.center,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'asset/img/love.png',
                            ),
                            Image.asset(
                              'asset/img/happy.png',
                            ),
                            Image.asset(
                              'asset/img/soso.png',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'asset/img/sad.png',
                            ),
                            Image.asset(
                              'asset/img/angry.png',
                            ),
                            Image.asset(
                              'asset/img/nonselected.png',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'asset/img/nonselected.png',
                            ),
                            Image.asset(
                              'asset/img/nonselected.png',
                            ),
                            Image.asset(
                              'asset/img/nonselected.png',
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
        ]),
      ),
    );
  }
}
