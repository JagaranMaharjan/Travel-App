import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travellop2/dummyData/dummyTravellingCategory.dart';
import 'package:travellop2/widgets/travellopCategoryScreen.dart';

import 'categoryTitleWidget.dart';
import 'imageSliderWidget.dart';

class HomeOverViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _getLoadedCategoryValue =
        Provider.of<DummyTravellingCategory>(context);
    final _index = _getLoadedCategoryValue.travelCategoryListValue.length;
    final _categoryValue = _getLoadedCategoryValue.travelCategoryListValue;
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ImageSliderWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  CategoryTitleWidget(title: "Education"),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(11),
                    height: 230,
                    width: double.infinity,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: _index,
                        itemBuilder: (context, index) {
                          if (_categoryValue[index].isAtEdu) {
                            return ChangeNotifierProvider.value(
                              value: _categoryValue[index],
                              child: TravellopCategoryScreen(),
                            );
                          }
                          return null;
                        }),
                  ),
                  CategoryTitleWidget(title: "Climbing"),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(11),
                    height: 230,
                    width: double.infinity,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: _index,
                        itemBuilder: (context, index) {
                          if (_categoryValue[index].isAtClimbing) {
                            return ChangeNotifierProvider.value(
                              value: _categoryValue[index],
                              child: TravellopCategoryScreen(),
                            );
                          }
                          return null;
                        }),
                  ),
                  CategoryTitleWidget(title: "Nature"),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(11),
                    height: 230,
                    width: double.infinity,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: _index,
                        itemBuilder: (context, index) {
                          if (_categoryValue[index].isAtNature) {
                            return ChangeNotifierProvider.value(
                              value: _categoryValue[index],
                              child: TravellopCategoryScreen(),
                            );
                          }
                          return null;
                        }),
                  ),
                  CategoryTitleWidget(title: "Top Destination"),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(11),
                    height: 230,
                    width: double.infinity,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: _index,
                        itemBuilder: (context, index) {
                          if (_categoryValue[index].isAtTopDestination) {
                            return ChangeNotifierProvider.value(
                              value: _categoryValue[index],
                              child: TravellopCategoryScreen(),
                            );
                          }
                          return null;
                        }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
