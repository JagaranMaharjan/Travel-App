import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travellop2/dummyData/dummyHotelCategory.dart';
import 'package:travellop2/widgets/travelCategoryItemDescription.dart';
import 'package:travellop2/widgets/travelCategoryItemListTile.dart';

import 'hotelRoomScreen.dart';

class HotelItemsScreen extends StatelessWidget {
  static const String routeName = "/hotelItemsScreen";

  @override
  Widget build(BuildContext context) {
    final String _getId = ModalRoute.of(context).settings.arguments.toString();
    final _getHotelDetails =
        Provider.of<DummyHotelCategory>(context).findById(_getId);
    return Scaffold(
      appBar: AppBar(
        title: Text(_getHotelDetails.hotelName),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
              size: 26,
            ),
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, "/");
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(0),
              elevation: 2,
              color: Colors.blue[900],
              shape: RoundedRectangleBorder(),
              child: Container(
                width: double.infinity,
                height: 213,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(2),
                child: Image.network(
                  _getHotelDetails.hotelImageUrl[1],
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            TravelCategoryItemsListTile(
              title: _getHotelDetails.hotelLocation,
              icons: Icons.location_on,
            ),
            TravelCategoryItemDesc(
              desc: _getHotelDetails.hotelDesc,
            ),
            Divider(
              color: Colors.blue[900],
            ),
            TravelCategoryItemsListTile(
              title: _getHotelDetails.hotelNo,
              icons: Icons.phone,
            ),
            TravelCategoryItemsListTile(
              title: _getHotelDetails.totalRoom.toString(),
              icons: Icons.room_service,
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, HotelRoomScreen.routeName,
                    arguments: _getId);
              },
              child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 50,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue[900].withOpacity(0.10),
                  borderRadius: BorderRadius.circular(50),
                  border: Border(
                    left: BorderSide(
                      color: Colors.orange,
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                    bottom: BorderSide(
                      color: Colors.orange,
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                    top: BorderSide(
                      color: Colors.orange,
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                    right: BorderSide(
                      color: Colors.orange,
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.hotel),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Available Room",
                      style: TextStyle(
                        fontFamily: "font1",
                        letterSpacing: 1,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
