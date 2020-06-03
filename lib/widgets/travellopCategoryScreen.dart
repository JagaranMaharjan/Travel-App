import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travellop2/models/travelCategoryModel.dart';
import 'package:travellop2/screens/travelCategoryItemDetails.dart';

class TravellopCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _getElementFromModel =
        Provider.of<TravelCategoryModel>(context, listen: false);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      shadowColor: Colors.blue[900],
      elevation: 1.5,
      margin: EdgeInsets.all(10),
      color: Colors.blue[900],
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        //color: Colors.white,
        margin: EdgeInsets.all(0.5),
        padding: EdgeInsets.all(10),
        width: 150,
        height: 200,
        child: Column(
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.pushNamed(
                    context, TravelCategoryItemDetails.routeName,
                    arguments: _getElementFromModel.id);
              },
              child: Image.asset(
                _getElementFromModel.imageUrl,
                fit: BoxFit.fill,
                width: 150,
                height: 130,
                alignment: Alignment.topCenter,
              ),
            ),
            Divider(),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    _getElementFromModel.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Consumer<TravelCategoryModel>(
                    builder: (context, value, _) {
                      return IconButton(
                        padding: EdgeInsets.all(0),
                        alignment: Alignment.centerRight,
                        onPressed: () {
                          _getElementFromModel.toggleIsFavorite();
                        },
                        icon: Icon(
                          _getElementFromModel.favorites
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: Colors.redAccent,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
