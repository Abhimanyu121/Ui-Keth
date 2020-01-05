import 'package:flutter/material.dart';
class Tabs extends StatelessWidget {
  bool tab1 = false;
  bool tab2 = false;
  bool tab3 = false;
  Tabs(int index){
    switch(index){
      case 0: tab1 =true; break;
      case 1: tab2 =true; break;
      case 3: tab3 = true; break;
      default: tab1 = true;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 24),
        MyTab(text: 'Nearby', isSelected: tab1),
        MyTab(text: 'Recent', isSelected: tab2),
        MyTab(text: 'Notice', isSelected: tab3),
      ],
    );
  }
}

class MyTab extends StatelessWidget {
  final String text;
  final bool isSelected;

  const MyTab({Key key, @required this.isSelected, @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            text,
            style: TextStyle(
              fontSize: isSelected ? 16 : 14,
              color: isSelected ? Colors.black : Colors.grey,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
            ),
          ),
          Container(
            height: 6,
            width: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: isSelected ? Color(0xFFFF5A1D) : Colors.white,
            ),
          )
        ],
      ),
    );
  }
}