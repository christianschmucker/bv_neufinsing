import 'package:bv_neufinsing/customWidgets/date_card.dart';
import 'package:bv_neufinsing/pages/home_page.dart';
import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  int red = 17;
  int green = 50;
  int blue = 77;

  @override
  Widget build(BuildContext context) {


    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CalendarHeadline(),
              DateCard(red: red, green: green, blue: blue),
              DateCard(red: red+30, green: green+30, blue: blue+30),
              DateCard(red: red+60, green: green+60, blue: blue+60),
              DateCard(red: red+90, green: green+90, blue: blue+90),
              DateCard(red: red+120, green: green+120, blue: blue+120),
              DateCard(red: red+150, green: green+150, blue: blue+150),
              DateCard(red: red+120, green: green+120, blue: blue+120),
              DateCard(red: red+90, green: green+90, blue: blue+90),
              DateCard(red: red+60, green: green+60, blue: blue+60),
              DateCard(red: red+30, green: green+30, blue: blue+30),
              DateCard(red: red, green: green, blue: blue),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
            ],
          ),
        )
    );
  }
}

class CalendarHeadline extends StatelessWidget {
  const CalendarHeadline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Termine",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: "Montserrat",
            ),
          ),
        ],
      ),
    );
  }
}