import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';

import 'home.dart';

class RealEstateSellerResultPage extends StatelessWidget {
  final String addressOfSeller;
  final String nameOfSeller;
  final String phoneOfSeller;
  final String currentDate;
  final String locationOfProperty;
  final ui.Image? signatureImage;
  final String cnicOfSeller;
  RealEstateSellerResultPage({
    required this.addressOfSeller,
    required this.nameOfSeller,
    required this.phoneOfSeller,
    required this.currentDate,
    required this.locationOfProperty,
    required this.signatureImage,
    required this.cnicOfSeller,
  });

  final screenshotController = ScreenshotController();

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

  Future<Uint8List> encodeImage(ui.Image image) async {
    final ByteData? byteData =
        await image.toByteData(format: ui.ImageByteFormat.png);
    return Uint8List.view(byteData!.buffer);
  }

  @override
  Widget build(BuildContext context) {
    print('image is ${signatureImage}');
    final size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {
                  // _createPDF();
                  _captureAndSave();
                },
                icon: const Icon(
                  Icons.download,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {
                  //share the document
                  // _shareDocument();
                },
                icon: const Icon(Icons.share))
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(
              left: size.width * 0.015,
              right: size.width * 0.015,
              bottom: size.width * 0.015),
          child: Screenshot(
            controller: screenshotController,
            child: Container(
              padding: EdgeInsets.all(size.width * 0.015),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(
                  width: 3,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Receipt',
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
                    Row(
                      children: [
                        reUsableData('Date :', currentDate, size),
                        SizedBox(width: size.width * 0.16),
                        reUsableData('Receipt #:', 'receipt here', size),
                      ],
                    ), //
                    //
                    ///
                    /// landlord and tenant table
                    /// responive above
                    ///
                    //

                    SizedBox(height: size.width * 0.03),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'LandLord',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Tenant',
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        DottedBorder(
                          padding: EdgeInsets.all(size.width * 0.015),
                          child: SizedBox(
                            height: size.height * 0.21,
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
                                          hintText: addressOfSeller,
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
                                        height: size.height * 0.04,
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
                                            hintText: nameOfSeller,
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
                                        height: size.height * 0.04,
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
                                            hintText: cnicOfSeller,
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
                                        height: size.height * 0.04,
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
                                            hintText: phoneOfSeller,
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
                        DottedBorder(
                          padding: EdgeInsets.all(size.width * 0.015),
                          child: SizedBox(
                            height: size.height * 0.21,
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
                                          hintText: addressOfSeller,
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
                                        height: size.height * 0.04,
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
                                            hintText: nameOfSeller,
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
                                        height: size.height * 0.04,
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
                                            hintText: cnicOfSeller,
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
                                        height: size.height * 0.04,
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
                                            hintText: phoneOfSeller,
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
                    reUsableSizedBox('Received from :', 'payment here', size),

                    reUsableSizedBox('The Payment of \$', 'payment here', size),

                    reUsableSizedBox('For Payment of', 'payment here', size),

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
                    //
                    SizedBox(
                      height: size.width * 0.02,
                    ),
                    DottedBorder(
                      child: Column(
                        children: [
                          reUsableContainer(
                              'Total amount to be', 'amount here', size),
                          reUsableContainer(
                              'Amount received', 'amount here', size),
                          reUsableContainer('Balance Due', 'Amount here', size),

                          SizedBox(height: size.width * 0.03),
                          //
                          ///
                          ///
                          ///
                          ///
                          ///
                          ///
                          ///
                          //

                          Row(
                            children: [
                              SizedBox(
                                height: size.width * 0.05,
                                width: size.width * 0.5,
                                child: reusableTextField(
                                    'Received by :', 'name here ', size),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              SizedBox(
                                child: Text(
                                  '[ ]Cash',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.width * 0.03),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.width * 0.02,
                          ),

                          Row(
                            children: [
                              SizedBox(
                                height: size.width * 0.06,
                                width: size.width * 0.6,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  // textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    Text(
                                      'Address :',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * 0.023),
                                    ),
                                    Expanded(
                                      child: TextField(
                                        // textAlignVertical: TextAlignVertical.center,
                                        readOnly: true,
                                        decoration: InputDecoration(
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black.withOpacity(
                                                    0.5)), // Change color as needed
                                          ),
                                          hintStyle: TextStyle(
                                              fontSize: size.width * 0.02),
                                          hintText:
                                              'House 07 street 01 staff colony central jail kot lakhpat lahore house 0333 hsods  dsh dfd ',
                                          hintMaxLines: 4,
                                          contentPadding: EdgeInsets.only(
                                              bottom: size.width * 0.06,
                                              left: 5),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.001,
                              ),
                              SizedBox(
                                child: Text(
                                  '[ ]Cheque No',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.width * 0.02),
                                ),
                              ),
                              Expanded(
                                  child: SizedBox(
                                      height: size.width * 0.05,
                                      width: size.width * 0.5,
                                      child: TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black.withOpacity(
                                                    0.5)), // Change color as needed
                                          ),
                                          hintText: '9876543210123',
                                          contentPadding: EdgeInsets.only(
                                              bottom: size.width * 0.04,
                                              left: 5),
                                          hintStyle: TextStyle(
                                              fontSize: size.width * 0.018),
                                        ),
                                      ))),
                            ],
                          ),
                          SizedBox(
                            height: size.width * 0.02,
                          ),

                          Row(
                            children: [
                              SizedBox(
                                height: size.width * 0.05,
                                width: size.width * 0.5,
                                child: reusableTextField(
                                    'Phone :', '023038923903', size),
                              ),
                              SizedBox(
                                child: Text(
                                  '[ ] Money Order',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.width * 0.02),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.width * 0.02,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: size.width * 0.02),
                    //
                    ///
                    ///
                    ///
                    /// last part
                    ///
                    ///
                    //
                    Text(
                      'Description of Property',
                      style: TextStyle(
                          fontSize: size.width * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.1,
                      child: TextField(
                        readOnly: true,
                        decoration: InputDecoration(
                          hintMaxLines: 4,
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.black.withOpacity(
                                    0.5)), // Change color as needed
                          ),
                          hintText:
                              'description of the thing lets say description Description here a quick brown fox jumps over the lazy dog that is a sentence containing all alphabets of english which is we used to practice',
                          hintStyle: TextStyle(fontSize: size.width * 0.03),
                        ),
                      ),
                    ),

                    SizedBox(height: size.width * 0.02),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Signature :',
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
                                height: 90,
                                width: 90,
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









//share document
// void _shareDocument() async {
//   print('share document running');
//   final content = 'Document Details\n\n'
//       'Name: $name\n'
//       'Phone Number: $phoneNumber\n'
//       'CNIC: $cnic\n'
//       'Office: $office\n'
//       'Commission Amount: $commissionAmount\n'
//       'Price of Property: $priceOfProperty\n'
//       'Location: $propertyLocation\n'
//       'Signature: $signature';
//   FlutterShare.share(title: 'Document', text: content);
// }
//
// Future<void> _createPDF() async {
//   print('create pdf is running');
//   final content = 'Document Details\n\n'
//       'Name: $name\n'
//       'Phone Number: $phoneNumber\n'
//       'CNIC: $cnic\n'
//       'Office: $office\n'
//       'Commission Amount: $commissionAmount\n'
//       'Price of Property: $priceOfProperty\n'
//       'Location: $propertyLocation\n'
//       'Signature: $signature';
//   PdfDocument pdfDocument = PdfDocument();
//   final page = pdfDocument.pages.add();
//   page.graphics.drawString(
//     'Seller Document\n\n\n\n$content',
//     PdfStandardFont(PdfFontFamily.helvetica, 19)
//   );
//
//
//   List<int> bytes = await pdfDocument.save();
//   pdfDocument.dispose(); //release resources
//   saveAndLaunchFile(bytes, 'Output.pdf');
// }
//
// Future saveAndLaunchFile(List<int> bytes, String fileName) async {
//   final path = (await getExternalStorageDirectory())?.path;
//   final file = File('$path/$fileName');
//   await file.writeAsBytes(bytes, flush: true);
//   OpenFile.open('$path/$fileName');
// }

