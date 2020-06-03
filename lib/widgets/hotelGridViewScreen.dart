import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travellop2/models/hotelCategoryModel.dart';
import 'package:travellop2/screens/hotelItemsScreen.dart';

class HotelGridViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _getLoadedHotelDetail = Provider.of<HotelCategoryModel>(context);
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HotelItemsScreen.routeName,
            arguments: _getLoadedHotelDetail.hid);
      },
      child: Card(
        elevation: 3,
        margin: EdgeInsets.all(10),
        child: Container(
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.network(
                _getLoadedHotelDetail.hotelImageUrl[0],
                width: double.infinity,
                height: 250,
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                _getLoadedHotelDetail.hotelName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
