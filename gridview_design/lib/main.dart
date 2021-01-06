import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _listItem = [
    'assets/images/two.jpg',
    'assets/images/three.jpg',
    'assets/images/four.jpg',
    'assets/images/five.jpg',
    'assets/images/one.jpg',
    'assets/images/two.jpg',
    'assets/images/three.jpg',
    'assets/images/four.jpg',
    'assets/images/five.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Icon(Icons.menu),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("0")),
                ),
              )
            ]),
        body: SafeArea(
            child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(children: <Widget>[
                  Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/one.jpg'),
                              fit: BoxFit.cover)),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  colors: [
                                    Colors.black.withOpacity(.4),
                                    Colors.black.withOpacity(.2),
                                  ])),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text("Lifestyle ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 35)),
                              SizedBox(height: 20),
                              Container(
                                  height: 50,
                                  margin: EdgeInsets.symmetric(horizontal: 40),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Center(
                                      child: Text("Shop Now ",
                                          style: TextStyle(
                                              color: Colors.grey[800])))),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ))),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: GridView.count(
                    crossAxisCount: 2,
                    padding: EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                    children: _listItem
                        .map((item) => Card(
                            color: Colors.transparent,
                            elevation: 0,
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(item),
                                        fit: BoxFit.cover)),
                                child: Transform.translate(
                                    offset: Offset(50, -40),
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 60, vertical: 55),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: Icon(Icons.bookmark_border),
                                    )))))
                        .toList(),
                  ))
                ]))));
  }
}
