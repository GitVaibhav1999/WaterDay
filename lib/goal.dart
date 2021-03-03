import 'package:flutter/material.dart';

class GoalSelector extends StatefulWidget {
  final Function(double) onSlide;

  GoalSelector({this.onSlide});

  @override
  _GoalSelectorState createState() => _GoalSelectorState();
}

class _GoalSelectorState extends State<GoalSelector> {
  double _current_slider_value = 1500;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Text("Target", style: TextStyle(fontSize: 20))),
            SizedBox(
              width: 10,
            ),
            Card(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                _current_slider_value.toString() + " L",
                style: TextStyle(color: Colors.grey),
              ),
            ))
          ],
        ),
        Slider(
          value: _current_slider_value,
          min: 1000,
          max: 4000,
          divisions: 5,
          label: _current_slider_value == 1000
              ? "Can do better"
              : _current_slider_value == 4000
                  ? "Really ?"
                  : _current_slider_value.round().toString(),
          onChanged: (value) {
            setState(() {
              _current_slider_value = value;
            });
            widget.onSlide(_current_slider_value);
          },
        ),
      ],
    ));
  }
}
