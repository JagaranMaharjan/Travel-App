import 'package:flutter/material.dart';

class TravelCategoryItemsListTile extends StatelessWidget {
  final IconData icons;
  final String title;
  TravelCategoryItemsListTile({this.icons, this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(0),
      padding: EdgeInsets.all(0),
      //  color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            //contentPadding: EdgeInsets.all(0),
            leading: Icon(
              icons,
              color: Colors.black,
            ),
            title: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                letterSpacing: 1,
                //fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(
            color: Colors.blue[900],
          ),
        ],
      ),
    );
  }
}
