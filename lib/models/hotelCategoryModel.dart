import 'package:flutter/cupertino.dart';

class HotelCategoryModel with ChangeNotifier {
  final String hid;
  final String hotelName;
  final String hotelLocation;
  final String hotelDesc;
  final String hotelNo;
  final List<String> hotelImageUrl;
  final int totalRoom;
  final List<String> roomNo;

  HotelCategoryModel({
    this.hid,
    this.hotelDesc,
    this.hotelImageUrl,
    this.hotelLocation,
    this.hotelName,
    this.hotelNo,
    this.roomNo,
    this.totalRoom,
  });
}
