import 'package:flutter/material.dart';

class StartTime extends StatefulWidget {
  final Function(TimeOfDay) selected_time;
  StartTime({this.selected_time});

  @override
  _StartTimeState createState() => _StartTimeState();
}

class _StartTimeState extends State<StartTime> {
  TimeOfDay picked_local = null;
  Future<Null> PickTime(BuildContext context) async {
    final TimeOfDay picked_time =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());

    if (picked_time != null) {
      print(widget.selected_time);
      widget.selected_time(picked_time);
      print(widget.selected_time);

      setState(() => picked_local = picked_time);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 70,
            width: 190,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: InkWell(
                  splashColor: Colors.lightBlue,
                  onTap: () {
                    PickTime(context);

                    // print(selectedTime);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        enabled: false,
                        // controller: _fa,
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                            prefixIcon:
                                Icon(Icons.timelapse, color: Colors.lightBlue),
                            hintText: picked_local == null
                                ? 'Start Time'
                                : "    " +
                                    picked_local.hour.toString() +
                                    " : " +
                                    picked_local.minute.toString(),
                            border: InputBorder.none)),
                  ),
                ),
              ),
            ),
          ),
          // RaisedButton(
          //   onPressed: () {
          //     print(selected_slider);
          //   },
          // ),
        ],
      ),
    );
  }
}
