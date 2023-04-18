import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stack/Module.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stack/mobile.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
import 'package:syncfusion_flutter_pdf/pdf.dart';

class third extends StatefulWidget {
  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  List<String> food_item = [];
  List<double> food_item_price = [];
  List<int> food_item_qty = [];
  List<double> food_item_total = [];

  int invoiceCount = 1;

  double total = 0.0;
  double gst = 0.0;
  List<String> food_name = [];
  List<double> food_price = [];
  List<int> food_qty = [];

  void data() async {
    total = await Module().total()!;
    gst = await Module().gst()!;
    food_name.addAll(Module.food_name);
    food_qty.addAll(Module.food_qty);
    food_price.addAll(Module.food_price);
    for(int i = 0; i<food_price.length; i++){
      food_item_total[i] = food_price[i] * food_qty[i];
    }
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data();
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Bill Payment",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ),
                    IconButton(
                        onPressed: () {
                          print("Hello");
                          _createPdf();
                        },
                        icon: Icon(
                          Icons.download,
                          color: Colors.black,
                        ))
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: Module.food_name.length,
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
                                "${Module.food_name[index]}",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Text(
                                "${Module.food_price[index]}",
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
                                "Qty :  ${Module.food_qty[index]}",
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
                                "₹ ${Module.food_price[index] * Module.food_qty[index]}",
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
                  "Total : ₹ ${Module().total()}",
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
                  "GST [18%] :  ₹ ${Module().gst()}",
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
                  "Payable Amount :  ₹ ${Module().pay()}",
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

  //
  // Future<void> _createPdf()async{
  //
  //   final pdf = pw.Document();
  //
  //   pdf.addPage(pw.Page(
  //       build: (pw.Context context) {
  //         return pw.Center(
  //           child: pw.Text("Hello World"),
  //         ); // Center
  //       }));
  //
  //   final file = File("Bill${DateTime.now()}.pdf");
  //   await file.writeAsBytes(await pdf.save());
  //
  //   List<int> bytes = pdf.save() as List<int>;
  //   saveAndLaunchFile(bytes, "Bill${DateTime.now()}");
  // }

  Future<void> _createPdf() async {
    PdfDocument document = PdfDocument();
    final page = document.pages.add();

    page.graphics.drawString(
        "Hello Foodies", PdfStandardFont(PdfFontFamily.timesRoman, 20));

//Get page client size
    final Size pageSize = page.getClientSize();
    //Draw rectangle
    page.graphics.drawRectangle(
        bounds: Rect.fromLTWH(0, 0, pageSize.width, pageSize.height),
        pen: PdfPen(PdfColor(142, 170, 219)));
    //Generate PDF grid.
    final PdfGrid grid = getGrid();
    //Draw the header section by creating text element
    final PdfLayoutResult result = drawHeader(page, pageSize, grid);
    //Draw grid
    drawGrid(page, grid, result);
    //Add invoice footer
    drawFooter(page, pageSize);

    List<int> bytes = document.save();
    document.dispose();

    await saveAndLaunchFile(bytes, 'Bill${DateTime.now()}.pdf');
  }

  //Draws the invoice header
  PdfLayoutResult drawHeader(PdfPage page, Size pageSize, PdfGrid grid) {
    //Draw rectangle
    page.graphics.drawRectangle(
        brush: PdfSolidBrush(PdfColor(91, 126, 215)),
        bounds: Rect.fromLTWH(0, 0, pageSize.width - 115, 90));
    //Draw string
    page.graphics.drawString(
        'INVOICE', PdfStandardFont(PdfFontFamily.timesRoman, 30),
        brush: PdfBrushes.white,
        bounds: Rect.fromLTWH(25, 0, pageSize.width - 115, 90),
        format: PdfStringFormat(lineAlignment: PdfVerticalAlignment.middle));

    page.graphics.drawRectangle(
        bounds: Rect.fromLTWH(400, 0, pageSize.width - 400, 90),
        brush: PdfSolidBrush(PdfColor(65, 104, 205)));

    page.graphics.drawString(r'' +getTotalGrand(grid).toString() + ' RS',
        PdfStandardFont(PdfFontFamily.timesRoman, 18),
        bounds: Rect.fromLTWH(400, 0, pageSize.width - 400, 100),
        brush: PdfBrushes.white,
        format: PdfStringFormat(
            alignment: PdfTextAlignment.center,
            lineAlignment: PdfVerticalAlignment.middle));

    final PdfFont contentFont = PdfStandardFont(PdfFontFamily.helvetica, 9);
    //Draw string
    page.graphics.drawString('Amount', contentFont,
        brush: PdfBrushes.white,
        bounds: Rect.fromLTWH(400, 0, pageSize.width - 400, 33),
        format: PdfStringFormat(
            alignment: PdfTextAlignment.center,
            lineAlignment: PdfVerticalAlignment.bottom));
    //Create data foramt and convert it to text.
    final String invoiceNumber =
        'Invoice Number: ${invoiceCount++}\r\n\r\nDate: ${DateTime.now()}';
    final Size contentSize = contentFont.measureString(invoiceNumber);
    // ignore: leading_newlines_in_multiline_strings
    const String address = '''Bill To: \r\n\r\nAnadh Suhagiya, 
        \r\n\r\nVarchha, Surat, Gujarat, India, 
        \r\n\r\nIndia \r\n\r\n8160011080''';

    PdfTextElement(text: invoiceNumber, font: contentFont).draw(
        page: page,
        bounds: Rect.fromLTWH(pageSize.width - (contentSize.width + 30), 120,
            contentSize.width + 30, pageSize.height - 120));

    return PdfTextElement(text: address, font: contentFont).draw(
        page: page,
        bounds: Rect.fromLTWH(30, 120,
            pageSize.width - (contentSize.width + 30), pageSize.height - 120))!;
  }

  //Draws the grid
  void drawGrid(PdfPage page, PdfGrid grid, PdfLayoutResult result) {
    Rect? totalPriceCellBounds;
    Rect? quantityCellBounds;
    //Invoke the beginCellLayout event.
    grid.beginCellLayout = (Object sender, PdfGridBeginCellLayoutArgs args) {
      final PdfGrid grid = sender as PdfGrid;
      if (args.cellIndex == grid.columns.count - 1) {
        totalPriceCellBounds = args.bounds;
      } else if (args.cellIndex == grid.columns.count - 2) {
        quantityCellBounds = args.bounds;
      }
    };
    //Draw the PDF grid and get the result.
    result = grid.draw(
        page: page, bounds: Rect.fromLTWH(0, result.bounds.bottom + 40, 0, 0))!;
    // GST
    page.graphics.drawString('Gst  [18% GST]',
        PdfStandardFont(PdfFontFamily.timesRoman, 9, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(
            quantityCellBounds!.left,
            result.bounds.bottom + 20,
            quantityCellBounds!.width,
            quantityCellBounds!.height));
    page.graphics.drawString(getTotalGst(grid).toString(),
        PdfStandardFont(PdfFontFamily.timesRoman, 9, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(
            totalPriceCellBounds!.left,
            result.bounds.bottom + 20,
            totalPriceCellBounds!.width,
            totalPriceCellBounds!.height));
    //Draw total.
    page.graphics.drawString('Total',
        PdfStandardFont(PdfFontFamily.timesRoman, 9, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(
            quantityCellBounds!.left,
            result.bounds.bottom + 10,
            quantityCellBounds!.width,
            quantityCellBounds!.height));
    page.graphics.drawString(getTotalAmount(grid).toString(),
        PdfStandardFont(PdfFontFamily.timesRoman, 9, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(
            totalPriceCellBounds!.left,
            result.bounds.bottom + 10,
            totalPriceCellBounds!.width,
            totalPriceCellBounds!.height));

    //Draw Grand total.
    page.graphics.drawString('Grand Total',
        PdfStandardFont(PdfFontFamily.timesRoman, 9, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(
            quantityCellBounds!.left,
            result.bounds.bottom + 50,
            quantityCellBounds!.width,
            quantityCellBounds!.height));
    page.graphics.drawString(getTotalGrand(grid).toString(),
        PdfStandardFont(PdfFontFamily.timesRoman, 9, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(
            totalPriceCellBounds!.left,
            result.bounds.bottom + 50,
            totalPriceCellBounds!.width,
            totalPriceCellBounds!.height));
  }

  //Draw the invoice footer data.
  void drawFooter(PdfPage page, Size pageSize) {
    final PdfPen linePen =
    PdfPen(PdfColor(142, 170, 219), dashStyle: PdfDashStyle.custom);
    linePen.dashPattern = <double>[3, 3];
    //Draw line
    page.graphics.drawLine(linePen, Offset(0, pageSize.height - 100),
        Offset(pageSize.width, pageSize.height - 100));

    const String footerContent =
    // ignore: leading_newlines_in_multiline_strings
    '''Foodie Person\r\n\r\nVarachha, Surat,
         Gujarat, India\r\n\r\nAny Questions? @mr.suhagiya_65''';

    //Added 30 as a margin for the layout
    page.graphics.drawString(
        footerContent, PdfStandardFont(PdfFontFamily.timesRoman, 9),
        format: PdfStringFormat(alignment: PdfTextAlignment.right),
        bounds: Rect.fromLTWH(pageSize.width - 30, pageSize.height - 70, 0, 0));
  }

  //Create PDF grid and return
  PdfGrid getGrid() {
    //Create a PDF grid
    final PdfGrid grid = PdfGrid();
    //Secify the columns count to the grid.
    grid.columns.add(count: 5);
    //Create the header row of the grid.
    final PdfGridRow headerRow = grid.headers.add(1)[0];
    //Set style
    headerRow.style.backgroundBrush = PdfSolidBrush(PdfColor(68, 114, 196));
    headerRow.style.textBrush = PdfBrushes.white;
    headerRow.cells[0].value = 'Food Item Id';
    headerRow.cells[0].stringFormat.alignment = PdfTextAlignment.center;
    headerRow.cells[1].value = 'Food Item Name';
    headerRow.cells[2].value = 'Price';
    headerRow.cells[3].value = 'Quantity';
    headerRow.cells[4].value = 'Total';
    //Add rows
    for(int i = 0; i < food_price.length; i++){
      addProducts(i.toString(), "${food_name[i]}", food_price[i], food_qty[i], food_price[i] * food_qty[i], grid);
    }
    // addProducts('CA-1098', 'AWC Logo Cap', 8.99, 2, 17.98, grid);
    // addProducts('LJ-0192', 'Long-Sleeve Logo Jersey,M', 49.99, 3, 149.97, grid);
    // addProducts('So-B909-M', 'Mountain Bike Socks,M', 9.5, 2, 19, grid);
    // addProducts('LJ-0192', 'Long-Sleeve Logo Jersey,M', 49.99, 4, 199.96, grid);
    // addProducts('FK-5136', 'ML Fork', 175.49, 6, 1052.94, grid);
    // addProducts('HL-U509', 'Sports-100 Helmet,Black', 34.99, 1, 34.99, grid);
    //Apply the table built-in style
    grid.applyBuiltInStyle(PdfGridBuiltInStyle.listTable4Accent5);
    //Set gird columns width
    grid.columns[1].width = 200;
    for (int i = 0; i < headerRow.cells.count; i++) {
      headerRow.cells[i].style.cellPadding =
          PdfPaddings(bottom: 5, left: 5, right: 5, top: 5);
    }
    for (int i = 0; i < grid.rows.count; i++) {
      final PdfGridRow row = grid.rows[i];
      for (int j = 0; j < row.cells.count; j++) {
        final PdfGridCell cell = row.cells[j];
        if (j == 0) {
          cell.stringFormat.alignment = PdfTextAlignment.center;
        }
        cell.style.cellPadding =
            PdfPaddings(bottom: 5, left: 5, right: 5, top: 5);
      }
    }
    return grid;
  }

  //Create and row for the grid.
  void addProducts(String productId, String productName, double price,
      int quantity, double total, PdfGrid grid) {
    final PdfGridRow row = grid.rows.add();
    row.cells[0].value = productId;
    row.cells[1].value = productName;
    row.cells[2].value = price.toString();
    row.cells[3].value = quantity.toString();
    row.cells[4].value = total.toString();
  }

  //Get the total amount.
  double getTotalAmount(PdfGrid grid) {
    // double total = 0;
    // for (int i = 0; i < grid.rows.count; i++) {
    //   final String value =
    //   grid.rows[i].cells[grid.columns.count - 1].value as String;
    //   total += double.parse(value);
    // }

    double tot = 0.0;
    for(int i = 0; i<food_qty.length; i++){
      tot = tot + (food_qty[i] * food_price[i]);
    }
    return tot;
  }
  double getTotalGst(PdfGrid grid) {
    // double total = 0;
    // for (int i = 0; i < grid.rows.count; i++) {
    //   final String value =
    //   grid.rows[i].cells[grid.columns.count - 1].value as String;
    //   total += double.parse(value);
    // }

    double tot = 0.0;
    for(int i = 0; i<food_qty.length; i++){
      tot = tot + (food_qty[i] * food_price[i]);
    }
    double gs = tot * 0.18;
    return gs;
  }

  double getTotalGrand(PdfGrid grid) {
    // double total = 0;
    // for (int i = 0; i < grid.rows.count; i++) {
    //   final String value =
    //   grid.rows[i].cells[grid.columns.count - 1].value as String;
    //   total += double.parse(value);
    // }

    double tot = 0.0;
    for(int i = 0; i<food_qty.length; i++){
      tot = tot + (food_qty[i] * food_price[i]);
    }
    double gs = tot * 0.18;
    double grand = tot + gs;
    return grand;
  }
}
