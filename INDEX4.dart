import 'package:flutter/material.dart';
import 'package:natura/UIDESIGN3/Planner.dart';
import 'package:natura/UIDESIGN3/appointmentscreen.dart';
import 'package:natura/UIDESIGN3/appointmentstatistics.dart';
import 'package:natura/UIDESIGN3/doctorappointment.dart';
import 'package:natura/UIDESIGN3/doctordashboard.dart';
import 'package:natura/UIDESIGN3/doctorratinglist.dart';
import 'package:natura/UIDESIGN3/doctorstatics.dart';
import 'package:natura/UIDESIGN3/epidemiccalender.dart';
import 'package:natura/UIDESIGN3/healthstatistics.dart';
import 'package:natura/UIDESIGN3/medicalstafflist.dart';
import 'package:natura/UIDESIGN3/medicaltest.dart';
import 'package:natura/UIDESIGN3/medicaltest1.dart';
import 'package:natura/UIDESIGN3/monthappointment.dart';
import 'package:natura/UIDESIGN3/patientslist.dart';
import 'package:natura/UIDESIGN3/pationtpace.dart';
import 'package:natura/UIDESIGN3/pationtstatics.dart';
import 'package:natura/UIDESIGN3/questionsscreen.dart';
import 'package:natura/UIDESIGN3/statistics.dart';
import 'package:natura/UIDESIGN3/tasklistscreen.dart';
import 'package:natura/UIDESIGN3/taskscheduler.dart';
import 'package:natura/UIDESIGN3/todayappointment.dart';

class INDEX4 extends StatefulWidget {
  INDEX4({Key? key}) : super(key: key);

  @override
  State<INDEX4> createState() => _INDEX4State();
}

class _INDEX4State extends State<INDEX4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("index"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Doctordashboard(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Doctordashboard",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => doctorappointment(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "doctoerappointment",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => pationtpace(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "PatientPace",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Questionscreen(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "QuestionScreen",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Doctorratinglist(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "DoctorRatingList",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MedicalTest(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Medical Test",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Statistics(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Statistics",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AppointmentStatics(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "AppointmentStatistics",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PatientStatistics(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "PatientStatistics",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MonthAppointment(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "MonthAppointment",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Planner(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Planner",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EpidemicCalender(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "EpidemicCalender",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MedicalStaffList(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "MedicalStaffList",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MedicalTest1(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "MedicalTest",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AppointmentScreen(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "My appointment",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TodayAppoiment(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "TodayAppoiment",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TaskScheduler(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "TaskSchedule",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Patientslist(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Patientslist",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HealthStatistics(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Health Statistics",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DoctorStatics(),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Doctor Statistics",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
