import 'package:flutter/cupertino.dart';
import 'package:travellop2/models/travelCategoryModel.dart';

class DummyTravellingCategory with ChangeNotifier {
  //created list
  List<TravelCategoryModel> _categoryTravelList = [
    TravelCategoryModel(
      id: "TID01",
      title: "Pokhara",
      imageUrl: "assets/images/pokhara.jpg",
      desc: "Pokhara is a city on Phewa Lake, in central Nepal."
          " It’s known as a gateway to the Annapurna Circuit, a popular trail in the Himalayas."
          " Tal Barahi Temple, a 2-story pagoda, sits on an island in the lake."
          " On the eastern shore, the Lakeside district has yoga centers and restaurants."
          " In the city’s south, the International Mountain Museum has exhibits on the history of mountaineering and the people of the Himalayas."
          "West of the museum and past the small Devi’s Falls, is the Tashi Ling Tibetan settlement, where Tibetan crafts are made. "
          "The bright-white World Peace Pagoda, with its golden Buddha statues, stands on a high ridge overlooking the lake and the city."
          " The Bindhyabasini Temple, dedicated to the Hindu goddess Durga, is in the city’s north, on a hill close to the old bazaar. "
          "The nearby Gurkha Memorial Museum has exhibits on the history of the Gurkha regiments, including weapons and uniforms."
          " West of here, Sarangkot Hill offers panoramic views of the "
          "mountains. It's also a popular launch site for paragliders",
      price: "Expensive",
      camera: "Allowed",
      food: "Prohibited",
      favorites: false,
      isAtClimbing: false,
      isAtEdu: false,
      isAtNature: true,
      isAtTopDestination: true,
      category: "atTop",
    ),
    TravelCategoryModel(
      id: "TID02",
      title: "Gokyo",
      imageUrl: "assets/images/gokyo.jpg",
      desc:
          "Gokyo is a small village in Solukhumbu District in the Himalayas of Nepal,"
          " at the foot of Gokyo Ri and located on the eastern shore of the third Gokyo Lake,"
          " Dudh Pokhari. Gokyo Cho. The village is located at an elevation of 4,750 meters,"
          " making it one of the highest settlements in Nepal and in the world."
          " Almost all the buildings are guest houses for trekkers. "
          "The people who live in the village leave during the winter and move to other villages such as Namche Bazaar. "
          "The village is best viewed on Google Earth at 27°57′16″N 86°41′43″E. "
          "To the southeast is the village of Chharchung. In 1995, an avalanche killed 42 people including 17 foreign nationals."
          " A cyclone in the Bay of Bengal had resulted in six feet of snow being dumped into the mountains during the previous week, significantly increasing the avalanche hazard.",
      price: "Expensive",
      food: "Probhited",
      camera: "Allowed",
      favorites: false,
      isAtClimbing: false,
      isAtEdu: false,
      isAtNature: true,
      isAtTopDestination: true,
      category: "atTop",
    ),
    TravelCategoryModel(
      id: "TID03",
      title: "Davis Fall",
      imageUrl: "assets/images/davisfall.jpg",
      desc:
          "Davi's Fall in Pokhara is an extraordinary waterfall which creates a 500 feet long underground tunnel as it reaches its bottom."
          " This tunnel has brought the fall its name, i.e. Patale Chango in the Nepalese language, which means underground waterfall."
          " Fed by Phewa Lake Dam, the waterfall is surrounded by abundant flora."
          " A landmark of Pokhara, Devi's waterfall is a must-visit when in Nepal."
          " Witness the grandeur of nature as you see this colossal fall struggling with rocks to set itself free."
          "Devi's Waterfall/ Davis Waterfall is different from other falls in the country due to its natural phenomenon."
          " It marks the point where the Pardi Khola stream disappears underground and leaves no clue of its existence."
          " When the monsoons are at full power, the splashes of water against the boulders create a terrific site",
      camera: "Allowed",
      food: "Probhited",
      price: "Affordable",
      category: "atNature",
      favorites: false,
      isAtClimbing: false,
      isAtEdu: false,
      isAtNature: true,
      isAtTopDestination: true,
    ),
    TravelCategoryModel(
        id: "TID04",
        title: "Nagarkot",
        imageUrl: "assets/images/nagarkot.jpg",
        desc:
            "Nagarkot is a village in central Nepal, at the rim of the Kathmandu Valley. "
            "It’s known for its views of the Himalayas, including Mount Everest to the northeast, "
            "which are especially striking at sunrise and sunset."
            " The surrounding scrubland is laced with trails and home to many butterflies."
            " To the west is the ancient, pagoda-style Changunarayan Temple, "
            "dedicated to Vishnu and a Hindu pilgrimage site.",
        camera: "Allowed",
        food: "Allowed",
        price: "Affordable",
        favorites: false,
        isAtClimbing: true,
        isAtEdu: true,
        isAtNature: false,
        isAtTopDestination: true,
        category: "atEducation"),
    TravelCategoryModel(
        id: "TID05",
        title: "Bhaktapur",
        imageUrl: "assets/images/bhaktapur.jpg",
        desc:
            "Bhaktapur, also known as Khwopa, also known as the city of the temples, "
            "is a city in the east corner of the Kathmandu Valley in Nepal about 8 miles from the capital city,"
            " Kathmandu. It is located in and serves as the headquarters of Bhaktapur District in Bagmati Pradesh of Nepal."
            " It is administratively divided into 10 wards. Khwopa was the largest of the three Newa kingdoms of the Kathmandu Valley "
            "and was the capital of Nepal during the great 'Malla Kingdom' until the second half of the 15th century."
            " It has a population of more than 81,728, of which the vast majority are still Newa Nepa mi. "
            "Historically more isolated than the other two kingdoms, Kathmandu and Patan,"
            " Bhaktapur has a distinctly different form of Nepal Bhasa language. Bhaktapur has the best-preserved palace courtyards "
            "and old city center in Nepal and is listed as a World Heritage Site by UNESCO for its rich culture, temples, and wood, metal and stone artworks. "
            "This is supported by the restoration and preservation efforts of German-funded Bhaktapur Development Project. "
            "The city is famous for a special type of dahi called Ju Ju dhau.",
        price: "Affordable",
        camera: "Allowed",
        food: "Not Allowed",
        favorites: false,
        isAtClimbing: false,
        isAtEdu: true,
        isAtNature: false,
        isAtTopDestination: true,
        category: "atEducation"),
    TravelCategoryModel(
        id: "TID06",
        title: "Annapurna",
        imageUrl: "assets/images/annapurna.jpg",
        desc: "Annapurna Circuit is a popular Himalayan trek in the Annapurna "
            "range. The trek is a real challenge to test your patience and endurance."
            " The trail takes you through some of the highest mountains in the "
            "world.",
        food: "Probhited",
        camera: "Allowed",
        price: "Expensive",
        favorites: false,
        isAtClimbing: true,
        isAtEdu: false,
        isAtNature: true,
        isAtTopDestination: false,
        category: "atClimbing"),
    TravelCategoryModel(
        id: "TID07",
        title: "Shanti Stupa",
        imageUrl: "assets/images/shantistupa.jpg",
        desc:
            "Shanti Stupa in Pokhara also called as Peace Pagoda is a stunning monument "
            "located on the Anadu Hill overlooking the mesmerising Phewa Lake with the charming"
            " Annapurna Mountain range in the backdrop. It is a popular tourist attraction and a striking"
            " landmark or a pleasant pit stop for the intrepid climbers. The surroundings have several trekking trails "
            "to cross to Phewa Lake and explore the Himalayas. One can either cycle through one of the tracks that lead to "
            "the top of the hill, take the road to the Stupa or enjoy a drive through the scenic location. "
            "The picturesque beauty is quite captivating, and the tranquil vibe"
            " of the monument is worth a visit for those seeking it.",
        food: "Probhited",
        camera: "Allowed",
        price: "Affordable",
        favorites: false,
        isAtClimbing: false,
        isAtEdu: true,
        isAtNature: false,
        isAtTopDestination: false,
        category: "atEducation"),
    TravelCategoryModel(
        id: "TID08",
        title: "Chitwan National Park",
        imageUrl: "assets/images/chitwan.jpg",
        desc:
            "Chitwan National Park is the first step that Nepal took towards protection of the"
            " wildlife and nature at large. Located in the subtropical inner Terai lowlands of south-central Nepal, "
            "the national park covers an area of 952.63 sq. km. over the districts of Nawalparasi, Parsa, Makwanpur and"
            " Chitwan itself. The place was granted its long-due status of UNESCO World Heritage Site in 1984, and ever"
            " since its inception 11 years before that, Chitwan National Park "
            "has been getting the footfalls of the nature lovers and wildlife enthusiasts.",
        food: "Probhited",
        camera: "Allowed",
        price: "Affordable",
        favorites: false,
        isAtClimbing: false,
        isAtEdu: true,
        isAtNature: true,
        isAtTopDestination: false,
        category: "atTop"),
    TravelCategoryModel(
        id: "TID09",
        title: "Dhulikhel",
        imageUrl: "assets/images/dhulikhel.jpg",
        desc:
            "Dhulikhel is a municipality in Kavrepalanchok District of Nepal. "
            "Two major highway B.P. Highway and Arniko Highway passes through Dhulikhel. "
            "Araniko Highway connects Kathmandu, Nepal's capital city with Tibet's border town of Kodari. "
            "Dhulikhel is located at the Eastern rim of Kathmandu Valley, south of the Himalayas at 1550m "
            "above sea level and is situated 30 km southeast of Kathmandu and 74 km southwest of Kodari. "
            "The Majority of people in dhulikhel is Newars, and Brahmin, Chhettri, Tamang and Dalit are also "
            "living in outer area of the town. Drinking water in Dhulikhel is some of the best water in Nepal. "
            "It was made with the help of the German NGO, German Technical "
            "Cooperation.",
        food: "Allowed",
        camera: "Allowed",
        price: "Affordable",
        favorites: false,
        isAtClimbing: true,
        isAtEdu: true,
        isAtNature: true,
        isAtTopDestination: false,
        category: "atEducation"),
    TravelCategoryModel(
        id: "TID10",
        title: "Ghandruk",
        imageUrl: "assets/images/ghandruk.jpg",
        desc:
            "Ghandruk is a Village Development Committee in the Kaski District of the Gandaki province of Nepal."
            " Situated at a distance of 32 kms north-west to Pokhara, the village is readily accessible by public"
            " buses and private taxis from the provincial headquarter. At the time of the 1991 Nepal census, "
            "it had a population of 4,748 residing in 1,013 individual households. Ghandruk is a common place for "
            "treks in the Annapurna range of Nepal, with various trails and accommodation possibilities. "
            "The village hosts dramatic views of the mystic peaks of Mt Annapurna, Mt Machapuchare, Mt Gangapurna and M"
            "t Hiunchuli, and serves further as the gateway to the Poon hill trek thus placing it amongst the forefront"
            " of tourism attractions in the province. Gurung communities "
            "comprise the major inhabitants of the village.",
        price: "Expensive",
        camera: "Allowed",
        food: "Restricted",
        favorites: false,
        isAtClimbing: true,
        isAtEdu: false,
        isAtNature: true,
        isAtTopDestination: false,
        category: "atNature"),
    TravelCategoryModel(
        id: "TID11",
        title: "Changu Narayan",
        imageUrl: "assets/images/changunarayan.jpg",
        desc:
            "Changunarayan is a municipality in Bhaktapur District in the Province No. 3 "
            "of Nepal and is part of the urban agglomeration of the Kathmandu Valley. "
            "The municipality was created through the merger of the former Village development "
            "committees Old-Changunarayan, Chhaling, Duwakot and Jhaukhel in 2014. "
            "At the time of the 2011 Nepal census, the predecessors of Changunarayan Municipality "
            "had a population of 55,430. In 2017, the municipality of Mahamanjushree Nagarkot was"
            " merged into Changunarayan. The municipality is also home to the "
            "UNESCO World Heritage Site Changu Narayan.",
        food: "Not Allowed",
        camera: "Allowed",
        price: "Affordable",
        favorites: false,
        isAtClimbing: false,
        isAtEdu: true,
        isAtNature: true,
        isAtTopDestination: false,
        category: "atEducation"),
    TravelCategoryModel(
        id: "TID12",
        title: "Shivapuri National Park",
        desc: "Established in 2002, this 159-sq-km national park features "
            "hiking trails & historical sites.",
        imageUrl: "assets/images/shivapuri.jpg",
        food: "Restricted",
        camera: "Allowed",
        price: "Affordable",
        favorites: false,
        isAtClimbing: true,
        isAtEdu: true,
        isAtNature: true,
        isAtTopDestination: false,
        category: "atClimbing"),
  ];

  //get list values
  List<TravelCategoryModel> get travelCategoryListValue {
    return [..._categoryTravelList];
  }

  //get value according to id
  TravelCategoryModel findValueById(String id) {
    return _categoryTravelList.firstWhere((cid) => cid.id == id);
  }

  //get favorites items in list
  List<TravelCategoryModel> get favoriteCategory {
    return _categoryTravelList.where((object) {
      return object.favorites;
    }).toList();
  }
}
