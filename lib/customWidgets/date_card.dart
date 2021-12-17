import 'package:flutter/material.dart';

class DateCard extends StatelessWidget {
  const DateCard({
    Key? key,
    required this.red,
    required this.green,
    required this.blue,
  }) : super(key: key);

  final int red;
  final int green;
  final int blue;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 10.0, bottom: 10.0),
      child: Container(
          width: width,
          height: 125,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(red, green, blue, 1.0),
                    Color.fromRGBO(red+20%255, green+20%255, blue+20%255, 1.0)
                  ])
          ),
          child: Row(
            children: [
              Container(
                width: 90.0,
                height: 90.0,
                margin: const EdgeInsets.all(20.0),
                padding: EdgeInsets.zero,
                child: Material(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10.0),
                  elevation: 5.0,
                  child: Container(
                    margin: EdgeInsets.zero,
                    alignment: Alignment.center,
                    child: const Text(
                      "18.\n12.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 90.0,
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 10.0, right: 25.0),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Headline",
                        maxLines: 1,
                        style:  TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Description...",
                        maxLines: 1,
                        style:  TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Location",
                        maxLines: 1,
                        style:  TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}