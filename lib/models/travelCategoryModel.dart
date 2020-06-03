import 'package:flutter/cupertino.dart';

class TravelCategoryModel with ChangeNotifier {
  final String id;
  final String title;
  final String imageUrl;
  final String desc;
  final bool isAtTopDestination;
  final bool isAtNature;
  final bool isAtClimbing;
  final bool isAtEdu;
  final String camera;
  final String food;
  final String price;
  final String category;
  bool favorites = false;

  TravelCategoryModel(
      {this.category,
      this.id,
      this.title,
      this.imageUrl,
      this.desc,
      this.isAtClimbing,
      this.isAtEdu,
      this.isAtNature,
      this.isAtTopDestination,
      this.favorites,
      this.price,
      this.camera,
      this.food});

  void toggleIsFavorite() {
    favorites = !favorites;
    notifyListeners();
  }
}
