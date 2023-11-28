import 'dart:async';
import 'dart:typed_data';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wizstamp/pages/real_estate_rent_details_confirmation_page.dart';
import 'package:wizstamp/pages/real_estate_seller_details_confirmation_page.dart';
import '../../utils/theme.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

class Propertysell extends StatefulWidget {
  const Propertysell({super.key});

  @override
  State<Propertysell> createState() => _PropertysellState();
}

class _PropertysellState extends State<Propertysell> {
  String signature1 = '';
  // String signature2 = '';
  ui.Image? signatureImage;
  final GlobalKey<SfSignaturePadState> _signaturePadKey = GlobalKey();

  // final GlobalKey<SfSignaturePadState> _signaturePadKey1 = GlobalKey();

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController cnicController = TextEditingController();
  TextEditingController officeController = TextEditingController();
  TextEditingController commissionController = TextEditingController();
  TextEditingController propertyPriceController = TextEditingController();
  TextEditingController propertyLocationController = TextEditingController();
  TextEditingController signatureController = TextEditingController();
  TextEditingController bussiunessLocationController = TextEditingController();
  //
  //
  //
  TextEditingController plotController = TextEditingController();
  TextEditingController blockController = TextEditingController();
  TextEditingController sectorController = TextEditingController();
  TextEditingController phaseController = TextEditingController();
  TextEditingController societyController = TextEditingController();
  TextEditingController cityRentController = TextEditingController();
  TextEditingController zipcodeLocationController = TextEditingController();

//   void saveImage() async {
//     signatureImagePath = '';
//     print('save image is called');
//     final data = await _signaturePadKey.currentState!.toImage();
//     final bytes = await data.toByteData(format: ui.ImageByteFormat.png);
//     final Uint8List imageBytes =
//         bytes!.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
//     final String path = (await getApplicationSupportDirectory()).path;
//     final String fileName = '$path/Output.png';
//     print('path of image is .. $fileName');
//     final File file = File(fileName);
//     await file.writeAsBytes(imageBytes, flush: true);
//     OpenFile.open(fileName);
//     print(file.runtimeType);
//     signatureImagePath = fileName;
//
// // print(object)
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.primaryColor.shade50,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'Property For Sell',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 94, 2, 254),
      ),
      //
      //
      //
      //
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  width: MediaQuery.of(context).size.width * 90 / 100,
                  child: Column(children: [
                    //
                    //
                    //
                    //
                    //   Dealer information .....start..
                    //
                    //
                    //
                    //
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: Text(
                          "Seller/Dealer  information",
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    //
                    //
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                            hintText: 'Name',
                            label: const Text(
                              'Name',
                              style: TextStyle(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                    ),
                    //
                    //
                    //
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: phoneController,
                        decoration: InputDecoration(
                            hintText: 'Phone Number',
                            label: const Text(
                              'Phone Number',
                              style: TextStyle(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                    ),
                    //
                    //
                    //
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: cnicController,
                        decoration: InputDecoration(
                            hintText: 'CNIC (ID Card Number)',
                            label: const Text(
                              'CNIC',
                              style: TextStyle(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                    ),
                    //
                    //
                    //
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        controller: bussiunessLocationController,
                        decoration: InputDecoration(
                            hintText: 'Business Address',
                            label: const Text(
                              'Business Address',
                              style: TextStyle(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                    ),
                    //
                    //
                    //
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        controller: officeController,
                        decoration: InputDecoration(
                            hintText: 'Office Name',
                            label: const Text(
                              'Office Name',
                              style: TextStyle(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: commissionController,
                        decoration: InputDecoration(
                            hintText: 'Commission Amount of Dealer',
                            label: const Text(
                              'Commission Amount',
                              style: TextStyle(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                    ),
                    //
                    //
                    //

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: propertyPriceController,
                        decoration: InputDecoration(
                            hintText:
                                'Fill the final price of property that you want to sell out',
                            label: const Text(
                              'Final Price of Property',
                              style: TextStyle(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                    ),
                    //
                    //
                    //
                    //
                    //
                    //       Container of Address............
                    //
                    //
                    //
                    //
                    //
                    Container(
                      width: 300,
                      // height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 25, bottom: 0),
                            child: Text(
                              'Property Location',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: ui.Color.fromARGB(255, 109, 102, 102)),
                            ),
                          ),

                          ///
                          ///
                          ///
                          ///
                          ///
                          ///
                          ///
                          ///
                          ///
                          ///
                          ///
                          ///
                          ///
                          ///
                          ///
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextField(
                              controller: plotController,
                              decoration: InputDecoration(
                                  hintText: 'Plot Number',
                                  label: const Text(
                                    'Plot Number',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                            ),
                          ),
                          //
                          //
                          //
                          //
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextField(
                              controller: blockController,
                              decoration: InputDecoration(
                                  hintText: 'Block',
                                  label: const Text(
                                    'Block',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                            ),
                          ),
                          //
                          //
                          //
                          //
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextField(
                              controller: sectorController,
                              decoration: InputDecoration(
                                  hintText: 'Sector',
                                  label: const Text(
                                    'Sector',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                            ),
                          ),
                          //
                          //
                          //
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextField(
                              controller: phaseController,
                              decoration: InputDecoration(
                                  hintText: 'Phase',
                                  label: const Text(
                                    'Phase',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                            ),
                          ),
                          //
                          //
                          //
                          //
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextField(
                              controller: societyController,
                              decoration: InputDecoration(
                                  hintText: 'Society Name',
                                  label: const Text(
                                    'Society Name',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                            ),
                          ),
                          //
                          //
                          //
                          //

                          //
                          //
                          //
                          //
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextField(
                              controller: cityRentController,
                              decoration: InputDecoration(
                                  hintText: 'City',
                                  label: const Text(
                                    'City',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                            ),
                          ),
                          //
                          //
                          //
                          //
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              controller: zipcodeLocationController,
                              decoration: InputDecoration(
                                  hintText: 'Zip Code',
                                  label: const Text(
                                    'Zip Code',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(15.0),
                    //   child: TextField(
                    //     controller: propertyLocationController,
                    //     decoration: InputDecoration(
                    //         hintText:
                    //             'Fill complete location of property that you want to sell out',
                    //         label: const Text(
                    //           'Property Location',
                    //           style: TextStyle(color: Colors.black),
                    //         ),
                    //         enabledBorder: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(10)),
                    //         focusedBorder: const OutlineInputBorder(
                    //             borderSide: BorderSide(color: Colors.black))),
                    //     minLines: 5,
                    //     maxLines: 20,
                    //   ),
                    // ),
                    //
                    //
                    //
                    //
                    // signature // // /////............
                    //
                    //
                    //
                    //
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10)),
                            height: 180,
                            width: 230,
                            child: SfSignaturePad(
                              onDrawEnd: () async {
                                // isDrawEnd = true;
                                ui.Image image = await _signaturePadKey
                                    .currentState!
                                    .toImage();
                                  signatureImage = image;
                                print('is draw end executed');
                              },
                              minimumStrokeWidth: 1,
                              maximumStrokeWidth: 3,
                              strokeColor: Colors.red,
                              key: _signaturePadKey,
                              backgroundColor: Colors.grey[200],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0, left: 0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: TextButton(
                                      child: const Text(
                                        "Clear",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                      onPressed: () async {
                                        print('signature cleared');
                                        _signaturePadKey.currentState!.clear();
                                        signatureImage = null;
                                      }),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    //     Tenant information .....start....
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: Opacity(
                          opacity: 0.3,
                          child: Text(
                            "Buyer Information",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Opacity(
                        opacity: 0.3,
                        child: TextField(
                          readOnly: true,
                          decoration: InputDecoration(
                              hintText: 'Full Name',
                              // label: const Text(
                              //   'Full Name',
                              //   style: TextStyle(color: Colors.black),
                              // ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                    ),
                    //
                    //
                    //
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Opacity(
                        opacity: 0.3,
                        child: TextField(
                          readOnly: true,
                          decoration: InputDecoration(
                              hintText: 'Phone Number',
                              // label: const Text(
                              //   'Phone Number ',
                              //   style: TextStyle(color: Colors.black),
                              // ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                    ),
                    //
                    //
                    //
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Opacity(
                        opacity: 0.3,
                        child: TextField(
                          readOnly: true,
                          decoration: InputDecoration(
                              hintText: 'CNIC (ID Card Number)',
                              // label: const Text(
                              //   'CNIC',
                              //   style: TextStyle(color: Colors.black),
                              // ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                    ),
                    //
                    //
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Opacity(
                        opacity: 0.3,
                        child: TextField(
                          readOnly: true,
                          decoration: InputDecoration(
                              hintText: 'Address',
                              // label: const Text(
                              //   'Full Name',
                              //   style: TextStyle(color: Colors.black),
                              // ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                    ),
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    // //  // // // /  Signature ... //// /// ///
                    //
                    //
                    //
                    //
                    //
                    //
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Container(
                          //   clipBehavior: Clip.antiAlias,
                          //   decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(20)),
                          //   height: 180,
                          //   width: 230,
                          //   child: SfSignaturePad(
                          //     minimumStrokeWidth: 1,
                          //     maximumStrokeWidth: 3,
                          //     strokeColor: Colors.blue,
                          //     key: _signaturePadKey,
                          //     backgroundColor: Colors.grey[200],
                          //   ),
                          // ),
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.1),
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(20)),
                            height: 180,
                            width: 230,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0, left: 0),
                            child: Row(
                              children: [
                                // Opacity(
                                //   opacity: 0.3,
                                //   child: TextButton(
                                //       child: const Text('Save As Image'),
                                //       onPressed: () async {
                                //         ui.Image image = await _signaturePadKey
                                //             .currentState!
                                //             .toImage();
                                //       }),
                                // ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Opacity(
                                    opacity: 0.3,
                                    child: TextButton(
                                        child: const Text(
                                          "Clear",
                                          style: TextStyle(color: Colors.red),
                                        ),
                                        onPressed: () async {
                                          _signaturePadKey.currentState!
                                              .clear();
                                        }),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 25),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),

      //
      //
      //
      //
      ///
      ///
      ///
      ///
      floatingActionButton: FloatingActionButton.extended(
        elevation: 10,
        backgroundColor: ThemeColors.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {
//           final currentDate = DateTime.now();
// final formattedDate = DateFormat('yyyy-MM-dd').format(currentDate);
// print('${formattedDate}');
//           print('${DateTime.now()}');
          print('executing floating action button');
          if (nameController.text.isEmpty) {
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Name is required')));
          } else if (phoneController.text.isEmpty) {
            ScaffoldMessenger.of(context).clearSnackBars();

            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Phone Number is required')));
          } else if (cnicController.text.isEmpty) {
            ScaffoldMessenger.of(context).clearSnackBars();

            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('CNIC is required')));
          } else if (officeController.text.isEmpty) {
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Office section is required')));
          }  else if (propertyPriceController.text.isEmpty) {
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('Add Price')));
          } else if (signatureImage == null) {
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Signature is required')));
          } else if (plotController.text.isEmpty) {
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Plot number is required')));
          } else if (blockController.text.isEmpty) {
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('block is required')));
          } else if (sectorController.text.isEmpty) {
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('sector is required')));
          } else if (phaseController.text.isEmpty) {
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('phase is required')));
          } else if (societyController.text.isEmpty) {
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('society name is required')));
          } else if (cityRentController.text.isEmpty) {
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('city is required')));
          } else if (zipcodeLocationController.text.isEmpty) {
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Zip Code is required')));
          } else {
            ScaffoldMessenger.of(context).clearSnackBars();
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => RealEstateSellerConfirmationPage(addressOfSeller:bussiunessLocationController.text.toString() , commission: commissionController.text.toString(), nameOfSeller: nameController.text.toString()
                , phoneOfSeller: phoneController.text.toString(),
                propertyLocation:'plot ${plotController.text},'
                    'block ${blockController.text},'
                    'sector ${sectorController.text},'
                    'phase ${phaseController.text},'
                    '${societyController.text},${cityRentController.text}, ${zipcodeLocationController.text}, ' ,
                businessLocation: propertyLocationController.text.toString(),
                signatureImage: signatureImage,
                cnicOfSeller: cnicController.text.toString()),));
          }
        },
        label: const Icon(Icons.remove_red_eye_outlined, color: Colors.white),
        icon: const Text(
          'Preview',
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  /////// show SnakBar ....//////////
  bool isSnackBarVisible = false;

  void showSnackBarF(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        duration: const Duration(seconds: 10),
        action: SnackBarAction(
          textColor: Colors.orange,
          label: 'Undo',
          onPressed: () {},
        ),
      ),
    );

    // Set a flag to indicate the SnackBar is visible
    isSnackBarVisible = true;

    // Optional: You can set a delay to update the flag when the SnackBar hides
    Future.delayed(const Duration(seconds: 10), () {
      isSnackBarVisible = false;
    });
  }
}
