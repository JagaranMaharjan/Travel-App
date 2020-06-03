import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TravelCategoryItemDesc extends StatefulWidget {
  final String desc;
  TravelCategoryItemDesc({this.desc});
  @override
  _TravelCategoryItemDescState createState() => _TravelCategoryItemDescState();
}

class _TravelCategoryItemDescState extends State<TravelCategoryItemDesc> {
  bool _showContainer = false;
  void onTapped() {
    setState(() {
      _showContainer = !_showContainer;
    });
  }

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
            trailing: IconButton(
              onPressed: onTapped,
              icon: Icon(
                _showContainer ? Icons.expand_less : Icons.expand_more,
                color: Colors.blue[900],
              ),
            ),
            leading: Icon(
              Icons.description,
              color: Colors.black,
            ),
            title: Text(
              "Description",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                letterSpacing: 1,
                //fontWeight: FontWeight.bold,
              ),
            ),
          ),
          if (_showContainer)
            Column(
              children: <Widget>[
                Divider(
                  color: Colors.blue[900],
                ),
                Container(
                  width: double.infinity,
                  margin:
                      EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 0),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    widget.desc,
                    textAlign: TextAlign.justify,
                    softWrap: true,
                    style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 14,
                      wordSpacing: 2,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
