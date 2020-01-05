import 'package:flutter/material.dart';
import 'package:uiexp/bottomsheet.dart';
import 'package:uiexp/tabs.dart';
import 'slidingCard.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xFFEEF1F3),
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 8),
                  Header(),
                  SizedBox(height: 40),
                  Tabs(0),
                  SizedBox(height: 8),
                  SlidingCardsView(),
                ],
              ),
              ExhibitionBottomSheet()
            ],
          ),
        ),
      ),
    );
  }
}
class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Text(
        'Shenzhen',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
