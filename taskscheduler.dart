import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class TaskScheduler extends StatefulWidget {
  TaskScheduler({Key? key}) : super(key: key);

  @override
  State<TaskScheduler> createState() => _TaskSchedulerState();
}

class _TaskSchedulerState extends State<TaskScheduler> {
  List Month = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
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
      body: SingleChildScrollView(
        child: Column(
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
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
              height: 630,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 50,
                    width: 250,
                    child: Text(
                      "Doctor task schedule",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.grey[400],
                    child: Column(
                      children: [
                        ExpansionTile(
                          title: Text(
                            "Allen vaughm",
                            style: TextStyle(fontSize: 20),
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                'get flutter is an open source library that comes with pre-build 1000+ UI componet',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.grey[350],
                    margin: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 260,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 12,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: 80,
                                margin: EdgeInsets.all(10),
                                child: Text(
                                  Month[index],
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 400,
                    width: 350,
                    margin: EdgeInsets.all(10),
                    child: TableCalendar(
                      firstDay: DateTime(2010, 10, 20),
                      lastDay: DateTime(2040, 10, 20),
                      focusedDay: DateTime.now(),
                      headerVisible: true,
                      daysOfWeekVisible: false,
                      sixWeekMonthsEnforced: true,
                      shouldFillViewport: true,
                      currentDay: DateTime.now(),
                      headerStyle: HeaderStyle(
                          titleTextStyle: TextStyle(
                              fontSize: 10,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w800)),
                      calendarStyle: CalendarStyle(
                          todayTextStyle: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
