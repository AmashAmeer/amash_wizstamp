import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:wizstamp/pages/home.dart';
import 'package:wizstamp/pages/real_estate_seller_document_result_page.dart';

class ElectronicsFinalResultPage extends StatelessWidget {
  final String phoneNumber;
  final String cnic;
  final String deviceName;
  final String modelOfDevice;
  final String priceOfDevice;
  final String guaranteeOfDevice;
  final String nameOfShop;
  final String addressOfShop;
  final String conditionOfDevice;
  final String name;
  final String currentDate;
  final ui.Image? signatureImage;

  ScreenshotController screenshotController = ScreenshotController();

  ElectronicsFinalResultPage({
    required this.name,
    required this.phoneNumber,
    required this.cnic,
    required this.deviceName,
    required this.modelOfDevice,
    required this.priceOfDevice,
    required this.guaranteeOfDevice,
    required this.addressOfShop,
    required this.conditionOfDevice,
    required this.nameOfShop,
    required this.currentDate,
    required this.signatureImage,
  });
  // ui.Image? signatureImage;
  Future<Uint8List> encodeImage(ui.Image image) async {
    final ByteData? byteData =
        await image.toByteData(format: ui.ImageByteFormat.png);
    return Uint8List.view(byteData!.buffer);
  }

  Future<void> _captureAndSave() async {
    print('capture and save is running');
    final imageFile = await screenshotController.capture();

    // Check if imageFile is not null before using the null check operator
    if (imageFile != null) {
      final path = (await getExternalStorageDirectory())?.path;
      final fileName =
          'Screenshot_${DateTime.now().millisecondsSinceEpoch}.png';
      final file = File('$path/$fileName');

      await file.writeAsBytes(imageFile, flush: true);
      OpenFile.open('$path/$fileName');
    } else {
      print('Error: Image file is null');
      // Handle the case where imageFile is null, for example, show an error message.
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        return true;
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => Home(),
        //   ),
        // );
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {
                  _captureAndSave();
                },
                icon: const Icon(Icons.download)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.share))
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.015,
            right: size.width * 0.015,
            bottom: size.width * 0.015,
            // top: size.width * 0.1,
          ),
          child: Screenshot(
            controller: screenshotController,
            child: Container(
              padding: EdgeInsets.all(size.width * 0.015),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 3,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Electronic Assecories Document',
                      style: TextStyle(
                          fontSize: size.width * 0.05,
                          fontWeight: FontWeight.bold),
                    ),
                    //
                    //
                    //date and receipt row////////

                    ///
                    /// //
                    ///
                    ///above responsive
                    ///
                    //
                    reUsableData('Date :', currentDate, size), //
                    //
                    ///
                    /// landlord and tenant table
                    /// responive above
                    ///
                    //

                    SizedBox(height: size.width * 0.03),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Seller',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Buyer',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    //
                    ///
                    ///
                    /// details
                    ///responive above
                    ///
                    //

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DottedBorder(
                          padding: EdgeInsets.all(size.width * 0.015),
                          child: SizedBox(
                            height: size.height * 0.28,
                            width: size.width * 0.42,
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Address:',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * 0.03),
                                    ),
                                    Expanded(
                                      child: TextField(
                                        textAlignVertical:
                                            TextAlignVertical.center,
                                        readOnly: true,
                                        decoration: InputDecoration(
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black.withOpacity(
                                                    0.5)), // Change color as needed
                                          ),
                                          hintStyle: TextStyle(
                                              fontSize: size.width * 0.02),
                                          hintMaxLines: 4,
                                          hintText: addressOfShop,
                                          contentPadding: EdgeInsets.only(
                                              bottom: size.width * 0.032,
                                              left: 5),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Name:',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * 0.03),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: size.height * 0.06,
                                        child: TextField(
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          readOnly: true,
                                          decoration: InputDecoration(
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black.withOpacity(
                                                      0.5)), // Change color as needed
                                            ),
                                            hintStyle: TextStyle(
                                                fontSize: size.width * 0.03),
                                            hintText: name,
                                            contentPadding: EdgeInsets.only(
                                                bottom: size.height * 0.002,
                                                left: 5),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'CNIC:',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * 0.03),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: size.height * 0.06,
                                        child: TextField(
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          readOnly: true,
                                          decoration: InputDecoration(
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black.withOpacity(
                                                      0.5)), // Change color as needed
                                            ),
                                            hintStyle: TextStyle(
                                                fontSize: size.width * 0.03),
                                            hintText: cnic,
                                            contentPadding: EdgeInsets.only(
                                                bottom: size.height * 0.002,
                                                left: 5),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Phone:',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * 0.03),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: size.height * 0.06,
                                        child: TextField(
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          readOnly: true,
                                          decoration: InputDecoration(
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black.withOpacity(
                                                      0.5)), // Change color as needed
                                            ),
                                            hintStyle: TextStyle(
                                                fontSize: size.width * 0.03),
                                            hintText: phoneNumber,
                                            contentPadding: EdgeInsets.only(
                                                bottom: size.height * 0.002,
                                                left: 5),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        DottedBorder(
                          padding: EdgeInsets.all(size.width * 0.015),
                          child: SizedBox(
                            height: size.height * 0.28,
                            width: size.width * 0.42,
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Address:',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * 0.03),
                                    ),
                                    Expanded(
                                      child: TextField(
                                        textAlignVertical:
                                            TextAlignVertical.center,
                                        readOnly: true,
                                        decoration: InputDecoration(
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black.withOpacity(
                                                    0.5)), // Change color as needed
                                          ),
                                          hintStyle: TextStyle(
                                              fontSize: size.width * 0.02),
                                          hintMaxLines: 4,
                                          hintText: 'addressOfBuyer',
                                          contentPadding: EdgeInsets.only(
                                              bottom: size.width * 0.032,
                                              left: 5),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Name:',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * 0.03),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: size.height * 0.06,
                                        child: TextField(
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          readOnly: true,
                                          decoration: InputDecoration(
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black.withOpacity(
                                                      0.5)), // Change color as needed
                                            ),
                                            hintStyle: TextStyle(
                                                fontSize: size.width * 0.03),
                                            hintText: 'nameOfBuyer',
                                            contentPadding: EdgeInsets.only(
                                                bottom: size.height * 0.016,
                                                left: 5),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'CNIC:',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * 0.03),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: size.height * 0.06,
                                        child: TextField(
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          readOnly: true,
                                          decoration: InputDecoration(
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black.withOpacity(
                                                      0.5)), // Change color as needed
                                            ),
                                            hintStyle: TextStyle(
                                                fontSize: size.width * 0.03),
                                            hintText: 'cnic',
                                            contentPadding: EdgeInsets.only(
                                                bottom: size.height * 0.018,
                                                left: 5),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Phone:',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * 0.03),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: size.height * 0.06,
                                        child: TextField(
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          readOnly: true,
                                          decoration: InputDecoration(
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black.withOpacity(
                                                      0.5)), // Change color as needed
                                            ),
                                            hintStyle: TextStyle(
                                                fontSize: size.width * 0.03),
                                            hintText: 'phone',
                                            contentPadding: EdgeInsets.only(
                                                bottom: size.height * 0.018,
                                                left: 5),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    //
                    ///
                    /// mid part
                    ///
                    //
                    // SizedBox(height: size.height*0.01,),
                    reUsableSizedBox('Device Name :', deviceName, size),

                    reUsableSizedBox('Device Model :', modelOfDevice, size),

                    reUsableSizedBox(
                        'Guarantee Duration :', guaranteeOfDevice, size),
                    reUsableSizedBox('Final Price :', priceOfDevice, size),

                    //
                    ///
                    ///
                    ///2nd last part
                    ///
                    ///
                    //
                    SizedBox(height: size.width * 0.02),

                    //
                    ///
                    ///
                    ///
                    ///

                    ///
                    ///
                    ///
                    /// last part
                    ///
                    ///
                    //
                    Text(
                      'Device Condition ',
                      style: TextStyle(
                          fontSize: size.width * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.1,
                      child: TextField(
                        readOnly: true,
                        decoration: InputDecoration(
                          hintMaxLines: 2,
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.black.withOpacity(
                                    0.5)), // Change color as needed
                          ),
                          hintText: conditionOfDevice,
                          hintStyle: TextStyle(fontSize: size.width * 0.03),
                        ),
                      ),
                    ),

                    // SizedBox(height: size.width * 0.02),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Seller Signature :',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.height * 0.02,
                          ),
                        ),
                        FutureBuilder<Uint8List>(
                          future: encodeImage(signatureImage!),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.done) {
                              // If the Future is complete, display the Image widget
                              return Image.memory(
                                snapshot.data!,
                                height: 60,
                                width: 60,
                              );
                            } else {
                              // Display a placeholder or loading indicator while the Future is in progress
                              return const CircularProgressIndicator();
                            }
                          },
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Buyer Signature :',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.height * 0.02,
                          ),
                        ),
                        FutureBuilder<Uint8List>(
                          future: encodeImage(signatureImage!),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.done) {
                              // If the Future is complete, display the Image widget
                              return Image.memory(
                                snapshot.data!,
                                height: 60,
                                width: 60,
                              );
                            } else {
                              // Display a placeholder or loading indicator while the Future is in progress
                              return const CircularProgressIndicator();
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget reusableTextField(String heading, hintText, Size size) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Text(
        heading,
        style:
            TextStyle(fontSize: size.width * 0.03, fontWeight: FontWeight.bold),
      ),
      Expanded(
          child: SizedBox(
              height: size.width * 0.045,
              child: TextField(
                readOnly: true,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black
                            .withOpacity(0.5)), // Change color as needed
                  ),
                  hintStyle: TextStyle(fontSize: size.width * 0.032),
                  hintText: hintText,
                  contentPadding:
                      EdgeInsets.only(left: 5, bottom: size.width * 0.04),
                ),
              ))),
    ],
  );
}

Widget reUsableContainer(String heading, valueText, Size size) {
  return Row(
    children: [
      Container(
        alignment: Alignment.center,
        height: size.width * 0.05,
        width: size.width * 0.45,
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: Text(
          heading,
          style: TextStyle(
              fontSize: size.width * 0.03, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        alignment: Alignment.center,
        height: size.width * 0.05,
        width: size.width * 0.45,
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: Text(
          valueText,
          style: TextStyle(fontSize: size.width * 0.03),
        ),
      ),
    ],
  );
}

Widget reUsableSizedBox(String heading, hintText, Size size) {
  return SizedBox(
      height: size.width * 0.07,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        // textBaseline: TextBaseline.alphabetic,
        children: [
          Text(
            heading,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: size.width * 0.03),
          ),
          Expanded(
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              readOnly: true,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.black
                          .withOpacity(0.5)), // Change color as needed
                ),
                hintStyle: TextStyle(fontSize: size.width * 0.03),
                hintText: hintText,
                contentPadding:
                    EdgeInsets.only(bottom: size.width * 0.04, left: 5),
              ),
            ),
          ),
        ],
      ));
}

Widget reUsableData(String heading, hintText, Size size) {
  return SizedBox(
      height: size.width * 0.05,
      width: size.width * 0.3,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            heading,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: size.width * 0.03),
          ),
          Expanded(
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              readOnly: true,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.black
                          .withOpacity(0.5)), // Change color as needed
                ),
                hintStyle: TextStyle(fontSize: size.width * 0.03),
                hintText: hintText,
                // labelText: 'Date here',
                contentPadding: EdgeInsets.only(
                    bottom: size.width * 0.03, left: size.width * 0.02),
              ),
            ),
          ),
        ],
      ));
}

// 700 lines of code
