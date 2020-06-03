import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travellop2/dummyData/dummyHotelCategory.dart';
import 'package:travellop2/models/bookModel.dart';

class HotelRoomScreen extends StatelessWidget {
  static const String routeName = "/hotelRoomScreen";
  @override
  Widget build(BuildContext context) {
    final _id = ModalRoute.of(context).settings.arguments.toString();
    final _getHotelRoomDetail =
        Provider.of<DummyHotelCategory>(context).findById(_id);
    final _addToBookList = Provider.of<Book>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(_getHotelRoomDetail.hotelName),
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
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 0, left: 10, right: 10),
            child: Text(
              "Available Room No To Book",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue[900],
                letterSpacing: 1,
                //fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(),
          Expanded(
            child: ListView.builder(
                itemCount: _getHotelRoomDetail.roomNo.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      Container(
                        child: ListTile(
                          title: Text(
                              "Room No. : ${_getHotelRoomDetail.roomNo[index]}"),
                          subtitle: Text("Total Number of Bed : 3"),
                          trailing: Icon(
                            Icons.bookmark_border,
                            color: Colors.blueGrey,
                          ),
                          onTap: () {
                            if (_addToBookList.checkBookedItemsInList(
                                    _getHotelRoomDetail.hid,
                                    int.parse(
                                        _getHotelRoomDetail.roomNo[index])) ==
                                false) {
                              _addToBookList.addBookedItemsInList(
                                _getHotelRoomDetail.hid,
                                _getHotelRoomDetail.hotelName,
                                _getHotelRoomDetail.hotelLocation,
                                int.parse(_getHotelRoomDetail.roomNo[index]),
                                DateTime.now(),
                              );
                              Scaffold.of(context).removeCurrentSnackBar();
                              Scaffold.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: Colors.blue[900],
                                  content: Text(
                                    "You have booked room no."
                                    " : "
                                    "${_getHotelRoomDetail.roomNo[index]}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: "font1",
                                        letterSpacing: 1),
                                  ),
                                  duration: Duration(seconds: 1),
                                  action: SnackBarAction(
                                    label: "UNDO",
                                    textColor: Colors.yellow,
                                    onPressed: () {
                                      _addToBookList.removeItemsFromList(
                                          _getHotelRoomDetail.hid);
                                    },
                                  ),
                                ),
                              );
                            } else {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext buildContext) {
                                    return AlertDialog(
                                      title: Text("Room No. : "
                                          "${_getHotelRoomDetail.roomNo[index]} is not available "
                                          "!!!"),
                                    );
                                  });
                            }
                          },
                        ),
                        padding: EdgeInsets.only(
                            right: 20, left: 20, bottom: 5, top: 5),
                        color: Colors.blue[900].withOpacity(0.10),
                      ),
                      Divider(),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
