import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/Module.dart';

class third extends StatefulWidget {

  List<String> food_name;
  List<double> food_price;
  List<int> food_qty;
  third(this.food_name, this.food_price, this.food_qty);


  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {


  List<String> food_item = [];
  List<double> food_item_price = [];
  List<int> food_item_qty = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();



    // if(widget.pos == 0)
    //   {
    //     food_item = Module.Pizza;
    //     food_item_price = Module.Pizza_price;
    //     food_item_qty = widget.food_qty;
    //   }
    // else if(widget.pos == 1)
    //   {
    //     food_item = Module.Chinese;
    //     food_item_price = Module.Chinese_price;
    //     food_item_qty = widget.food_qty;
    //   }
    // else if(widget.pos == 2)
    // {
    //   food_item = Module.Salad;
    //   food_item_price = Module.Salad_price;
    //   food_item_qty = widget.food_qty;
    // }
    // else if(widget.pos == 3)
    // {
    //   food_item = Module.Sweets;
    //   food_item_price = Module.Sweet_price;
    //   food_item_qty = widget.food_qty;
    // }
    // else if(widget.pos == 4)
    // {
    //   food_item = Module.South;
    //   food_item_price = Module.South_price;
    //   food_item_qty = widget.food_qty;
    // }
    // else if(widget.pos == 5)
    // {
    //   food_item = Module.Gujarati;
    //   food_item_price = Module.Gujarati_price;
    //   food_item_qty = widget.food_qty;
    // }
    // else if(widget.pos == 6)
    // {
    //   food_item = Module.Panjabi;
    //   food_item_price = Module.Panjabi_price;
    //   food_item_qty = widget.food_qty;
    // }
    // else if(widget.pos == 7)
    // {
    //   food_item = Module.Dairy;
    //   food_item_price = Module.Dairy_price;
    //   food_item_qty = widget.food_qty;
    // }
    // else if(widget.pos == 8)
    // {
    //   food_item = Module.Chocolates;
    //   food_item_price = Module.Chocolate_price;
    //   food_item_qty = widget.food_qty;
    // }
    // else if(widget.pos == 9)
    // {
    //   food_item = Module.Dessert;
    //   food_item_price = Module.Dessert_price;
    //   food_item_qty = widget.food_qty;
    // }
    // else if(widget.pos == 10)
    // {
    //   food_item = Module.Cold;
    //   food_item_price = Module.Cold_price;
    //   food_item_qty = widget.food_qty;
    // }

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
                width: Module.A_height * 0.20,
                height: Module.A_height * 0.20,
                color: Color(0xff030165),
              )),
          Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 1,
                        blurRadius: 7,
                        color: Colors.black.withOpacity(0.4))
                  ],
                ),
                child: Text(
                  "Bill Payment",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: widget.food_name.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 50, right: 50, top: 20),
                          width: double.infinity,
                          height: 60,
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${widget.food_name[index]}",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Text(
                                "${widget.food_price[index]}",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            left: 30,
                            top: 35,
                            child: Container(
                              height: 30,
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20)))),
                              child: Text(
                                "Qty :  ${widget.food_qty[index]}",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                              ),
                            )),
                        Positioned(
                            top: 35,
                            right: 30,
                            child: Container(
                              height: 30,
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
                                      borderRadius: BorderRadius.circular(10))),
                              child: Text(
                                "₹ ",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                              ),
                            )),
                      ],
                    );
                  },
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(bottom: 10),
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 1,
                        blurRadius: 7,
                        color: Colors.black.withOpacity(0.4))
                  ],
                ),
                child: Text(
                  "Total : ₹ ",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(bottom: 10),
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 1,
                        blurRadius: 7,
                        color: Colors.black.withOpacity(0.4))
                  ],
                ),
                child: Text(
                  "GST [18%] :  ₹ ",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(bottom: 10),
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 1,
                        blurRadius: 7,
                        color: Colors.black.withOpacity(0.4))
                  ],
                ),
                child: Text(
                  "Payable Amount :  ₹ ",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
