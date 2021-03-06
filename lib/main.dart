import 'package:bv_neufinsing/pages/home_wrapper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}


class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BVNApp",
      home: HomeWrapper(),
    );
  }
}

