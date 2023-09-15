import 'package:flutter/material.dart';

import '../Chat/chat_list_screen.dart';
import '../Map/map_screen.dart';
import '../Profile/profile_screen.dart';
import '../model/service_model.dart';
import 'home_screen.dart';


class HomeProvider extends ChangeNotifier {
  int selectedIndex = 0;
  List<RealStateModel> searchResult = [];
  TextEditingController searchController = TextEditingController();


  // realStateRecommanedData realStateRecommanedData;
  List<RealStateModel> realStateRecommanedData = [];
  List<RealStateModel> realStateHouseData = [];
  List<RealStateModel> realStateFlatData = [];
  List<RealStateModel> realStateResidentialData = [];
  List<RealStateModel> realStateCommercialData = [];
  List<RealStateModel> realStateChatData = [];
  List<RealStateModel> realStateBookmarkData = [];


  List recommendedData = [
    {
      "id": 1001,
      "title": "Indraprasth - 11",
      "address": "Prahlad nagar, Ahmedabad",
      "location": "Ahmedabad",
      "type": "3 BHK",
      "bookMark": true,
      "image":
          "https://images.pexels.com/photos/259588/pexels-photo-259588.jpeg?auto=compress&cs=tinysrgb&w=600",
      "bad": "4 Bad",
      "bath": "2 Bath",
      "washroom":"1",
      "age":"New Construction",
      "squared": "250 SQ. FT.",
      "price": "15,000",
      "rent": true,
      "govtCharge": false,
      "dataType": ["House", "Recommaned"],
      "description":
          "Simple apartment with morden architecture and quality guaranteed interiors located in the city center with a great view makes it easy for you to reach the article city to find out how consumer tastes have evolved. Cozy and homey apartment with the most affordable price.",
      "chat": [
        {"customer": "Hi", "suppler": "", "time": "6.30"},
        {"customer": "Good AfterNoon", "suppler": "", "time": "6.30"},
        {"customer": "", "suppler": "Good AfterNoon", "time": "8.30"},
        {
          "customer": "I am interested in property.",
          "suppler": "",
          "time": "8.30"
        },
        {
          "customer": "Can you send me more information about the property?",
          "suppler": "",
          "time": "9.30"
        }
      ],
      "mobile": "+91 8780719722",
      "published": "September 20, 2020"
    },
    {
      "id": 1002,
      "title": "Samy Sauna II",
      "address": "Khokhara East, Ahmedabad, Gujarat, 380008 India",
      "location": "Ahmedabad",
      "type": "2 BHK",
      "bookMark": true,
      "image":
          "https://images.pexels.com/photos/1060950/pexels-photo-1060950.jpeg?auto=compress&cs=tinysrgb&w=600",
      "bad": "2 Bad",
      "bath": "1 Bath",
      "washroom":"1",
      "age":"New Construction",
      "squared": "1140 SQ. FT.",
      "price": "30.79 L",
      "rent": false,
      "govtCharge": true,
      "dataType": ["House", "Residency", "Recommaned"],
      "description":
          "Check out Samy Sauna II in Khokhara East, one of the upcoming under-construction housing societies in Ahmedabad East. There are apartments for sale in Samy Sauna II. This society will have all basic facilities and amenities to suit homebuyer’s needs and requirements.",
      "chat": [
        {
          "customer": "",
          "suppler": "👋Hi , I'm Real State home Assistant.",
          "time": "10.01"
        },
        {
          "customer": "",
          "suppler":
              "Is there anything specific that you're trying to find in Samy Sauna II?",
          "time": "10.02"
        },
        {
          "customer": "Start a new Search",
          "suppler": "Good AfterNoon",
          "time": "10.04"
        },
        {
          "customer": "",
          "suppler": 'Which city are you looking to invest in?',
          "time": '10.05'
        },
        {"customer": "", "suppler": "Ahmedabad", "time": "10.06"},
        {
          "customer": "",
          "suppler": "Where are you looking to buy/invest in Ahmedabad?",
          "time": "10.06"
        },
        {"customer": "SG Highway", "suppler": "", "time": "10.07"},
        {
          "customer": "",
          "suppler": "What type of properties are you considering?",
          "time": "10.08"
        },
        {"customer": "House/Villa", "suppler": "", "time": "10.09"},
        {
          "customer": "",
          "suppler":
              "Can you also tell me how much space/area are you considering?",
          "time": "10.10"
        },
        {"customer": "3 BHK", "suppler": "", "time": "10.11"},
        {
          "customer": "",
          "suppler":
              "What is your budget range? Example: 50 - 60 Lacs, Below 2 Cr",
          "time": "10.12"
        },
        {"customer": "60 Lacs", "suppler": "", "time": "10.12"},
        {
          "customer": "",
          "suppler":
              "Oops! Looks like there aren't any properties available for 3 BHK Independent House/Villa in SG Highway Ahmedabad West for budget range of 45 Lacs-55 Lacs",
          "time": '10.13'
        },
      ],
      "mobile": "+91 9725070271",
      "published": "Mar, 2023"
    },
    {
      "id": 1003,
      "title": 'Nehru Nagar',
      "address": 'Punt nagar Part 3, Ambawadi, Ahmedabad, Gujarat, India',
      "location": "Ahmedabad",
      "type": '3 BHK',
      "bookMark": false,
      "image":
          'https://images.pexels.com/photos/1694360/pexels-photo-1694360.jpeg?auto=compress&cs=tinysrgb&w=600',
      "bad": "4 Bad",
      "bath": "2 Bath",
      "washroom":"1",
      "age":"New Construction",
      "squared": '250 SQ. FT.',
      "price": '12,000',
      "rent": true,
      "govtCharge": false,
      "dataType": ["House", "Recommaned"],
      "description":
          'Lovely large one-bedroom apartament in a residential complex in the resort of Sunny Beach. The complex is centrally located, 200 metres from the beach. All amenities are nearby including shops, restaurants, hospital, bus stop and much more. The flat of 90 m2 is located on the third floor and consists of an entrance hall, living room with a small kitchenette, a separate bedroom, bathroom with WC and two balconies overlooking the city. The flat is fully furnished and equipped and is ready for a comfortable stay. ',
      "chat": [
        {
          "customer": "",
          "suppler":
              'Good afternoon. Greetings from Appaswamy Real Estates help desk.',
          "time": '12:30',
        },
        {
          "customer": "",
          "suppler":
              'Appaswamy Real Estates is an eminent real estate conglomerate and one of the leading builders in Ahmedabad. We are constantly expanding our footprint with exquisite dwellings and elevated lifestyle solutions in our apartments in Ahmedabad.',
          "time": '12:30',
        },
        {"customer": "", "suppler": 'your preferred city.', "time": '12:31'},
        {"customer": 'Ahmedabad', "suppler": "", "time": '2:45'},
        {
          "customer": "",
          "suppler": 'Your preferred location at Ahmedabad.',
          "time": '3:15'
        },
        {"customer": 'Ambawadi', "suppler": "", "time": '6:30'},
        {
          "customer": 'Can you send me more information about the property?',
          "suppler": "",
          "time": '6:30'
        },
        {
          "customer": "",
          "suppler":
              'Arcus offers you the 3 & 4 BHK apartments in Chennai. World class amenities to matching global standards in living.',
          "time": '6:30'
        },
        {
          "customer": "",
          "suppler":
              'Would you like us to email you the project brochure and price details?',
          "time": '6:30'
        },
        {"customer": 'No', "suppler": "", "time": '6:30'},
      ],
      "mobile": "+91 8780719722",
      "published": "September 20, 2020"
    },
    {
      "id": 1004,
      "title": 'Vivian Elementos',
      "address":
          'vivant elementos Gota ahmedabad-north, Ahmedabad, Gujarat, India',
      "location": "Ahmedabad",
      "type": '3 BHK',
      "bookMark": false,
      "image":
          'https://images.pexels.com/photos/3195644/pexels-photo-3195644.jpeg?auto=compress&cs=tinysrgb&w=600',
      "bad": "4 Bad",
      "bath": "2 Bath",
      "washroom":"1",
      "age":"New Construction",
      "squared": '822 - 850 SQ. FT.',
      "price": '60.16 - 64.02 L',
      "rent": false,
      "govtCharge": false,
      "dataType": ["Recommaned", "House"],
      "description":
          'Check out Vivian Elementos in Gota, One of the upcoming under-construction housing societies in Ahmedabad North. There are apartments for sale om Vivian Elementos. This society will have all basic facilities and amenities to suit homebuyer’s needs and requirements.',
      "chat": [
        {
          "customer": "",
          "suppler":
              'Good afternoon. Greetings from Appaswamy Real Estates help desk.',
          "time": '12:30',
        },
        {
          "customer": "",
          "suppler":
              'Appaswamy Real Estates is an eminent real estate conglomerate and one of the leading builders in Ahmedabad. We are constantly expanding our footprint with exquisite dwellings and elevated lifestyle solutions in our apartments in Ahmedabad.',
          "time": '12:30',
        },
        {"customer": "", "suppler": 'your preferred city.', "time": '12:31'},
        {"customer": 'Ahmedabad', "suppler": "", "time": '2:45'},
        {
          "customer": "",
          "suppler": 'Your preferred location at Ahmedabad.',
          "time": '3:15'
        },
        {"customer": 'Gota', "suppler": "", "time": '6:30'},
        {
          "customer": 'Can you send me more information about the property?',
          "suppler": "",
          "time": '6:30'
        },
        {
          "customer": "",
          "suppler":
              'Arcus offers you the 3 & 4 BHK apartments in Chennai. World class amenities to matching global standards in living.',
          "time": '6:30'
        },
        {
          "customer": "",
          "suppler":
              'Would you like us to email you the project brochure and price details?',
          "time": '6:30'
        },
        {"customer": 'No', "suppler": "", "time": '6:30'},
      ],
      "mobile": "+91 8780719722",
      "published": "September 20, 2020"
    },
    {
      "id": 1005,
      "title": 'Rent in Ahmedabad',
      "address": 'Petrol Pump Science City, Ahmedabad, Gujarat, India',
      "location": "Ahmedabad",
      "type": '3 BHK',
      "bookMark": false,
      'overlooking': 'Main Road',
      "image":
          'https://images.pexels.com/photos/7031607/pexels-photo-7031607.jpeg?auto=compress&cs=tinysrgb&w=600',
      "bad": "4 Bad",
      "bath": "2 Bath",
      "washroom":"1",
      "age":"New Construction",
      "squared": '822 - 850 SQ. FT.',
      "price": '60.16 - 64.02 L',
      "rent": false,
      "govtCharge": false,
      "dataType": ["House", "Recommaned"],
      "description":
          '3 BHK Flat for Rent with specious bedrooms Prime Location, 24 hours Security available, 24 hours water supply available. Enough space for park your car.',
      "chat": [
        {
          "customer": "",
          "suppler": 'Welcome to Flats for Rent in Ahmedabad',
          "time": '12:25',
        },
        {
          "customer": "",
          "suppler":
              'We see that you are looking for a Flat of 3 BHK in Ahmedabad at Science City.',
          "time": '12:26',
        },
        {"customer": "", "suppler": 'your preferred city.', "time": '12:31'},
        {"customer": 'Ahmedabad', "suppler": "", "time": '12:35'},
        {
          "customer": "",
          "suppler": 'Great! Can you share your preferred Budget?',
          "time": '12:36'
        },
        {"customer": '60 Lacs', "suppler": "", "time": '12:36'},
        {
          "customer": "",
          "suppler":
              'We are set to share the best matching properties with you. Please share your details',
          "time": '12:39'
        },
        {"customer": "", "suppler": 'Your name?', "time": '12:39'},
        {"customer": 'Girdhar Prajapati', "suppler": "", "time": '12:40'},
        {
          "customer": "",
          "suppler": 'Girdhar Prajapati, Please share your email address',
          "time": '12:41'
        },
        {"customer": 'girdhar99@gmail.com', "suppler": "", "time": '12:41'},
        {
          "customer": "",
          "suppler": "What's your mobile number?",
          "time": '12:42'
        },
        {"customer": '+91 87807197..', "suppler": "", "time": '12:43'},
        {
          "customer": "",
          "suppler":
              "Let's verify your phone no. A 3 digit Verification Code has been shared on your mobile no.Please enter below",
          "time": '12:43'
        },
        {"customer": 'Resend Otp', "suppler": "", "time": '12:44'},
        {"customer": "", "suppler": "Sure!", "time": '12:45'},
      ],
      "mobile": "+91 8780719722",
      "published": 'September, 2023'
    },
    {
      "id": 1006,
      "title": 'Flats for Rent in Ahmedabad',
      "address": 'Thaltej, Ahmedabad, Gujarat, India',
      "location": "Ahmedabad",
      "type": '4 BHK Flat',
      "bookMark": false,
      'overlooking': 'Garden/Park, Pool, Main Road',
      "image":
          'https://images.pexels.com/photos/4621866/pexels-photo-4621866.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
      "bad": "4 Bad",
      "bath": "2 Bath",
      "washroom":"1",
      "age":"New Construction",
      "squared": '4050 SQ. FT.',
      "price": '2.25 C',
      "rent": false,
      "govtCharge": false,
      "dataType": ["House", "Recommaned"],
      "description":
          'This Flat for rent is located in Eminence 14 at Thatej, and its managed by Nirva Space. It 5260 has a super built-up area of sq.ft. in this apartment all amenities like club hose gym, garden, senior citizen sitting, children playground etc. The apartment building has a total of 3 floors and this property is situated on 2 nd floors.',
      "chat": [
        {
          "customer": 'Are you a Real Estate Agent?',
          "suppler": "",
          "time": '01:25',
        },
        {
          "customer": "",
          "suppler": 'Yes',
          "time": '01:26',
        },
        {
          "customer":
              'Please share your email & mobile where sellers could connect. Example: rahulxxx@gmail.com, 991133XXXX',
          "suppler": "",
          "time": '01:31'
        },
        {
          "customer": "",
          "suppler": 'abc@gmail.com, 878071XXXX',
          "time": '01:35'
        },
        {
          "customer": 'What type of properties are you considering?',
          "suppler": "",
          "time": '12:36'
        },
        {"customer": "", "suppler": 'Apartment', "time": '12:36'},
      ],
      "mobile": "+91 8780719722",
      "published": 'September, 2023'
    },
    {
      "id": 1007,
      "title": 'Sheetal Residency',
      "address": 'Gota, Ahmedabad, Gujarat, India',
      "location": "Ahmedabad",
      "type": '3 BHK Flat',
      "bookMark": false,
      'overlooking': 'Garden/Park, Pool, Main Road',
      "image":
          'https://images.pexels.com/photos/13602443/pexels-photo-13602443.jpeg?auto=compress&cs=tinysrgb&w=600',
      "bad": "4 Bad",
      "bath": "2 Bath",
      "washroom":"1",
      "age":"New Construction",
      "squared": '2250 SQ. FT.',
      "price": '80 L - 1.24 Cr.',
      "rent": false,
      "govtCharge": true,
      "dataType": ["Recommaned", "Residency"],
      "description":
          'This Flat for rent is located in Eminence 14 at Thatej, and its managed by Nirva Space. It 5260 has a super built-up area of sq.ft. in this apartment all amenities like club hose gym, garden, senior citizen sitting, children playground etc. The apartment building has a total of 3 floors and this property is situated on 2 nd floors.',
      "chat": [
        {
          "customer": 'Are you a Real Estate Agent?',
          "suppler": "",
          "time": '01:25',
        },
        {
          "customer": "",
          "suppler": 'Yes',
          "time": '01:26',
        },
        {
          "customer":
              'Please share your email & mobile where sellers could connect. Example: rahulxxx@gmail.com, 991133XXXX',
          "suppler": "",
          "time": '01:31'
        },
        {
          "customer": "",
          "suppler": 'abc@gmail.com, 878071XXXX',
          "time": '01:35'
        },
        {
          "customer": 'What type of properties are you considering?',
          "suppler": "",
          "time": '12:36'
        },
        {"customer": "", "suppler": 'Apartment', "time": '12:36'},
      ],
      "mobile": "+91 8780719722",
      "published": 'September, 2023'
    },
    {
      "id": 1008,
      "title": "Residential Properties for Rent in Ahmedabad",
      "address": "3 BHK Villa for Rent in Bhadaj Circle",
      "type": "3 BHK",
      "bookMark": true,
      "image":
          "https://images.pexels.com/photos/13576902/pexels-photo-13576902.jpeg?auto=compress&cs=tinysrgb&w=600",
      "bad": "4 Bad",
      "bath": "2 Bath",
      "washroom":"1",
      "age":"New Construction",
      "squared": "250 SQ. FT.",
      "price": "15,000",
      "rent": true,
      "govtCharge": false,
      "dataType": ["House", "Recommaned", "Residency", "Flat"],
      "description":
          "3 BHK House for rent with specious bedrooms Prime Location, 24 hours water supply available, 24 hour, Need Facilities available by walking distance, Enough space for park you vahical and This house also satic in main road",
      "chat": [
        {"customer": "", "suppler": "Welcome to Magicbricks", "time": "6.30"},
        {
          "customer": "",
          "suppler":
              "We see that you are looking for a House/Villa of 3 BHK Villa for Rent in Bhadaj Circle.",
          "time": "6.30"
        },
        {
          "customer": "",
          "suppler": "Great! Can you share your preferred Budget?",
          "time": "8.30"
        },
        {"customer": "40 Lacs", "suppler": "", "time": "8.30"},
        {
          "customer": "",
          "suppler":
              "We are set to share the best matching properties with you. Please share your details",
          "time": "9.30"
        },
        {"customer": "", "suppler": "Your name?", "time": "9.30"},
        {"customer": "Raj Mithe", "suppler": "", "time": "9.30"},
        {
          "customer": "",
          "suppler": "Raj.., Please share your email address",
          "time": "9.30"
        }
      ],
      "mobile": "+91 8780719722",
      "published": "September 20, 2020"
    },
    {
      "id": 1009,
      "title": "Angel Residential",
      "address": "The Capital Residency, Jagatpura, Jaipur",
      "type": "3 BHK",
      "bookMark": true,
      "image":
          "https://img.staticmb.com/mbimages/project/Photo_h310_w462/2022/02/02/Project-Photo-7-Shop-17-Jaipur-5325547_1200_1600_310_462.jpg",
      "bad": "",
      "washroom":"1",
      "bath": "1",
      "age":"New Construction",
      "squared": "250 SQ. FT.",
      "price": "15,00",
      "rent": true,
      "govtCharge": false,
      "dataType": ["Flat", "Residential", "Recommaned", "Commercial"],
      "description":
          "Corner Shop for rent and lease and there separate parking anf other Facilities like Power Back Up, Lift, Market Area, Water Harvesting, Park, Security, Parking, Good Lift Service.",
      "chat": [
        {
          "customer": "",
          "suppler": "Welcome to Angel Residential",
          "time": "10.30"},
        {
          "customer": "",
          "suppler":
              "We see that you are looking for a Office Space in Jaipur at Jagatpura.",
          "time": "10.30"
        },
        {
          "customer": "",
          "suppler": "Great! Can you share your preferred Budget?",
          "time": "10.30"
        },
        {"customer": "50 Lacs", "suppler": "", "time": "10.30"},
        {
          "customer": "",
          "suppler":
              "We are set to share the best matching properties with you. Please share your details",
          "time": "9.30"
        },
        {
          "customer": "",
          "suppler": "Your name?",
          "time": "9.30"
        },
        {
          "customer": "Jayesh",
          "suppler": "",
          "time": "9.30"
        },
        {
          "customer": "",
          "suppler": "Jayesh, Please share your email address",
          "time": "9.30"
        }
      ],
      "mobile": "+91 878071972",
      "published": "September, 2022"
    },
  ];

  List<Map<String, dynamic>> locationData = [
    {
      "title": 'Ambawadi',
      'distance': '6 m',
      "address": 'Ambawadi Ahmedabad, Gujarat, India'
    },
    {
      "title": 'Nehru Nagar',
      'distance': '363 m',
      "address": 'Punt nagar Part 3, Ambawadi, Ahmedabad, Gujarat, India'
    },
    {
      "title": 'Irana',
      'distance': '36.6 km',
      "address": 'Ieana, Gujarat, India(nehru Nagar)'
    },
    {
      "title": 'Bhandu',
      'distance': '76.6 km',
      "address": 'Bhandu, Gujarat 384120, India(lodra)'
    },
    {
      "title": 'Pamol',
      'distance': '31.1 km',
      "address": 'Pamol, Gujarat 328240, India(basna)'
    },
    {
      "title": 'Bihari Bag',
      'distance': '129.5 km',
      "address":
          'Bihari Bag, Mahesesshwari Colony, Palanpur, Gujarat 302894, India(basna)'
    },
  ];

  void getRecommaned(String value) {
    if (value == 'Recommaned') {
      // realStateRecommanedData.clear();
      if (realStateRecommanedData.isEmpty) {
        for (var item in recommendedData) {
          if (item['dataType'].contains('Recommaned')) {
            realStateRecommanedData.add(RealStateModel.fromJson(item));
          }
        }
      }
    }
    else if (value == 'House') {
      realStateHouseData.clear();
      // if (realStateHouseData.isEmpty) {
        for (var item in realStateRecommanedData) {
          if (item.dataType!.contains('House')) {
            realStateHouseData.add(item);
          }
        // }
      }
    }
    else if (value == 'Flat') {
      realStateFlatData.clear();
      // if (realStateFlatData.isEmpty) {
        for (var item in realStateRecommanedData) {
          if (item.dataType!.contains('Flat')) {
            realStateFlatData.add(item);
          }
        // }
      }
    }
    else if (value == 'Residential') {
      realStateResidentialData.clear();
      // if (realStateResidentialData.isEmpty) {
        for (var item in realStateRecommanedData) {
          if (item.dataType!.contains('Residential')) {
            realStateResidentialData.add(item);
          }
        }
      // }
    }
    else if (value == 'Commercial') {
      realStateCommercialData.clear();
      if (realStateCommercialData.isEmpty) {
        for (var item in realStateRecommanedData) {
          if (item.dataType!.contains('Commercial')) {
            realStateCommercialData.add(item);
          }
        }
      }
    }
    else if (value == 'Chat') {
      // if (realStateChatData.isEmpty) {
      realStateChatData.clear();
        for (var item in realStateRecommanedData) {
            realStateChatData.add(item);
        }
      for (var item in realStateHouseData) {
        realStateChatData.add(item);
      }
      for (var item in realStateFlatData) {
        realStateChatData.add(item);
      }
      for (var item in realStateResidentialData) {
        realStateChatData.add(item);
      }
      for (var item in realStateCommercialData) {
        realStateChatData.add(item);
      }
      final ids = realStateChatData.map((e) => e.title).toSet();
      realStateChatData.retainWhere((x) => ids.remove(x.title));
      print(realStateChatData.length);
      // }
    }
    else if (value == 'Bookmark') {
      // if (realStateChatData.isEmpty) {
      realStateBookmarkData.clear();
      for (var item in realStateRecommanedData) {
        if(item.bookMark == true){
          print('bookmark... ${item.bookMark}');
          realStateBookmarkData.add(item);
        }
      }
      // for (var item in realStateHouseData) {
      //   if(item.bookMark == true){
      //     print('bookmark... ${item.bookMark}');
      //     realStateBookmarkData.add(item);
      //     print('bookmark lenght... ${realStateBookmarkData.length}');
      //   }
      // }
      // for (var item in realStateFlatData) {
      //   realStateChatData.add(item);
      // }
      // for (var item in realStateResidentialData) {
      //   realStateChatData.add(item);
      // }
      // for (var item in realStateCommercialData) {
      //   realStateChatData.add(item);
      // }
      // final ids = realStateBookmarkData.map((e) => e.title).toSet();
      // realStateBookmarkData.retainWhere((x) => ids.remove(x.title));
      // print(realStateBookmarkData.length);
      // }
    }
    notifyListeners();
  } //=> recommendedData.map((map) => realStateRecommanedData.fromJson(map)).map((item) => item.chat).toList();

  List<Widget> buildScreen = [
    const HomeScreen(),
    const MapScreen(),
    const ChatListScreen(),
    const ProfileScreen()
  ];

  void onItemTapped(int index) {
    print('Current Tab Index... $index');
    selectedIndex = index;
    notifyListeners();
  }

  void changeRecommendBookmark(int index, String data) {
    if (data == 'Recommaned') {
      if (realStateRecommanedData[index].bookMark!) {
        realStateRecommanedData[index].bookMark = false;
      } else {
        realStateRecommanedData[index].bookMark = true;
      }
    }
    else if (data == 'House') {
      if (realStateHouseData[index].bookMark!) {
        realStateHouseData[index].bookMark = false;
      } else {
        realStateHouseData[index].bookMark = true;
      }
    }
    else if (data == 'Flat') {
      if (realStateFlatData[index].bookMark!) {
        realStateFlatData[index].bookMark = false;
      } else {
        realStateFlatData[index].bookMark = true;
      }
    }
    else if (data == 'Residential') {
      if (realStateResidentialData[index].bookMark!) {
        realStateResidentialData[index].bookMark = false;
      } else {
        realStateResidentialData[index].bookMark = true;
      }
    }
    else if (data == 'Commercial') {
      if (realStateCommercialData[index].bookMark!) {
        realStateCommercialData[index].bookMark = false;
      } else {
        realStateCommercialData[index].bookMark = true;
      }
    }
    else if (data == 'Bookmark') {
      if (realStateBookmarkData[index].bookMark!) {
        realStateBookmarkData[index].bookMark = false;
      } else {
        realStateBookmarkData[index].bookMark = true;
      }
    }
    notifyListeners();
  }

  onSearchTextChanged(String text) async {
    searchResult.clear();
    if (text.isEmpty) {
      notifyListeners();
      return;
    }

    realStateChatData.forEach((data) {
      if (data.title!.toUpperCase().contains(text.toUpperCase()) ||
          data.address!.toUpperCase().contains(text.toUpperCase())) searchResult.add(data);
    });
    notifyListeners();
  }

  clearText() {
    searchController.clear();
    searchResult.clear();
    notifyListeners();
  }
}
