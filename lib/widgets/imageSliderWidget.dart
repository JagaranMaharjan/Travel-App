import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class ImageSliderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(),
      margin: EdgeInsets.all(0),
      color: Colors.blue[900],
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(2),
        width: double.infinity,
        height: 200,
        child: Carousel(
          autoplayDuration: Duration(seconds: 3),
          animationDuration: Duration(seconds: 2),
          dotBgColor: Colors.black12,
          dotSize: 5,
          autoplay: true,
          boxFit: BoxFit.fill,
          images: [
            Image.asset(
              "assets/images/annapurna.jpg",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/images/bhaktapur.jpg",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/images/changunarayan.jpg",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/images/chitwan.jpg",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/images/davisfall.jpg",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/images/dhulikhel.jpg",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/images/ghandruk.jpg",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/images/gokyo.jpg",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/images/nagarkot.jpg",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/images/pokhara.jpg",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/images/shantistupa.jpg",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/images/shivapuri.jpg",
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
