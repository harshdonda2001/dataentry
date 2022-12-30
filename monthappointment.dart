import 'package:flutter/material.dart';
import 'package:flutter_radar_chart/flutter_radar_chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MonthAppointment extends StatefulWidget {
  MonthAppointment({Key? key}) : super(key: key);

  @override
  State<MonthAppointment> createState() => _MonthAppointmentState();
}

class _MonthAppointmentState extends State<MonthAppointment> {
  late List<GDPdata> _chardata;
  @override
  void initState() {
    _chardata = getchartdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const ticks = [7, 14, 21, 28, 35];
    var features = [
      "10-16",
      "17-24",
      "25-30",
      "31-40",
      "40+",
      "0-9",
    ];
    var data = [
      [
        10.0,
        20,
        28,
        5,
        16,
        15,
      ],
      [
        14.5,
        1,
        4,
        14,
        23,
        10,
      ]
    ];
    List color = [
      Colors.red,
      Colors.blue,
    ];
    return Scaffold(
      appBar: AppBar(
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
      drawer: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        elevation: 2.0,
        child: Container(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("asset/doctor.png"),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.bottomLeft,
                      height: 50,
                      width: 100,
                      child: Column(
                        children: [
                          Text(
                            "Name",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "Patient",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(
                    Icons.dashboard,
                    size: 30,
                    color: Colors.black,
                  ),
                  title: Text(
                    "DashBord",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(
                    Icons.calendar_today_rounded,
                    size: 30,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Appointment",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(
                    Icons.groups_outlined,
                    size: 30,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Pationts",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 30,
                    color: Colors.black,
                  ),
                  title: Text(
                    "TEst result",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(
                    Icons.message,
                    size: 30,
                    color: Colors.black,
                  ),
                  title: Text(
                    "massage",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(
                    Icons.star,
                    size: 30,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Review",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(
                    Icons.folder_copy,
                    size: 30,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Finance",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 150,
                    width: 300,
                    child: Text(
                      "Month Appointment",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.all(10),
                    child: Icon(Icons.add),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1.0,
                          offset: Offset(2.0, 2.0),
                        )
                      ],
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 180,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                      image: DecorationImage(
                          image: AssetImage("asset/teeth1.png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 190,
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "32",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "The Average number of teeth in our patients",
                          maxLines: 3,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              height: 500,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(10),
                          height: 100,
                          width: 250,
                          child: Text(
                            "Causes",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Icon(
                          Icons.navigate_before,
                          size: 45,
                          color: Colors.black,
                        ),
                        Icon(
                          Icons.navigate_next,
                          size: 45,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 350,
                    margin: EdgeInsets.all(10),
                    child: SfCircularChart(
                      palette: [
                        Colors.grey,
                        Colors.orange,
                        Colors.yellow,
                        Colors.red
                      ],
                      series: <CircularSeries>[
                        PieSeries<GDPdata, String>(
                          dataSource: _chardata,
                          xValueMapper: (GDPdata data, _) => data.continet,
                          yValueMapper: (GDPdata data, _) => data.gdp,
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 350,
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.panorama_fish_eye,
                                color: Colors.grey,
                                size: 20,
                              ),
                              Text(
                                "COLD",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.panorama_fish_eye,
                                color: Colors.yellow,
                                size: 20,
                              ),
                              Text(
                                "INFECTION",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.panorama_fish_eye,
                                color: Colors.red,
                                size: 20,
                              ),
                              Text(
                                "INJURY",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.panorama_fish_eye,
                                color: Colors.orange,
                                size: 20,
                              ),
                              Text(
                                "OTHER",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              height: 500,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(10),
                          height: 100,
                          width: 250,
                          child: Text(
                            "Causes",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Icon(
                          Icons.navigate_before,
                          size: 45,
                          color: Colors.black,
                        ),
                        Icon(
                          Icons.navigate_next,
                          size: 45,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 380,
                    width: 350,
                    margin: EdgeInsets.all(10),
                    child: RadarChart.light(
                      ticks: ticks,
                      features: features,
                      data: data,
                      reverseAxis: true,
                      useSides: true,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
            )
          ],
        ),
      ),
    );
  }
}

List<GDPdata> getchartdata() {
  final List<GDPdata> chardata = [
    GDPdata('india', 1500),
    GDPdata('oceania', 1500),
    GDPdata('America', 1500),
    GDPdata('japan', 1500),
  ];
  return chardata;
}

class GDPdata {
  GDPdata(this.continet, this.gdp);
  final String continet;
  final int gdp;
}
