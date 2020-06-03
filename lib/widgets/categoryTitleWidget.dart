import 'package:flutter/material.dart';

class CategoryTitleWidget extends StatelessWidget {
  final String title;
  CategoryTitleWidget({this.title});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(),
      color: Colors.blue[900],
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        width: double.infinity,
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
    );
  }
}
