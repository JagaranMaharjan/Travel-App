import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travellop2/dummyData/dummyTravellingCategory.dart';

import 'favoriteCategoryScreen.dart';

class FavoriteOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool _userValue = false;
    final _getLoadedCategory =
        Provider.of<DummyTravellingCategory>(context).favoriteCategory;
    return _getLoadedCategory.length == 0
        ? Container(
            alignment: Alignment.center,
            child: Text(
              "No "
              "Favorite Places",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue[900],
                fontWeight: FontWeight.bold,
                fontFamily: "font1",
                letterSpacing: 2,
              ),
            ),
          )
        : Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(11),
            height: double.infinity,
            width: double.infinity,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 4 / 4,
                ),
                itemCount: _getLoadedCategory.length,
                itemBuilder: (context, index) {
                  return ChangeNotifierProvider.value(
                    value: _getLoadedCategory[index],
                    child: FavoriteCategoryScreen(),
                  );
                }),
          );
  }
}
