import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travellop2/dummyData/dummyHotelCategory.dart';
import 'package:travellop2/widgets/hotelGridViewScreen.dart';

class HotelOverviewScreen extends StatelessWidget {
  final String travelCategoryId;
  HotelOverviewScreen({this.travelCategoryId});
  @override
  Widget build(BuildContext context) {
    final _getLoadedHotelValue =
        Provider.of<DummyHotelCategory>(context).hotelList;
    return ListView.builder(
      itemCount: _getLoadedHotelValue.length,
      itemBuilder: (context, index) {
        return ChangeNotifierProvider.value(
            builder: (context, child) {
              if (_getLoadedHotelValue[index].hotelLocation ==
                  travelCategoryId) {
                return HotelGridViewScreen();
              }
              return Container();
            },
            value: _getLoadedHotelValue[index]);
      },
    );
    /* GridView.builder(
      itemCount: _getLoadedHotelValue.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.75),
      ),

    );*/
  }
}
