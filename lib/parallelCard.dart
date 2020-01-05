import 'package:flutter/material.dart';
class _SlidingCardsViewState extends State<SlidingCardsView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.55,  //<-- set height of the card
      child: SlidingCard(                                 //<-- new widget
        name: 'Shenzhen GLOBAL DESIGN AWARD 2018',
        date: '4.20-30',
        assetName: 'steve-johnson.jpeg',
      ),
    );
  }
}
class SlidingCardsView extends StatefulWidget {
  @override
  _SlidingCardsViewState createState() => _SlidingCardsViewState();
}



class SlidingCard extends StatelessWidget {
  final String name; //<-- title of the event
  final String date; //<-- date of the event
  final String assetName; //<-- name of the image to be displayed

  const SlidingCard({
    Key key,
    @required this.name,
    @required this.date,
    @required this.assetName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 8, right: 8, bottom: 24),
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)), //<--custom shape
      child: Column(
        children: <Widget>[
          ClipRRect(  //<--clipping image
            borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
            child: Image.asset( //<-- main image
              'assets/$assetName',
              height: MediaQuery.of(context).size.height * 0.3,
              fit: BoxFit.none,
            ),
          ),
          SizedBox(height: 8),
          Expanded(
            child: Container(), //<-- will be replaced soon :)
          ),
        ],
      ),
    );
  }
}
