import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travellop2/widgets/bookOverviewScreen.dart';
import 'package:travellop2/widgets/favoriteOverviewScreen.dart';
import 'package:travellop2/widgets/homeOverviewScreen.dart';
import 'package:travellop2/widgets/profileOverviewScreen.dart';

class TravelOverviewScreen extends StatefulWidget {
  @override
  _TravelOverviewScreenState createState() => _TravelOverviewScreenState();
}

class _TravelOverviewScreenState extends State<TravelOverviewScreen> {
  int _currentIndex = 0;

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> _screenList = [
    HomeOverViewScreen(),
    FavoriteOverviewScreen(),
    BookOverviewScreen(),
    ProfileOverviewScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Travellop"),
      ),
      body: _screenList[_currentIndex],
      bottomNavigationBar: FancyBottomNavigation(
        initialSelection: _currentIndex,
        onTabChangedListener: onTapped,
        tabs: [
          TabData(title: "Home", iconData: Icons.home),
          TabData(title: "Favorite", iconData: Icons.favorite),
          TabData(title: "Book", iconData: Icons.hotel),
          TabData(title: "Profile", iconData: Icons.person_pin)
        ],
        textColor: Colors.white,
        circleColor: Colors.white,
        inactiveIconColor: Colors.blueGrey,
        activeIconColor: Colors.blue[900],
        barBackgroundColor: Colors.blue[900],
      ),
      //bottomNavigationBar: BottomNavigationBar(),
    );
  }
}
