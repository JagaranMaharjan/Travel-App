import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.8),
      child: Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              color: Colors.blueGrey.withOpacity(0.10),
            ),
            clipper: getClipper(),
          ),
          Positioned(
            width: 370.0,
            top: MediaQuery.of(context).size.height / 6.5,
            child: Column(
              children: <Widget>[
                Container(
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://avatars0.githubusercontent.com/u/60642304?s=460&u=4b205d76b1b1ba4bcae663fa6a5e764eac85ae3d&v=4",
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(75.0),
                    ),
                    boxShadow: [
                      BoxShadow(blurRadius: 2.0, color: Colors.orange),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.android,
                      color: Colors.blueGrey,
                      size: 25,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.tablet_mac,
                      color: Colors.blueGrey,
                      size: 25,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.web,
                      color: Colors.blueGrey,
                      size: 25,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "D E V E L O P E R",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 16,
                      fontFamily: "font1",
                      letterSpacing: 2),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Jagaran Maharjan",
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "font1",
                    fontSize: 24,
                    color: Colors.blueGrey,
                    letterSpacing: 2,
                  ),
                ),
                Divider(),
                Container(
                  // alignment: Alignment.center,
                  margin:
                      EdgeInsets.only(top: 0, bottom: 0, left: 35, right: 35),
                  padding:
                      EdgeInsets.only(top: 0, bottom: 0, left: 5, right: 5),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Icon(
                      Icons.email,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      "jagaranmah@gmail.com",
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
                Container(
                  // alignment: Alignment.center,
                  margin:
                      EdgeInsets.only(top: 0, bottom: 0, left: 35, right: 35),
                  padding:
                      EdgeInsets.only(top: 0, bottom: 0, left: 5, right: 5),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Icon(
                      Icons.phone,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      "+977-9823075376",
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height / 2.5);
    path.lineTo(size.width + 450, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
