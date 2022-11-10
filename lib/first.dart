import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/Module.dart';
import 'package:stack/second.dart';

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

  @override
  Widget build(BuildContext context) {

    Module().getDimens(context);

    return Scaffold(
      backgroundColor: Color(0xff82b1e8),
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
