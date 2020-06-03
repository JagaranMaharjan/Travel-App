import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travellop2/dummyData/dummyTravellingCategory.dart';
import 'package:travellop2/widgets/hotelOverviewScreen.dart';
import 'package:travellop2/widgets/travelCategoryItemDescription.dart';
import 'package:travellop2/widgets/travelCategoryItemListTile.dart';

class TravelCategoryItemDetails extends StatefulWidget {
  static const String routeName = "/travelCategoryItemDetails";

  @override
  _TravelCategoryItemDetailsState createState() =>
      _TravelCategoryItemDetailsState();
}

class _TravelCategoryItemDetailsState extends State<TravelCategoryItemDetails>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  List<Widget> _tabIcons = [
    Tab(
      icon: Icon(Icons.description),
      text: "Description",
    ),
    Tab(
      icon: Icon(Icons.hotel),
      text: "Hotel",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final String _id = ModalRoute.of(context).settings.arguments.toString();
    final _getLoadedCategoryDetails =
        Provider.of<DummyTravellingCategory>(context).findValueById(_id);
    return Scaffold(
      appBar: AppBar(
        title: Text(_getLoadedCategoryDetails.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
              size: 26,
            ),
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, "/");
            },
          ),
        ],
        bottom: TabBar(
          tabs: _tabIcons,
          controller: _tabController,
          isScrollable: false,
          unselectedLabelColor: Colors.white70,
          labelColor: Colors.white,
          indicatorColor: Colors.red,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Card(
                  margin: EdgeInsets.all(0),
                  elevation: 2,
                  color: Colors.blue[900],
                  shape: RoundedRectangleBorder(),
                  child: Container(
                    width: double.infinity,
                    height: 213,
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(2),
                    child: Image.asset(
                      _getLoadedCategoryDetails.imageUrl,
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                TravelCategoryItemsListTile(
                  title: _getLoadedCategoryDetails.title,
                  icons: Icons.location_on,
                ),
                TravelCategoryItemDesc(
                  desc: _getLoadedCategoryDetails.desc,
                ),
                Divider(
                  color: Colors.blue[900],
                ),
                TravelCategoryItemsListTile(
                  title: _getLoadedCategoryDetails.price,
                  icons: Icons.attach_money,
                ),
                TravelCategoryItemsListTile(
                  title: _getLoadedCategoryDetails.camera,
                  icons: Icons.monochrome_photos,
                ),
                TravelCategoryItemsListTile(
                  title: _getLoadedCategoryDetails.food,
                  icons: Icons.fastfood,
                ),
                TravelCategoryItemsListTile(
                  title: "Restricted Area",
                  icons: Icons.smoke_free,
                ),
              ],
            ),
          ),
          HotelOverviewScreen(
            travelCategoryId: _getLoadedCategoryDetails.title,
          ),
        ],
      ),
    );
  }
}
/*
  SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Card(
                  margin: EdgeInsets.all(0),
                  elevation: 2,
                  color: Colors.blue[900],
                  shape: RoundedRectangleBorder(),
                  child: Container(
                    width: double.infinity,
                    height: 287,
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(2),
                    child: Image.asset(
                      _getLoadedCategoryDetails.imageUrl,
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                TravelCategoryItemsListTile(
                  title: _getLoadedCategoryDetails.title,
                  icons: Icons.location_on,
                ),
                TravelCategoryItemDesc(
                  desc: _getLoadedCategoryDetails.desc,
                ),
                Divider(
                  color: Colors.blue[900],
                ),
                TravelCategoryItemsListTile(
                  title: _getLoadedCategoryDetails.price,
                  icons: Icons.attach_money,
                ),
                TravelCategoryItemsListTile(
                  title: _getLoadedCategoryDetails.camera,
                  icons: Icons.monochrome_photos,
                ),
                TravelCategoryItemsListTile(
                  title: _getLoadedCategoryDetails.food,
                  icons: Icons.fastfood,
                ),
                TravelCategoryItemsListTile(
                  title: "Restricted Area",
                  icons: Icons.smoke_free,
                ),
              ],
            ),
          ),
 * */
