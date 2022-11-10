
import 'package:flutter/material.dart';

class Module
{

  static double theight = 0;
  static double twidth = 0;
  static double appbar_height = 0;
  static double Statusbar_height = 0;
  static double Navigationbar_height = 0;
  static double A_height = 0;

  getDimens(BuildContext context)
  {
      theight = MediaQuery.of(context).size.height;
      twidth = MediaQuery.of(context).size.width;

      appbar_height = kToolbarHeight;

      Statusbar_height = MediaQuery.of(context).padding.top;
      Navigationbar_height = MediaQuery.of(context).padding.bottom;

      A_height = theight - appbar_height - Statusbar_height - Navigationbar_height;

  }

  
  

  static List<String> Pizza = [
    'Veggie Pizza',
    'Cheese Margherita',
    'Margherita Pizza',
    'Farm House',
    'Deluxe Veggie',
    'Mexican Green Wave',
    'Peppy Paneer',
    'Veg Extravaganza',
    'Cheese N Corn',
    'Indi Tandoori Paneer',
  ];
  static List<double> Pizza_price = [
    375,475,250,450,550,650,775,1000,175,475
  ];
  static List Pizaa_photos = [
    'photos/a1.jpg',
    'photos/a2.jpg',
    'photos/a3.jpg',
    'photos/a4.jpg',
    'photos/a5.jpg',
    'photos/a6.jpg',
    'photos/a7.jpg',
    'photos/a8.jpg',
    'photos/a9.jpg',
    'photos/a10.jpg'
  ];

  static List<String> Chinese = [
    'Manchurian',
    'Chinese Noodles',
    'Spring Rolls',
    'Fried Rice',
    'Stir Fried Tofu with Rice',
    'Manchow Soup',
    'Momos',
    'Chilly Baby Corn',
    'Momo Manchurian',
    'Chow Mein'
  ];
  static List<double> Chinese_price = [
      120 , 140 , 210 , 170 , 320 , 60 , 490 , 240 , 630 , 130
  ];
  static List Chinese_photos = [
    'photos/b1.jpg',
    'photos/b2.jpg',
    'photos/b3.jpg',
    'photos/b4.jpg',
    'photos/b5.jpg',
    'photos/b6.jpg',
    'photos/b7.jpg',
    'photos/b8.webp',
    'photos/b9.jpg',
    'photos/b10.jpg'
  ];

  static List<String> Salad = [
    'Caesar Salad',
    'Leafy Green Salad',
    'Greek Salad',
    'Fattoush',
    'Mixed Salad',
    'Cobb Salad',
    'Summer Asian Slaw',
    'Best Broccoli Salad',
    'Shredded Brussels Sprout Salad',
    'Easy Pasta Salad'
  ];
  static List<double> Salad_price = [
      130 , 110 , 210 , 90 , 190 , 170 , 140 , 300 , 100 , 160
  ];
  static List Salad_photos = [
    'photos/c1.jpg',
    'photos/c2.webp',
    'photos/c3.jpg',
    'photos/c4.jpg',
    'photos/c5.jpg',
    'photos/c6.jpg',
    'photos/c7.jpg',
    'photos/c8.jpg',
    'photos/c9.jpg',
    'photos/c10.jpg'
  ];

  static List<String> Sweets = [
    'Gulab Jamun',
    'RasGulla',
    'Ras Malai',
    'Kaju Katli',
    'Dryfruit Barafi',
    'Gulab Pak',
    'Ghewar',
    'Gajar Halwa',
    'Shrikhand',
    'Payasam'
  ];
  static List<double> Sweet_price = [
      450 , 490 , 540 , 320 , 760 , 840 , 230 , 210 , 650 , 999
  ];
  static List Sweets_photos = [
    'photos/d1.jpg',
    'photos/d2.jpg',
    'photos/d3.jpg',
    'photos/d4.webp',
    'photos/d5.jpg',
    'photos/d6.jpg',
    'photos/d7.jpg',
    'photos/d8.jpg',
    'photos/d9.jpg',
    'photos/d10.jpg'
  ];


  static List<String> South = [
    'Masala Dhosa',
    'Maisur Dhosa',
    'Gotalo',
    'Jini Role',
    'Palak Paneer',
    'Chocolate Dhosa',
    'Simple Paper',
    'Butter Paper',
    'Sandwich Dhosa',
    'Palak Cheese Dhosa',
  ];
  static List<double> South_price = [
    80 , 110 , 170 , 140 , 110 , 190 , 45 , 60 , 240 , 300
  ];
  static List South_photos = [
    'photos/e1.jpg',
    'photos/e2.webp',
    'photos/e3.jpg',
    'photos/e4.jpg',
    'photos/e5.jpg',
    'photos/e6.jpg',
    'photos/e7.png',
    'photos/e8.jpg',
    'photos/e9.jpg',
    'photos/e10.jpg'
  ];

  static List<String> Gujarati = [
    'Gujarati Thali',
    'Khaman',
    'Patra',
    'Patudi',
    'Thepla',
    'Locho',
    'Masala Ghughara',
    'Saurastriyan Thali',
    'Bhajiya',
    'Handavo'
  ];
  static List<double> Gujarati_price = [
      990 , 150 , 130 , 110 , 320 , 230 , 50 , 850 , 420 , 130
  ];
  static List gujarati_photos = [
    'photos/f1.jpg',
    'photos/f2.webp',
    'photos/f3.webp',
    'photos/f4.jpeg',
    'photos/f5.jpg',
    'photos/f6.jpg',
    'photos/f7.jpg',
    'photos/f8.jpg',
    'photos/f9.jpg',
    'photos/f10.jpg'
  ];

  static List<String> Panjabi = [
    'Paneer Tikka',
    'Chhole Kulche',
    'Dal Makhani',
    'Machchali Amritsari',
    'Murgh Malaiwala',
    'Panjabi Kadhi',
    'Panjabi Dal Tadaka',
    'Pindi Channe',
    'Amritsari Kulcha',
    'Paneer Partha'
  ];
  static List<double> Panjabi_price = [
    210 , 130 , 150 , 190 , 320 , 210 , 430 , 110 , 160 , 50
  ];
  static List Panjabi_photos = [
    'photos/g1.jpg',
    'photos/g2.jpg',
    'photos/g3.jpg',
    'photos/g4.jpeg',
    'photos/g5.jpg',
    'photos/g6.jpg',
    'photos/g7.webp',
    'photos/g8.webp',
    'photos/g9.jpg',
    'photos/g10.jpg'
  ];

  static List<String> Dairy = [
    'Milk',
    'Curd',
    'Butter Milk',
    'Ghee',
    'Butter',
    'Cheese',
    'Paneer',
    'Lassi',
    'Rose Milk',
    'Lactose-Free Milk'
  ];
  static List<double> Dairy_price = [
      60 , 40 , 30 , 500 , 240 , 300 , 200 , 150 , 100 , 140
  ];
  static List Dairy_photos = [
    'photos/h1.jpg',
    'photos/h2.webp',
    'photos/h3.jpg',
    'photos/h4.jpg',
    'photos/h5.webp',
    'photos/h6.webp',
    'photos/h7.jpg',
    'photos/h8.webp',
    'photos/h9.webp',
    'photos/h10.webp'
  ];

  static List<String> Chocolates = [
    'Kit-Kat',
    'Dairy Milk',
    'Munch',
    '5 Star',
    'Snickers',
    'Gems',
    'Perk',
    'Milk Chocolate',
    'Dark Chocolate',
    'Ferrero Rocher'
  ];
  static List<double> Chocolate_price = [
    200 , 180 , 50 , 70 , 40 , 20 , 60 , 200 , 230 , 430
  ];
  static List Chocolates_photos = [
    'photos/i1.jpg',
    'photos/i2.jpg',
    'photos/i3.jpg',
    'photos/i4.webp',
    'photos/i5.jpg',
    'photos/i6.jpg',
    'photos/i7.jpg',
    'photos/i8.webp',
    'photos/i9.jpg',
    'photos/i10.jpg'
  ];

  static List<String> Dessert = [
    'Ice Cream',
    'Rabadi',
    'Halwa',
    'Angel Food Cake',
    'Roasted strawberry',
    'Affogato',
    'Chocolate Bullets',
    'Napolean',
    'Doughnuts',
    'Maltesers tiramisu'
  ];
  static List<double> Dessert_price = [
      210 , 130 , 150 , 160 , 560 , 450 , 340 , 650 , 200 , 320
  ];
  static List Dessert_photos = [
    'photos/j1.jpg',
    'photos/j2.jpg',
    'photos/j3.jpg',
    'photos/j4.jpeg',
    'photos/j5.jpeg',
    'photos/j6.jpg',
    'photos/j7.jpg',
    'photos/j8.jpg',
    'photos/j9.webp',
    'photos/j10.jpg'
  ];

  static List<String> Cold = [
    'Coca-Cola',
    'Sprite',
    'Pepsi',
    'Maaza',
    'Mirinda',
    'Thums-Up',
    '7up',
    'Mountain Dew',
    'Limca',
    'Fanta'
  ];
  static List<double> Cold_price = [
      20 , 20 , 20 , 20 , 20 , 20 , 20 , 20 , 20 , 20
  ];

  static List Cold_photos = [
    'photos/k1.jpg',
    'photos/k2.webp',
    'photos/k3.jpg',
    'photos/k4.jpg',
    'photos/k5.webp',
    'photos/k6.jpg',
    'photos/k7.webp',
    'photos/k8.jpg',
    'photos/k9.jpg',
    'photos/k10.webp'
  ];
}
