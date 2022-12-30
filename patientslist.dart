import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class Patientslist extends StatefulWidget {
  Patientslist({Key? key}) : super(key: key);

  @override
  State<Patientslist> createState() => _PatientslistState();
}

class _PatientslistState extends State<Patientslist> {
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
          mainAxisAlignment: MainAxisAlignment.start,
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
                      "My task list",
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
              height: 800,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultTabController(
                    length: 3,
                    child: Container(
                      constraints: BoxConstraints.expand(height: 50),
                      height: 100,
                      width: 350,
                      margin: EdgeInsets.all(10),
                      child: TabBar(
                        unselectedLabelColor: Colors.redAccent,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.redAccent),
                        tabs: [
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Text(
                                "All",
                                style:
                                    TextStyle(fontSize: 20, color: Colors.blue),
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Men",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Women",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                          ),
                        ],
                        labelColor: Colors.black,
                        isScrollable: false,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    height: 30,
                    width: 100,
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "--D-------",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 350,
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Badge(
                                  padding: EdgeInsets.all(5),
                                  position: BadgePosition.topStart(),
                                  child: Text(
                                    "Caral Driffith",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Badge(
                                  padding: EdgeInsets.all(5),
                                  position: BadgePosition.topStart(),
                                  child: Text(
                                    "23.0 Year",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          margin: EdgeInsets.all(8),
                          child: Badge(
                              position: BadgePosition.topEnd(),
                              child: Icon(Icons.message,
                                  size: 20, color: Colors.blue)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          margin: EdgeInsets.all(8),
                          child: Badge(
                              position: BadgePosition.topEnd(),
                              child: Icon(Icons.message,
                                  size: 20, color: Colors.blue)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 350,
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Badge(
                                  padding: EdgeInsets.all(5),
                                  position: BadgePosition.topStart(),
                                  child: Text(
                                    "Caral Driffith",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Badge(
                                  padding: EdgeInsets.all(5),
                                  position: BadgePosition.topStart(),
                                  child: Text(
                                    "23.0 Year",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          margin: EdgeInsets.all(8),
                          child: Badge(
                              position: BadgePosition.topEnd(),
                              child: Icon(Icons.message,
                                  size: 20, color: Colors.blue)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          margin: EdgeInsets.all(8),
                          child: Badge(
                              position: BadgePosition.topEnd(),
                              child: Icon(Icons.message,
                                  size: 20, color: Colors.blue)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 350,
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Badge(
                                  padding: EdgeInsets.all(5),
                                  position: BadgePosition.topStart(),
                                  child: Text(
                                    "Caral Driffith",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Badge(
                                  padding: EdgeInsets.all(5),
                                  position: BadgePosition.topStart(),
                                  child: Text(
                                    "23.0 Year",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          margin: EdgeInsets.all(8),
                          child: Badge(
                              position: BadgePosition.topEnd(),
                              child: Icon(Icons.message,
                                  size: 20, color: Colors.blue)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          margin: EdgeInsets.all(8),
                          child: Badge(
                              position: BadgePosition.topEnd(),
                              child: Icon(Icons.message,
                                  size: 20, color: Colors.blue)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    height: 30,
                    width: 100,
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "--D-------",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 350,
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Badge(
                                  padding: EdgeInsets.all(5),
                                  position: BadgePosition.topStart(),
                                  child: Text(
                                    "Caral Driffith",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Badge(
                                  padding: EdgeInsets.all(5),
                                  position: BadgePosition.topStart(),
                                  child: Text(
                                    "23.0 Year",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          margin: EdgeInsets.all(8),
                          child: Badge(
                              position: BadgePosition.topEnd(),
                              child: Icon(Icons.message,
                                  size: 20, color: Colors.blue)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          margin: EdgeInsets.all(8),
                          child: Badge(
                              position: BadgePosition.topEnd(),
                              child: Icon(Icons.message,
                                  size: 20, color: Colors.blue)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 350,
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Badge(
                                  padding: EdgeInsets.all(5),
                                  position: BadgePosition.topStart(),
                                  child: Text(
                                    "Caral Driffith",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Badge(
                                  padding: EdgeInsets.all(5),
                                  position: BadgePosition.topStart(),
                                  child: Text(
                                    "23.0 Year",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          margin: EdgeInsets.all(8),
                          child: Badge(
                              position: BadgePosition.topEnd(),
                              child: Icon(Icons.message,
                                  size: 20, color: Colors.blue)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          margin: EdgeInsets.all(8),
                          child: Badge(
                              position: BadgePosition.topEnd(),
                              child: Icon(Icons.message,
                                  size: 20, color: Colors.blue)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 350,
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Badge(
                                  padding: EdgeInsets.all(5),
                                  position: BadgePosition.topStart(),
                                  child: Text(
                                    "Caral Driffith",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Badge(
                                  padding: EdgeInsets.all(5),
                                  position: BadgePosition.topStart(),
                                  child: Text(
                                    "23.0 Year",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          margin: EdgeInsets.all(8),
                          child: Badge(
                              position: BadgePosition.topEnd(),
                              child: Icon(Icons.message,
                                  size: 20, color: Colors.blue)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          margin: EdgeInsets.all(8),
                          child: Badge(
                              position: BadgePosition.topEnd(),
                              child: Icon(Icons.message,
                                  size: 20, color: Colors.blue)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
