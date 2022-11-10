
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/Module.dart';
import 'package:stack/third.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';

class Second extends StatefulWidget {
  List<String> food;
  int index;

  Second(this.food, this.index);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  List<String> item = [];
  List<double> Item_price = [];
  List item_photo = [];
  List<double> item_total = [];
  double Total = 0;
  double gst = 0;
  double pay = 0;
  List<int> no = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20
  ];
  List<String> food_name = [];
  List<double> food_price = [];
  List<int> food_qty = [];
  int pos = 0;
  List<int> Default = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  PageController pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    pageController = PageController(initialPage: widget.index);
    if (widget.index == 0) {
      item = Module.Pizza;
      Item_price = Module.Pizza_price;
      item_photo = Module.Pizaa_photos;
    } else if (widget.index == 1) {
      item = Module.Chinese;
      Item_price = Module.Chinese_price;
      item_photo = Module.Chinese_photos;
    } else if (widget.index == 2) {
      item = Module.Salad;
      Item_price = Module.Salad_price;
      item_photo = Module.Salad_photos;
    } else if (widget.index == 3) {
      item = Module.Sweets;
      Item_price = Module.Sweet_price;
      item_photo = Module.Sweets_photos;
    } else if (widget.index == 4) {
      item = Module.South;
      Item_price = Module.South_price;
      item_photo = Module.South_photos;
    } else if (widget.index == 5) {
      item = Module.Gujarati;
      Item_price = Module.Gujarati_price;
      item_photo = Module.gujarati_photos;
    } else if (widget.index == 6) {
      item = Module.Panjabi;
      Item_price = Module.Panjabi_price;
      item_photo = Module.Panjabi_photos;
    } else if (widget.index == 7) {
      item = Module.Dairy;
      Item_price = Module.Dairy_price;
      item_photo = Module.Dairy_photos;
    } else if (widget.index == 8) {
      item = Module.Chocolates;
      Item_price = Module.Chocolate_price;
      item_photo = Module.Chocolates_photos;
    } else if (widget.index == 9) {
      item = Module.Dessert;
      Item_price = Module.Dessert_price;
      item_photo = Module.Dessert_photos;
    } else if (widget.index == 10) {
      item = Module.Cold;
      Item_price = Module.Cold_price;
      item_photo = Module.Cold_photos;
    }
  }

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
                padding: EdgeInsets.only(left: 40, top: 30),
                width: Module.A_height * 0.20,
                height: 200,
                // alignment: Alignment.center,
                color: Color(0xff030165),
              )),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.only(top: 40),
              width: Module.A_height * 0.20,
              height: 200,
              alignment: Alignment.topCenter,
              child: Text(
                "${widget.food[widget.index]}",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 40),
                width: double.infinity,
                height: 100,
                alignment: Alignment.centerLeft,
                // child: Text(
                //   "${widget.food[widget.index]}",
                //   style: GoogleFonts.poppins(
                //       textStyle: TextStyle(
                //           color: Color(0xff000000),
                //           fontSize: 40,
                //           fontWeight: FontWeight.bold)),
                // ),
              ),
                Expanded(
                    child: ListView.builder(
                      itemCount: item.length,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(left: 50, right: 50, top: 20),
                              padding: EdgeInsets.only(top: 20),
                              width: double.infinity,
                              height: 80,
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
                              child: Column(
                                children: [
                                  Text(
                                    "${item[index]}",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)),
                                  ),
                                  Text(
                                    "₹ ${Item_price[index]}",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Colors.blueGrey,
                                            fontSize: 15)),
                                  ),
                                ],
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
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "${item_photo[index]}"),
                                          fit: BoxFit.fill),
                                      shadows: [
                                        BoxShadow(
                                            blurRadius: 7,
                                            spreadRadius: 1,
                                            offset: Offset(0, 3),
                                            color:
                                                Colors.black.withOpacity(0.4))
                                      ],
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)))),
                                )),
                            Positioned(
                              top: 40,
                              right: 30,
                              child: Container(
                                height: 50,
                                width: 80,
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
                                            BorderRadius.circular(10))),
                                // child: DropDown<int>(
                                //     items: no,
                                //     initialValue: Default[index],
                                //     hint: Text("Qty"),
                                //     icon: Icon(Icons.keyboard_arrow_down_outlined),
                                //     onChanged: (value) {
                                //       setState(() {
                                //         Default[index] = value!;
                                //       });
                                //     },
                                // ),
                                child: DropdownButton<int>(
                                  hint: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Qty",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  iconSize: 25,
                                  style: TextStyle(color: Colors.grey),
                                  underline: Container(
                                    decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                  ),
                                  items: count(),
                                  value: Default[index] == 0
                                      ? null
                                      : Default[index],
                                  onChanged: (value) {
                                    setState(() {
                                      Default[index] = value!;
                                      print(index);
                                      pos = index;

                                      if (Default[index] != 0) {
                                        food_name.add(item[index]);
                                        food_price.add(Item_price[index]);
                                        food_qty.add(Default[index]);

                                      } else {
                                        food_name.remove(item[index]);
                                        food_price.remove(Item_price[index]);
                                        food_qty.remove(Default[index]);
                                      }
                                    });
                                  },
                                ),
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return third(food_name, food_price, food_qty);
                    },
                  ));
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  margin:
                      EdgeInsets.only(left: 40, right: 40, bottom: 20, top: 40),
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
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shopping_cart),
                      Text(
                        "Add To Cart",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      )),
    );
  }

  List<DropdownMenuItem<int>> count() {
    List<DropdownMenuItem<int>> l = [];

    for (int i = 0; i < no.length; i++) {
      l.add(DropdownMenuItem(
        child: Text("${no[i]}"),
        value: no[i],
      ));
    }
    return l;
  }
}
