import 'package:flutter/material.dart';

class DrinksPage extends StatefulWidget {
  const DrinksPage({Key? key}) : super(key: key);

  @override
  _DrinksPageState createState() => _DrinksPageState();
}

class _DrinksPageState extends State<DrinksPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Drinks Page"),
      ),
    );
  }
}
