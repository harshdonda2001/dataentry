import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class TodayAppoiment extends StatefulWidget {
  TodayAppoiment({Key? key}) : super(key: key);

  @override
  State<TodayAppoiment> createState() => _TodayAppoimentState();
}

class _TodayAppoimentState extends State<TodayAppoiment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(
          "Menu",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            alignment: Alignment.center,
            child: Text(
              "increase contrase",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 30,
            alignment: Alignment.center,
            child: Icon(Icons.all_inclusive_sharp),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  height: 350,
                  width: 250,
                  child: Text(
                    "Today appointment",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 80,
                  width: 50,
                  child: Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.blue,
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                        offset: Offset(2.0, 2.0),
                      ),
                    ],
                    color: Colors.white30,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 500,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(10),
            child: SfCalendar(
              view: CalendarView.week,
              firstDayOfWeek: 1,
              initialSelectedDate: DateTime(2022, 12, 20, 21, 30),
              initialDisplayDate: DateTime(2022, 12, 20, 7, 30),
              selectionDecoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.red, width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                shape: BoxShape.rectangle,
              ),
              cellBorderColor: Colors.blueAccent[100],
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
