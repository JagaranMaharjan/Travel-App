import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travellop2/dummyData/dummyTravellingCategory.dart';
import 'package:travellop2/screens/hotelItemsScreen.dart';
import 'package:travellop2/screens/hotelRoomScreen.dart';
import 'package:travellop2/screens/travelCategoryItemDetails.dart';
import 'package:travellop2/screens/travelOverviewScreen.dart';

import 'dummyData/dummyHotelCategory.dart';
import 'models/bookModel.dart';

void main() {
  runApp(Travellop());
}

class Travellop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: DummyTravellingCategory(), //used to transfer data
        ),
        ChangeNotifierProvider.value(
          value: DummyHotelCategory(), //used to transfer data
        ),
        ChangeNotifierProvider.value(
          value: Book(), //used to transfer data
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: "font1",
          primaryColor: Colors.blueGrey,
          accentColor: Colors.black,
          appBarTheme: AppBarTheme(
            color: Colors.blue[900],
            elevation: 3,
            brightness: Brightness.dark,
            textTheme: TextTheme(
              title: TextStyle(
                color: Colors.white,
                fontFamily: "font1",
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
        ),
        title: "Travelling App",
        initialRoute: "/",
        routes: {
          "/": (context) => TravelOverviewScreen(),
          TravelCategoryItemDetails.routeName: (context) =>
              TravelCategoryItemDetails(),
          HotelItemsScreen.routeName: (context) => HotelItemsScreen(),
          HotelRoomScreen.routeName: (context) => HotelRoomScreen(),
        },
      ),
    );
  }
}
