import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PatientStatistics extends StatefulWidget {
  PatientStatistics({Key? key}) : super(key: key);

  @override
  State<PatientStatistics> createState() => _PatientStatisticsState();
}

class _PatientStatisticsState extends State<PatientStatistics> {
  late List<GDPdata> _chardata;
  @override
  void initState() {
    _chardata = getchartdata();
    super.initState();
  }

  static const pilateColor = Color(0xff632af2);
  static const cyclingColor = Color(0xffffb3ba);
  static const quickWorkoutColor = Color(0xff578eff);
  static const betweenSpace = 0.2;

  BarChartGroupData generateGroupData(
    int x,
    double pilates,
    double quickWorkout,
    double cycling,
  ) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barRods: [
        BarChartRodData(
          fromY: 0,
          toY: pilates,
          color: pilateColor,
          width: 5,
        ),
        BarChartRodData(
          fromY: pilates + betweenSpace,
          toY: pilates + betweenSpace + quickWorkout,
          color: quickWorkoutColor,
          width: 5,
        ),
        BarChartRodData(
          fromY: pilates + betweenSpace + quickWorkout + betweenSpace,
          toY: pilates + betweenSpace + quickWorkout + betweenSpace + cycling,
          color: cyclingColor,
          width: 5,
        ),
      ],
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(
        color: Color(0xff787694), fontSize: 10, fontWeight: FontWeight.bold);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'JAN';
        break;
      case 1:
        text = 'FEB';
        break;
      case 2:
        text = 'MAR';
        break;
      case 3:
        text = 'APR';
        break;
      case 4:
        text = 'MAY';
        break;
      case 5:
        text = 'JUN';
        break;

      default:
        text = '';
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  List<salesdata> data = [
    salesdata('jan', 35),
    salesdata('feb', 28),
    salesdata('march', 25),
    salesdata('june', 34),
    salesdata('Apr', 40),
    salesdata('may', 50),
  ];

  @override
  Widget build(BuildContext context) {
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
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 60,
                    width: 300,
                    child: Text(
                      "Patient Statistics",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
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
                  ),
                ],
              ),
            ),
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 200,
                    child: Text(
                      "Patient gender",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: 40,
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 260,
                          child: Text(
                            "Tuesday,September 29",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 50,
                          width: 40,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                    height: 222,
                    width: 350,
                    margin: EdgeInsets.all(10),
                    child: SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      legend: Legend(isVisible: false),
                      tooltipBehavior: TooltipBehavior(enable: false),
                      series: <ChartSeries<salesdata, String>>[
                        LineSeries(
                          dataSource: data,
                          xValueMapper: (salesdata, sales_) => salesdata.month,
                          yValueMapper: (salesdata, sales_) => salesdata.sales,
                          name: 'sales',
                          dataLabelSettings:
                              const DataLabelSettings(isVisible: false),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.panorama_fish_eye,
                                color: Colors.blue,
                                size: 20,
                              ),
                              Text(
                                "MEN",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
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
                                "WOMEN",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
            ),
            Container(
              height: 400,
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
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
                            "Health index",
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
                    margin: EdgeInsets.all(10),
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      color: Colors.white,
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 14),
                            AspectRatio(
                              aspectRatio: 2,
                              child: BarChart(
                                BarChartData(
                                  alignment: BarChartAlignment.spaceBetween,
                                  titlesData: FlTitlesData(
                                    leftTitles: AxisTitles(),
                                    rightTitles: AxisTitles(),
                                    topTitles: AxisTitles(),
                                    bottomTitles: AxisTitles(
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        getTitlesWidget: bottomTitles,
                                        reservedSize: 16,
                                      ),
                                    ),
                                  ),
                                  barTouchData: BarTouchData(enabled: false),
                                  borderData: FlBorderData(show: false),
                                  gridData: FlGridData(show: false),
                                  barGroups: [
                                    generateGroupData(0, 2, 3, 2),
                                    generateGroupData(1, 2, 5, 1.7),
                                    generateGroupData(2, 1.3, 3.1, 2.8),
                                    generateGroupData(3, 3.1, 4, 3.1),
                                    generateGroupData(4, 0.8, 3.3, 3.4),
                                    generateGroupData(5, 2, 5.6, 1.8),
                                  ],
                                  maxY: 10 + (betweenSpace * 3),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.panorama_fish_eye,
                                color: Colors.blue,
                                size: 20,
                              ),
                              Text(
                                "HELTH RATE",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
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
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 50,
                        width: 100,
                        child: Text(
                          "Hepatits",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.panorama_fish_eye,
                              color: Colors.yellow,
                              size: 20,
                            ),
                            Text(
                              "A",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.panorama_fish_eye,
                              color: Colors.grey,
                              size: 20,
                            ),
                            Text(
                              "B",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.panorama_fish_eye,
                              color: Colors.orange,
                              size: 20,
                            ),
                            Text(
                              "c",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 240,
                    width: 350,
                    child: SfCircularChart(
                      palette: [Colors.grey, Colors.orange, Colors.yellow],
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
                ],
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<GDPdata> getchartdata() {
  final List<GDPdata> chardata = [
    GDPdata('india', 1500),
    GDPdata('oceania', 2500),
    GDPdata('America', 3500),
  ];
  return chardata;
}

class GDPdata {
  GDPdata(this.continet, this.gdp);
  final String continet;
  final int gdp;
}

class salesdata {
  final String month;
  final double sales;

  salesdata(this.month, this.sales);
}
