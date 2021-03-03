import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:whatALter/goal.dart';
import 'package:whatALter/start_time.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  double _currentPrice = 1.0;
  double selected_slider = 0; // from goal widget
  TimeOfDay selected_time; // from sart_time widget

  @override
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Lets start your healthy journey',
          style: TextStyle(
            fontSize: 20,
            shadows: <Shadow>[
              Shadow(
                // offset: Offset(10.0, 10.0),
                blurRadius: 1.0,
                color: Colors.blue,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Center(
          child: Container(
            width: 333,
            height: 433,
            decoration: BoxDecoration(color: Colors.white30),
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.blue,
                  spreadRadius: 0,
                  blurRadius: 10,
                  // offset: Offset(0, 3))
                )
              ]),
              child: Card(
                // shadowColor: Colors.blue,

                elevation: 30,
                // width: 100,
                // height: 100,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        'lib/assets/images/bottle.png',
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 190,
                                          child: GoalSelector(
                                              onSlide: (double value) =>
                                                  selected_slider = value),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            StartTime(
                                selected_time: (TimeOfDay value) =>
                                    selected_time = value),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
