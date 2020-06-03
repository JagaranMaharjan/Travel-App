import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookItems {
  final String hid;
  final String hotelName;
  final String hotelLocation;
  final int roomNo;
  final DateTime dateTime;
  BookItems(
      {this.hid,
      this.hotelName,
      this.roomNo,
      this.hotelLocation,
      this.dateTime});
}

class Book with ChangeNotifier {
  //created map list
  Map<String, BookItems> _mapItems = {};

  //retrun list
  Map<String, BookItems> get list {
    return {..._mapItems};
  }

  int get len {
    return _mapItems.length == null ? 0 : _mapItems.length;
  }

  //check booked items already exist in list or not
  bool checkBookedItemsInList(String hid, int roomNo) {
    if (_mapItems.containsKey(hid)) {
      _mapItems.forEach((key, value) {
        if ("${key}" == hid && "${value}" == roomNo.toString()) {
          return true;
        }
        return true;
      });
    }
    return false;
    //notifyListeners();
  }

  //add new booked items in list
  void addBookedItemsInList(String hid, String hotelName, String hotelLocation,
      int roomNo, DateTime dateTime) {
    _mapItems.putIfAbsent(
      DateTime.now().toString(),
      () => BookItems(
          hid: hid,
          hotelLocation: hotelLocation,
          hotelName: hotelName,
          roomNo: roomNo,
          dateTime: dateTime),
    );
    notifyListeners();
    print(_mapItems);
  }

  //remove item from list
  void removeItemsFromList(String hid) {
    _mapItems.remove(hid);
  }
}
