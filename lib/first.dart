import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stack/Module.dart';
import 'package:stack/second.dart';

import 'Model.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  List<String> food = [
    'Pizza',
    'Chinese',
    'Salad',
    'Sweets',
    'South Indian',
    'Gujarati',
    'Panjabi',
    'Dairy Foods',
    'Chocolates',
    'Desserts',
    'Coldrinks',
  ];

  List category = [
    'photos/pizza.jpg',
    'photos/chinese.jpg',
    'photos/salad.jpg',
    'photos/sweets.jpg',
    'photos/south.jpg',
    'photos/gujarati.jpg',
    'photos/panjabi.jpg',
    'photos/dairy.jpg',
    'photos/chocolate.webp',
    'photos/dessert.jpg',
    'photos/cold.webp'
  ];
  String NAME = "";
  String EMAIL = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initdata();
  }

  initdata() async {
    Model.prefs = await SharedPreferences.getInstance();

    NAME = Model.prefs!.getString('Name') ?? "";
    EMAIL = Model.prefs!.getString('Email') ?? "";
    print("Name : $NAME");
    print("Email : $EMAIL");
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {

    Module().getDimens(context);

    return Scaffold(
      backgroundColor: Color(0xff82b1e8),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff030165),
                Color(0xff82b1e8),
              ],
            ),
          ),
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xff030165),
                        Color(0xff82b1e8),
                      ],
                    ),
                  ),
                  accountName: Text("$NAME"),
                  currentAccountPicture: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.white),
                      shape: BoxShape.circle,
                      // image: DecorationImage(
                      //   image: NetworkImage(IMAGEurl),
                      //   fit: BoxFit.fill,
                      //   onError: (exception, stackTrace) {
                      //     Icon(Icons.supervised_user_circle_rounded);
                      //   },

                      // )
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'photos/ad.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  accountEmail: Text("$EMAIL")),
              Card(
                color: Color(0xff030165).withOpacity(0.5),
                child: ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return first();
                      },
                    ));
                  },
                  title: Text(
                    "Home",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.home,
                      color: Colors.white),
                ),
              ),
              Card(
                color: Color(0xff030165).withOpacity(0.5),
                child: ListTile(
                  onTap: () {
                  },
                  title: Text(
                    "Settings",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  leading:
                  Icon(Icons.settings, color: Colors.white),
                ),
              ),
              Card(
                color: Color(0xff030165).withOpacity(0.5),
                child: ListTile(
                  onTap: () {
                  },
                  title: Text(
                    "Like",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  leading:
                  Icon(Icons.heart_broken, color: Colors.white),
                ),
              ),
              Card(
                color: Color(0xff030165).withOpacity(0.5),
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    "Rate Us",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.star, color: Colors.white),
                ),
              ),
              Card(
                color: Color(0xff030165).withOpacity(0.5),
                child: ListTile(
                  onTap: () async {
                  },
                  title: Text(
                    "Log Out",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.logout, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
              top: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(top: 32, left: 20),
                height: 200,
                width: Module.A_height * 0.20,
                color: Color(0xff030165),
                child: Text(
                  "Food",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Color(0xff82b1e8),
                          fontSize: 50,
                          fontWeight: FontWeight.bold)),
                ),
              )),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 15, right: 20),
                width: Module.A_height * 0.50,
                height: 100,
                alignment: Alignment.centerRight,
                child: Text(
                  "Menu",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Color(0xff030165),
                          fontSize: 70,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: food.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return Second(food,index);
                            },));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 50, right: 50, top: 20),
                            height: 80,
                            width: double.infinity,
                            alignment: Alignment.center,
                            decoration: ShapeDecoration(
                                color: Colors.white,
                                shadows: [
                                  BoxShadow(
                                      blurRadius: 7,
                                      spreadRadius: 1,
                                      offset: Offset(0, 3),
                                      color: Colors.black.withOpacity(0.4))
                                ],
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                            child: Text(
                              "${food[index]}",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30)),
                            ),
                          ),
                        ),
                        Positioned(
                            left: 30,
                            top: 30,
                            child: Container(
                                height: 60,
                                width: 60,
                                alignment: Alignment.center,
                                decoration: ShapeDecoration(
                                    color: Colors.grey,
                                    image: DecorationImage(image: AssetImage('${category[index]}'),fit: BoxFit.fill),
                                    shadows: [
                                      BoxShadow(
                                          blurRadius: 7,
                                          spreadRadius: 1,
                                          offset: Offset(0, 3),
                                          color: Colors.black.withOpacity(0.4))
                                    ],
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)))),
                            )),
                        Positioned(
                            right: 35,
                            top: 40,
                            child: Container(
                              height: 40,
                              width: 40,
                              alignment: Alignment.center,
                              decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shadows: [
                                    BoxShadow(
                                        blurRadius: 7,
                                        spreadRadius: 1,
                                        offset: Offset(0, 3),
                                        color: Colors.black.withOpacity(0.4))
                                  ],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20)))),
                              child: IconButton(onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return Second(food,index);
                                },));
                              }, icon: Icon(Icons.chevron_right)),
                            )),
                      ],
                    );
                  },
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
