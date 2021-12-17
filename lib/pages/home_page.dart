import 'package:bv_neufinsing/customWidgets/date_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int red = 17;
  int green = 50;
  int blue = 77;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopBar(),
              const SizedBox(
                width: double.infinity,
                height: 50.0,
              ),
              const Headline(text: "Termine"),
              DateCard(red: red, green: green, blue: blue),
              DateCard(red: red, green: green, blue: blue),
              const SizedBox(
                width: double.infinity,
                height: 50.0,
              ),
              const Headline(text: "Ranking"),
              DateCard(red: red, green: green, blue: blue),
              const SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
            ],
          )
        ),
      )
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Servus\nChristian!",
            style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: "Montserrat",
            ),
          ),
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.25)),
            ]),
            child: CircleAvatar(
              radius: 25.0,
              backgroundColor: const Color.fromRGBO(17, 50, 77, 1.0),
              child: IconButton(
                onPressed: (){
                  debugPrint("open stüberl page");
                },
                icon: const Icon(
                  Icons.location_on,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}

class Headline extends StatelessWidget {
  const Headline({Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25.0),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: "Montserrat"
          ),
        ),
      ),
    );
  }
}
