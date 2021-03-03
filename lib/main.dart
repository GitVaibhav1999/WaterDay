import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:whatALter/screens/form_screen.dart';

void main() {
  // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(14, 14, 14, 0),
              child: Text(
                '"There are many health benefits of clicking   that button"',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                    fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 14, 14, 0),
            child: Text(
              '  - Developer',
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                  fontSize: 20),
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Container(
            child: Image.asset(
              'lib/assets/images/water.png',
              width: 120,
              height: 130,
            ),
          ),
          SizedBox(
            height: 100,
          ),

          // SizedBox(
          //   width: 60,
          // ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(100)),
              height: 90,
              width: 80,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FormScreen()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Container(
                  // shape: StadiumBorder(
                  //     side: BorderSide(color: Colors.blueGrey, width: 6)),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.lightBlueAccent,
                      spreadRadius: 0,
                      blurRadius: 10,
                    )
                  ]),
                  child: Card(
                    child: Icon(
                      Icons.add,
                      size: 50,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // FlatButton(onPressed: () {}, child: Icon(Icons.delete)),
        ],
      )),
    );
  }
}
