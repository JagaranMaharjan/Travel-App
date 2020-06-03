import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travellop2/models/bookModel.dart';

class BookOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _getLoadedValue = Provider.of<Book>(context);
    return ListView.builder(
        itemCount: _getLoadedValue.list.length,
        itemBuilder: (context, index) {
          return _getLoadedValue.list.length == 0
              ? Container(
                  child: Center(
                    child: Text(
                      "You haven't booked hotels.",
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 24,
                          letterSpacing: 1),
                    ),
                  ),
                )
              : Dismissible(
                  background: Card(
                    margin: EdgeInsets.all(10),
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.delete_forever,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  key: ValueKey(DateTime.now()),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {
                    _getLoadedValue.removeItemsFromList(
                        _getLoadedValue.list.values.toList()[index].hid);
                  },
                  child: Card(
                    elevation: 3,
                    shadowColor: Colors.blue[900],
                    margin: EdgeInsets.all(10),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      child: Column(
                        children: <Widget>[
                          // Text(_getLoadedValue[index].dateTime.toString()),
                          ListTile(
                            title: Text(_getLoadedValue.list.values
                                .toList()[index]
                                .hotelName),
                            subtitle: Text(_getLoadedValue.list.values
                                .toList()[index]
                                .dateTime
                                .toString()),
                            leading: Text(_getLoadedValue.list.values
                                .toList()[index]
                                .roomNo
                                .toString()),
                            trailing: Text("Booked"),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
        });
  }
}
