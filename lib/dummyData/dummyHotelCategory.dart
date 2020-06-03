import 'package:flutter/cupertino.dart';
import 'package:travellop2/models/hotelCategoryModel.dart';

class DummyHotelCategory with ChangeNotifier {
  List<HotelCategoryModel> _hotelList = [
    HotelCategoryModel(
      hid: "HDI01",
      hotelName: "Hotel Visitiors",
      hotelImageUrl: [
        'https://q-cf.bstatic.com/images/hotel/max1280x900/171/171895086.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/171/171895280.jpg',
        'https://q-cf.bstatic.com/images/hotel/max1280x900/163/163198777.jpg',
        'https://q-cf.bstatic.com/images/hotel/max1280x900/163/163198700.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/163/163200146.jpg',
        'https://q-cf.bstatic.com/images/hotel/max1280x900/171/171894839.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/163/163198445.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/163/163199041.jpg',
        'https://q-cf.bstatic.com/images/hotel/max1280x900/171/171968974.jpg',
      ],
      hotelDesc:
          "Located in Pokhara, 1.4 km from Fewa Lake, Hotel Visitors Inn P. Ltd.,"
          " Pokhara provides accommodation with a restaurant, free private parking,"
          " a bar and a garden. Featuring family rooms, this property also provides guests with a"
          " terrace. The accommodation features a 24-hour front desk, a shuttle service, room "
          "service and free WiFi throughout the property. At the hotel, each "
          "room has a balcony. Guest rooms at Hotel Visitors Inn P. Ltd., Pokhara are equipped"
          " with a flat-screen TV with satellite channels. American and "
          "vegetarian breakfast options are available daily at the "
          "accommodation. The area is popular for cycling, and bike hire and "
          "car hire are available at Hotel Visitors Inn P. Ltd., Pokhara. "
          "World Peace Pagoda is 11 km from the hotel, while International Mountain Museum is 6 km away."
          "This is our guests' favourite part of Pokhara, according to independent reviews.",
      hotelLocation: "Pokhara",
      hotelNo: "01-4026512",
      totalRoom: 10,
      roomNo: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'],
    ),
    HotelCategoryModel(
      hid: "HID02",
      hotelName: "Thanka Inn Gokyo",
      hotelDesc: "Thanka Inn Gokyo features accommodation in Khumjung. "
          "Boasting a 24-hour front desk, this property also has a restaurant and a terrace."
          " The inn has family rooms. A continental breakfast is available "
          "each morning at the inn.",
      hotelImageUrl: [
        'https://r-cf.bstatic.com/images/hotel/max1280x900/201/201373127.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/197/197845545.jpg',
        'https://q-cf.bstatic.com/images/hotel/max1280x900/197/197838217.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/197/197834793.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/197/197832830.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/244/244222298.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/244/244055030.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/244/244054037.jpg',
      ],
      hotelLocation: "Gokyo",
      hotelNo: "01-4026542",
      totalRoom: 10,
      roomNo: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'],
    ),
    HotelCategoryModel(
      hid: "HID03",
      hotelLocation: "Nagarkwot",
      hotelNo: "01-2045100",
      hotelName: "Hotel Country Villa",
      hotelDesc:
          "Offering a restaurant that serves Indian and International delights,"
          " Hotel Country Villa is situated 2,195 m above sea level, spread in 2.51 acres"
          " of land. Free WiFi access is available in the public areas of the property."
          "Each room here will provide you with a satellite TV and a seating area. "
          "Featuring a shower, private bathroom also comes with free "
          "toiletries. At Hotel Country Villa you will find a 24-hour front desk, "
          "a garden and a terrace. Other facilities offered at the property include a "
          "shared lounge, a ticket service and a tour desk. The property "
          "offers free parking. Changu Narayan Temple is 14 km and the Bhaktapur Durbar Square"
          " is 20 km. The Kamal Binayak Bhaktapur Bus Station is 20 km and the Tribhuvan Airport"
          " is 30 km away. Couples particularly like the location — they "
          "rated it 9.2 for a two-person trip.",
      hotelImageUrl: [
        'https://q-cf.bstatic.com/images/hotel/max1280x900/860/86026466.jpg',
        'https://q-cf.bstatic.com/images/hotel/max1280x900/236/236501726.jpg',
        'https://q-cf.bstatic.com/images/hotel/max1280x900/385/38548028.jpg',
        'https://q-cf.bstatic.com/images/hotel/max1280x900/235/235955311.jpg',
        'https://q-cf.bstatic.com/images/hotel/max1280x900/385/38548057.jpg',
        'https://q-cf.bstatic.com/images/hotel/max1280x900/236/236501361.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/236/236502522.jpg',
      ],
      totalRoom: 10,
      roomNo: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'],
    ),
    HotelCategoryModel(
      hid: "HID04",
      hotelName: "Inn Sangrahalaya",
      hotelNo: "01-1025437",
      totalRoom: 10,
      hotelLocation: "Bhaktapur",
      hotelDesc: "Located in Bhaktapur, 60 m from Bhaktapur Durbar Square, "
          "Inn Sangrahalaya features a bar, a shared lounge and a terrace. "
          "Among the facilities of this property are a restaurant, a 24-hour "
          "front desk and room service, along with free WiFi throughout the property. "
          "The hotel has newspapers and a fax machine and photocopier that guests can use."
          "At the hotel every room is equipped with a wardrobe and a private bathroom."
          "A continental breakfast is available daily at Inn Sangrahalaya."
          "Couples particularly like the location — they rated it 9.3 for a two-person trip.",
      hotelImageUrl: [
        'https://r-cf.bstatic.com/images/hotel/max1280x900/190/190893711.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/190/190972701.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/190/190972785.jpg'
      ],
      roomNo: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'],
    ),
    HotelCategoryModel(
      hid: "HID05",
      hotelName: "Annapurna Hotel",
      hotelNo: "01-152347",
      hotelDesc: "Hotel Annapurna is 50 years old and counting."
          " Over 50 years of perfecting our services to make sure you have a stay to remember. "
          "The hotel is in the heart of the city. So you are minutes away from both breathtaking"
          " heritage sites and many of the diplomatic and business districts."
          "The Hotel Annapurna spreads over 5.5 acres of serenity in a busy city. "
          "It surrounds you with the comfort and convenience of fine accommodation,"
          " the largest hotel swimming pool in town and fine dining.",
      hotelImageUrl: [
        'https://r-cf.bstatic.com/images/hotel/max1280x900/190/190893711.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/190/190972701.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/190/190972785.jpg'
      ],
      roomNo: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'],
      hotelLocation: "Annapurna",
      totalRoom: 10,
    ),
    HotelCategoryModel(
      hid: "HDI06",
      hotelName: "Hotel Visitiors",
      hotelImageUrl: [
        'https://q-cf.bstatic.com/images/hotel/max1280x900/171/171895086.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/171/171895280.jpg',
        'https://q-cf.bstatic.com/images/hotel/max1280x900/163/163198777.jpg',
        'https://q-cf.bstatic.com/images/hotel/max1280x900/163/163198700.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/163/163200146.jpg',
        'https://q-cf.bstatic.com/images/hotel/max1280x900/171/171894839.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/163/163198445.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/163/163199041.jpg',
        'https://q-cf.bstatic.com/images/hotel/max1280x900/171/171968974.jpg',
      ],
      hotelDesc:
          "Located in Pokhara, 1.4 km from Fewa Lake, Hotel Visitors Inn P. Ltd.,"
          " Pokhara provides accommodation with a restaurant, free private parking,"
          " a bar and a garden. Featuring family rooms, this property also provides guests with a"
          " terrace. The accommodation features a 24-hour front desk, a shuttle service, room "
          "service and free WiFi throughout the property. At the hotel, each "
          "room has a balcony. Guest rooms at Hotel Visitors Inn P. Ltd., Pokhara are equipped"
          " with a flat-screen TV with satellite channels. American and "
          "vegetarian breakfast options are available daily at the "
          "accommodation. The area is popular for cycling, and bike hire and "
          "car hire are available at Hotel Visitors Inn P. Ltd., Pokhara. "
          "World Peace Pagoda is 11 km from the hotel, while International Mountain Museum is 6 km away."
          "This is our guests' favourite part of Pokhara, according to independent reviews.",
      hotelLocation: "Shanti Stupa",
      hotelNo: "01-4026512",
      totalRoom: 10,
      roomNo: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'],
    ),
    HotelCategoryModel(
      hid: "HID07",
      hotelName: "Thanka Inn Gokyo",
      hotelDesc: "Thanka Inn Gokyo features accommodation in Khumjung. "
          "Boasting a 24-hour front desk, this property also has a restaurant and a terrace."
          " The inn has family rooms. A continental breakfast is available "
          "each morning at the inn.",
      hotelImageUrl: [
        'https://r-cf.bstatic.com/images/hotel/max1280x900/201/201373127.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/197/197845545.jpg',
        'https://q-cf.bstatic.com/images/hotel/max1280x900/197/197838217.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/197/197834793.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/197/197832830.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/244/244222298.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/244/244055030.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/244/244054037.jpg',
      ],
      hotelLocation: "Chitwan",
      hotelNo: "01-4026542",
      totalRoom: 10,
      roomNo: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'],
    ),
    HotelCategoryModel(
      hid: "HID08",
      hotelLocation: "Dhulikhel",
      hotelNo: "01-2045100",
      hotelName: "Hotel Country Villa",
      hotelDesc:
          "Offering a restaurant that serves Indian and International delights,"
          " Hotel Country Villa is situated 2,195 m above sea level, spread in 2.51 acres"
          " of land. Free WiFi access is available in the public areas of the property."
          "Each room here will provide you with a satellite TV and a seating area. "
          "Featuring a shower, private bathroom also comes with free "
          "toiletries. At Hotel Country Villa you will find a 24-hour front desk, "
          "a garden and a terrace. Other facilities offered at the property include a "
          "shared lounge, a ticket service and a tour desk. The property "
          "offers free parking. Changu Narayan Temple is 14 km and the Bhaktapur Durbar Square"
          " is 20 km. The Kamal Binayak Bhaktapur Bus Station is 20 km and the Tribhuvan Airport"
          " is 30 km away. Couples particularly like the location — they "
          "rated it 9.2 for a two-person trip.",
      hotelImageUrl: [
        'https://q-cf.bstatic.com/images/hotel/max1280x900/860/86026466.jpg',
        'https://q-cf.bstatic.com/images/hotel/max1280x900/236/236501726.jpg',
        'https://q-cf.bstatic.com/images/hotel/max1280x900/385/38548028.jpg',
        'https://q-cf.bstatic.com/images/hotel/max1280x900/235/235955311.jpg',
        'https://q-cf.bstatic.com/images/hotel/max1280x900/385/38548057.jpg',
        'https://q-cf.bstatic.com/images/hotel/max1280x900/236/236501361.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/236/236502522.jpg',
      ],
      totalRoom: 10,
      roomNo: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'],
    ),
    HotelCategoryModel(
      hid: "HID09",
      hotelName: "Ghandruk",
      hotelNo: "01-1025437",
      totalRoom: 10,
      hotelLocation: "Bhaktapur",
      hotelDesc: "Located in Bhaktapur, 60 m from Bhaktapur Durbar Square, "
          "Inn Sangrahalaya features a bar, a shared lounge and a terrace. "
          "Among the facilities of this property are a restaurant, a 24-hour "
          "front desk and room service, along with free WiFi throughout the property. "
          "The hotel has newspapers and a fax machine and photocopier that guests can use."
          "At the hotel every room is equipped with a wardrobe and a private bathroom."
          "A continental breakfast is available daily at Inn Sangrahalaya."
          "Couples particularly like the location — they rated it 9.3 for a two-person trip.",
      hotelImageUrl: [
        'https://r-cf.bstatic.com/images/hotel/max1280x900/190/190893711.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/190/190972701.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/190/190972785.jpg'
      ],
      roomNo: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'],
    ),
    HotelCategoryModel(
      hid: "HID10",
      hotelName: "Annapurna Hotel",
      hotelNo: "01-152347",
      hotelDesc: "Hotel Annapurna is 50 years old and counting."
          " Over 50 years of perfecting our services to make sure you have a stay to remember. "
          "The hotel is in the heart of the city. So you are minutes away from both breathtaking"
          " heritage sites and many of the diplomatic and business districts."
          "The Hotel Annapurna spreads over 5.5 acres of serenity in a busy city. "
          "It surrounds you with the comfort and convenience of fine accommodation,"
          " the largest hotel swimming pool in town and fine dining.",
      hotelImageUrl: [
        'https://r-cf.bstatic.com/images/hotel/max1280x900/190/190893711.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/190/190972701.jpg',
        'https://r-cf.bstatic.com/images/hotel/max1280x900/190/190972785.jpg'
      ],
      roomNo: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'],
      hotelLocation: "Shivapuri",
      totalRoom: 10,
    ),
  ];

  List<HotelCategoryModel> get hotelList {
    return [..._hotelList];
  }

  HotelCategoryModel findById(String id) {
    return _hotelList.firstWhere((_id) => _id.hid == id);
  }

  //add booked hotel details in list
  List addToList = [];

  //get booked hotel details
  List<HotelCategoryModel> get bookedHotelList {
    return [...bookedHotelList];
  }

  //remove from list according to id
  void removeFromBookedList(String id) {
    bookedHotelList.remove(id);
    notifyListeners();
  }
}
