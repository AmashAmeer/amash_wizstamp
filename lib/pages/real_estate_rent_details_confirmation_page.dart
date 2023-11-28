import 'dart:typed_data';
import 'dart:ui' as ui;
import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:wizstamp/pages/real_estate_seller_details_confirmation_page.dart';

class RealEstateRentConfirmationPage extends StatelessWidget {
  final String addressOfSeller;
  final String nameOfSeller;
  final String phoneOfSeller;
  final String locationOfProperty;
  final String commission;
  final ui.Image? signatureImage;
  final String cnicOfSeller;
final String rent;
  RealEstateRentConfirmationPage({
    required this.addressOfSeller,
    required this.commission,
    required this.nameOfSeller,
    required this.phoneOfSeller,
required this.rent,
    required this.locationOfProperty,
    required this.signatureImage,
    required this.cnicOfSeller,
  });

  Future<Uint8List> encodeImage(ui.Image image) async {
    final ByteData? byteData =
        await image.toByteData(format: ui.ImageByteFormat.png);
    return Uint8List.view(byteData!.buffer);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.only(
            left: size.width * 0.015,
            right: size.width * 0.015,
            bottom: size.width * 0.015),
        child: Container(
          padding: EdgeInsets.all(size.width * 0.015),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 3,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Rent Document',
                  style: TextStyle(
                      fontSize: size.width * 0.05, fontWeight: FontWeight.bold),
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
                      'Owner/Dealer',
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
                    // DottedBorder(
                    //   padding: EdgeInsets.all(size.width * 0.015),
                    //   child: SizedBox(
                    //     height: size.height * 0.21,
                    //     width: size.width * 0.42,
                    //     child: Column(
                    //       children: [
                    //         Row(
                    //           crossAxisAlignment: CrossAxisAlignment.end,
                    //           children: [
                    //             Text(
                    //               'Address:',
                    //               style: TextStyle(
                    //                   fontWeight: FontWeight.bold,
                    //                   fontSize: size.width * 0.03),
                    //             ),
                    //             Expanded(
                    //               child: TextField(
                    //                 textAlignVertical: TextAlignVertical.center,
                    //                 readOnly: true,
                    //                 decoration: InputDecoration(
                    //                   focusedBorder: UnderlineInputBorder(
                    //                     borderSide: BorderSide(
                    //                         color: Colors.black.withOpacity(
                    //                             0.5)), // Change color as needed
                    //                   ),
                    //                   hintStyle: TextStyle(
                    //                       fontSize: size.width * 0.02),
                    //                   hintMaxLines: 4,
                    //                   hintText: addressOfSeller,
                    //                   contentPadding: EdgeInsets.only(
                    //                       bottom: size.width * 0.032, left: 5),
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //         Row(
                    //           crossAxisAlignment: CrossAxisAlignment.end,
                    //           children: [
                    //             Text(
                    //               'Name:',
                    //               style: TextStyle(
                    //                   fontWeight: FontWeight.bold,
                    //                   fontSize: size.width * 0.03),
                    //             ),
                    //             Expanded(
                    //               child: SizedBox(
                    //                 height: size.height * 0.04,
                    //                 child: TextField(
                    //                   textAlignVertical:
                    //                       TextAlignVertical.center,
                    //                   readOnly: true,
                    //                   decoration: InputDecoration(
                    //                     focusedBorder: UnderlineInputBorder(
                    //                       borderSide: BorderSide(
                    //                           color: Colors.black.withOpacity(
                    //                               0.5)), // Change color as needed
                    //                     ),
                    //                     hintStyle: TextStyle(
                    //                         fontSize: size.width * 0.03),
                    //                     hintText: nameOfSeller,
                    //                     contentPadding: EdgeInsets.only(
                    //                         bottom: size.height * 0.016,
                    //                         left: 5),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //         Row(
                    //           crossAxisAlignment: CrossAxisAlignment.end,
                    //           children: [
                    //             Text(
                    //               'CNIC:',
                    //               style: TextStyle(
                    //                   fontWeight: FontWeight.bold,
                    //                   fontSize: size.width * 0.03),
                    //             ),
                    //             Expanded(
                    //               child: SizedBox(
                    //                 height: size.height * 0.04,
                    //                 child: TextField(
                    //                   textAlignVertical:
                    //                       TextAlignVertical.center,
                    //                   readOnly: true,
                    //                   decoration: InputDecoration(
                    //                     focusedBorder: UnderlineInputBorder(
                    //                       borderSide: BorderSide(
                    //                           color: Colors.black.withOpacity(
                    //                               0.5)), // Change color as needed
                    //                     ),
                    //                     hintStyle: TextStyle(
                    //                         fontSize: size.width * 0.03),
                    //                     hintText: cnicOfSeller,
                    //                     contentPadding: EdgeInsets.only(
                    //                         bottom: size.height * 0.018,
                    //                         left: 5),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //         Row(
                    //           crossAxisAlignment: CrossAxisAlignment.end,
                    //           children: [
                    //             Text(
                    //               'Phone:',
                    //               style: TextStyle(
                    //                   fontWeight: FontWeight.bold,
                    //                   fontSize: size.width * 0.03),
                    //             ),
                    //             Expanded(
                    //               child: SizedBox(
                    //                 height: size.height * 0.04,
                    //                 child: TextField(
                    //                   textAlignVertical:
                    //                       TextAlignVertical.center,
                    //                   readOnly: true,
                    //                   decoration: InputDecoration(
                    //                     focusedBorder: UnderlineInputBorder(
                    //                       borderSide: BorderSide(
                    //                           color: Colors.black.withOpacity(
                    //                               0.5)), // Change color as needed
                    //                     ),
                    //                     hintStyle: TextStyle(
                    //                         fontSize: size.width * 0.03),
                    //                     hintText: phoneOfSeller,
                    //                     contentPadding: EdgeInsets.only(
                    //                         bottom: size.height * 0.018,
                    //                         left: 5),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    DottedBorder(
                      padding: EdgeInsets.all(size.width * 0.015),
                      child: SizedBox(
                        height: size.height * 0.18,
                        width: size.width * 0.42,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Baseline(
                                  baseline: size.width * 0.04,
                                  baselineType: TextBaseline.alphabetic,
                                  child: Text(
                                    'Name:',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: size.width * 0.03),
                                  ),
                                ),
                                Expanded(
                                  child: Baseline(
                                    baseline: size.width * 0.04,baselineType: TextBaseline.alphabetic,
                                    child: Container(
                                      // decoration: BoxDecoration(
                                      //   border: Border.all(),
                                      // ),
                                      height: size.height * 0.05,
                                      child: TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintStyle: TextStyle(
                                              fontSize: size.width * 0.026,fontWeight: FontWeight.bold),
                                          hintText: nameOfSeller,
                                          contentPadding: EdgeInsets.only(
                                            // bottom: size.height * 0.002,

                                              left: 5),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),


                              ],
                            ),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Baseline(
                                  baseline: size.width * 0.04,
                                  baselineType: TextBaseline.alphabetic,
                                  child: Text(
                                    'CNIC:',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: size.width * 0.03),
                                  ),
                                ),
                                Expanded(
                                  child: Baseline(
                                    baseline: size.width * 0.04,baselineType: TextBaseline.alphabetic,
                                    child: Container(
                                      // decoration: BoxDecoration(
                                      //   border: Border.all(),
                                      // ),
                                      height: size.height * 0.05,
                                      child: TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintStyle: TextStyle(
                                              fontSize: size.width * 0.026,fontWeight: FontWeight.bold),
                                          hintText: cnicOfSeller,
                                          contentPadding: EdgeInsets.only(
                                            // bottom: size.height * 0.002,

                                              left: 5),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),


                              ],
                            ),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Baseline(
                                  baseline: 15.0,
                                  baselineType: TextBaseline.alphabetic,
                                  child: Text(
                                    'Phone:',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: size.width * 0.03),
                                  ),
                                ),
                                Expanded(
                                  child: Baseline(
                                    baseline: 15.0,baselineType: TextBaseline.alphabetic,
                                    child: Container(
                                      // decoration: BoxDecoration(
                                      //   border: Border.all(),
                                      // ),
                                      height: size.height * 0.05,
                                      child: TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintStyle: TextStyle(
                                              fontSize: size.width * 0.026,fontWeight: FontWeight.bold),
                                          hintText:phoneOfSeller,
                                          contentPadding: EdgeInsets.only(
                                            // bottom: size.height * 0.002,

                                              left: 5),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),


                              ],
                            ),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Baseline(
                                  baseline:size.width * 0.04,
                                  baselineType: TextBaseline.alphabetic,
                                  child: Text(
                                    'Address:',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: size.width * 0.03),
                                  ),
                                ),
                                Expanded(
                                  child: Baseline(
                                    baseline:size.width * 0.04,baselineType: TextBaseline.alphabetic,
                                    child: Container(
                                      // decoration: BoxDecoration(
                                      //   border: Border.all(),
                                      // ),
                                      height: size.height * 0.1,
                                      child: TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintStyle: TextStyle(
                                              fontSize: size.width * 0.025,fontWeight: FontWeight.bold),
                                          hintText: addressOfSeller,
                                          hintMaxLines:6,
                                          contentPadding: const EdgeInsets.only(
                                            // bottom: size.height * 0.002,

                                              left: 5),
                                        ),
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



                    // DottedBorder(
                    //   padding: EdgeInsets.all(size.width * 0.015),
                    //   child: SizedBox(
                    //     height: size.height * 0.21,
                    //     width: size.width * 0.42,
                    //     child: Column(
                    //       children: [
                    //         Row(
                    //           crossAxisAlignment: CrossAxisAlignment.end,
                    //           children: [
                    //             Text(
                    //               'Address:',
                    //               style: TextStyle(
                    //                   fontWeight: FontWeight.bold,
                    //                   fontSize: size.width * 0.03),
                    //             ),
                    //             Expanded(
                    //               child: TextField(
                    //                 textAlignVertical: TextAlignVertical.center,
                    //                 readOnly: true,
                    //                 decoration: InputDecoration(
                    //                   focusedBorder: UnderlineInputBorder(
                    //                     borderSide: BorderSide(
                    //                         color: Colors.black.withOpacity(
                    //                             0.5)), // Change color as needed
                    //                   ),
                    //                   hintStyle: TextStyle(
                    //                       fontSize: size.width * 0.02),
                    //                   hintMaxLines: 4,
                    //                   hintText: addressOfSeller,
                    //                   contentPadding: EdgeInsets.only(
                    //                       bottom: size.width * 0.032, left: 5),
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //         Row(
                    //           crossAxisAlignment: CrossAxisAlignment.end,
                    //           children: [
                    //             Text(
                    //               'Name:',
                    //               style: TextStyle(
                    //                   fontWeight: FontWeight.bold,
                    //                   fontSize: size.width * 0.03),
                    //             ),
                    //             Expanded(
                    //               child: SizedBox(
                    //                 height: size.height * 0.04,
                    //                 child: TextField(
                    //                   textAlignVertical:
                    //                       TextAlignVertical.center,
                    //                   readOnly: true,
                    //                   decoration: InputDecoration(
                    //                     focusedBorder: UnderlineInputBorder(
                    //                       borderSide: BorderSide(
                    //                           color: Colors.black.withOpacity(
                    //                               0.5)), // Change color as needed
                    //                     ),
                    //                     hintStyle: TextStyle(
                    //                         fontSize: size.width * 0.03),
                    //                     hintText: nameOfSeller,
                    //                     contentPadding: EdgeInsets.only(
                    //                         bottom: size.height * 0.016,
                    //                         left: 5),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //         Row(
                    //           crossAxisAlignment: CrossAxisAlignment.end,
                    //           children: [
                    //             Text(
                    //               'CNIC:',
                    //               style: TextStyle(
                    //                   fontWeight: FontWeight.bold,
                    //                   fontSize: size.width * 0.03),
                    //             ),
                    //             Expanded(
                    //               child: SizedBox(
                    //                 height: size.height * 0.04,
                    //                 child: TextField(
                    //                   textAlignVertical:
                    //                       TextAlignVertical.center,
                    //                   readOnly: true,
                    //                   decoration: InputDecoration(
                    //                     focusedBorder: UnderlineInputBorder(
                    //                       borderSide: BorderSide(
                    //                           color: Colors.black.withOpacity(
                    //                               0.5)), // Change color as needed
                    //                     ),
                    //                     hintStyle: TextStyle(
                    //                         fontSize: size.width * 0.03),
                    //                     hintText: cnicOfSeller,
                    //                     contentPadding: EdgeInsets.only(
                    //                         bottom: size.height * 0.018,
                    //                         left: 5),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //         Row(
                    //           crossAxisAlignment: CrossAxisAlignment.end,
                    //           children: [
                    //             Text(
                    //               'Phone:',
                    //               style: TextStyle(
                    //                   fontWeight: FontWeight.bold,
                    //                   fontSize: size.width * 0.03),
                    //             ),
                    //             Expanded(
                    //               child: SizedBox(
                    //                 height: size.height * 0.04,
                    //                 child: TextField(
                    //                   textAlignVertical:
                    //                       TextAlignVertical.center,
                    //                   readOnly: true,
                    //                   decoration: InputDecoration(
                    //                     focusedBorder: UnderlineInputBorder(
                    //                       borderSide: BorderSide(
                    //                           color: Colors.black.withOpacity(
                    //                               0.5)), // Change color as needed
                    //                     ),
                    //                     hintStyle: TextStyle(
                    //                         fontSize: size.width * 0.03),
                    //                     hintText: phoneOfSeller,
                    //                     contentPadding: EdgeInsets.only(
                    //                         bottom: size.height * 0.018,
                    //                         left: 5),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),


                    DottedBorder(
                      padding: EdgeInsets.all(size.width * 0.015),
                      child: SizedBox(
                        height: size.height * 0.18,
                        width: size.width * 0.42,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Baseline(
                                  baseline: size.width * 0.04,
                                  baselineType: TextBaseline.alphabetic,
                                  child: Text(
                                    'Name:',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: size.width * 0.03),
                                  ),
                                ),
                                Expanded(
                                  child: Baseline(
                                    baseline: size.width * 0.04,baselineType: TextBaseline.alphabetic,
                                    child: Container(
                                      // decoration: BoxDecoration(
                                      //   border: Border.all(),
                                      // ),
                                      height: size.height * 0.05,
                                      child: TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintStyle: TextStyle(
                                              fontSize: size.width * 0.026,fontWeight: FontWeight.bold),
                                          hintText: 'Name of Buyer',
                                          contentPadding: EdgeInsets.only(
                                            // bottom: size.height * 0.002,

                                              left: 5),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),


                              ],
                            ),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Baseline(
                                  baseline: size.width * 0.04,
                                  baselineType: TextBaseline.alphabetic,
                                  child: Text(
                                    'CNIC:',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: size.width * 0.03),
                                  ),
                                ),
                                Expanded(
                                  child: Baseline(
                                    baseline: size.width * 0.04,baselineType: TextBaseline.alphabetic,
                                    child: Container(
                                      // decoration: BoxDecoration(
                                      //   border: Border.all(),
                                      // ),
                                      height: size.height * 0.05,
                                      child: TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintStyle: TextStyle(
                                              fontSize: size.width * 0.026,fontWeight: FontWeight.bold),
                                          hintText: '35202-3671318-5',
                                          contentPadding: EdgeInsets.only(
                                            // bottom: size.height * 0.002,

                                              left: 5),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),


                              ],
                            ),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Baseline(
                                  baseline: 15.0,
                                  baselineType: TextBaseline.alphabetic,
                                  child: Text(
                                    'Phone:',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: size.width * 0.03),
                                  ),
                                ),
                                Expanded(
                                  child: Baseline(
                                    baseline: 15.0,baselineType: TextBaseline.alphabetic,
                                    child: Container(
                                      // decoration: BoxDecoration(
                                      //   border: Border.all(),
                                      // ),
                                      height: size.height * 0.05,
                                      child: TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintStyle: TextStyle(
                                              fontSize: size.width * 0.026,fontWeight: FontWeight.bold),
                                          hintText: '03054877242',
                                          contentPadding: EdgeInsets.only(
                                            // bottom: size.height * 0.002,

                                              left: 5),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),


                              ],
                            ),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Baseline(
                                  baseline:size.width * 0.04,
                                  baselineType: TextBaseline.alphabetic,
                                  child: Text(
                                    'Address:',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: size.width * 0.03),
                                  ),
                                ),
                                Expanded(
                                  child: Baseline(
                                    baseline:size.width * 0.04,baselineType: TextBaseline.alphabetic,
                                    child: Container(
                                      // decoration: BoxDecoration(
                                      //   border: Border.all(),
                                      // ),
                                      height: size.height * 0.1,
                                      child: TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintStyle: TextStyle(
                                              fontSize: size.width * 0.025,fontWeight: FontWeight.bold),
                                          hintText: 'House 07 street 01 staff colony central jail kot lakhpat lahore',
                                          hintMaxLines:6,
                                          contentPadding: EdgeInsets.only(
                                            // bottom: size.height * 0.002,

                                              left: 5),
                                        ),
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
                reUsableSizedBox('Rent/Security :', rent, size),

                reUsableSizedBox('Commission amount :', commission, size),

                reUsableSizedBox('Total Payment :', 'payment here', size),
                SizedBox(height: size.height*0.01,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Baseline(
                      baseline: size.width * 0.04,
                      baselineType: TextBaseline.alphabetic,
                      child: Text(
                        'Building Location',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.width * 0.03),
                      ),
                    ),
                    Expanded(
                      child: Baseline(
                        baseline: size.width * 0.04,baselineType: TextBaseline.alphabetic,
                        child: Container(
                          // decoration: BoxDecoration(
                          //   border: Border.all(),
                          // ),
                          height: size.height * 0.06,
                          child: TextField(
                            readOnly: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintMaxLines: 5,
                              hintStyle: TextStyle(
                                  fontSize: size.width * 0.023,fontWeight: FontWeight.bold),
                              hintText: locationOfProperty,
                              contentPadding: EdgeInsets.only(
                                // bottom: size.height * 0.002,

                                  left: 5),
                            ),
                          ),
                        ),
                      ),
                    ),


                  ],
                ),

                SizedBox(height: size.width * 0.08),

                //
                Text(
                  'Description of Property',
                  style: TextStyle(
                      fontSize: size.width * 0.04, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.1,
                  child: TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      hintMaxLines: 4,
                      border: InputBorder.none,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black
                                .withOpacity(0.5)), // Change color as needed
                      ),
                      hintText:
                          'description of the thing lets say description Description here a quick brown fox jumps over the lazy dog that is a sentence containing all alphabets of english which is we used to practice',
                      hintStyle: TextStyle(fontSize: size.width * 0.03),
                    ),
                  ),
                ),

                SizedBox(height: size.width * 0.02),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Dealer Signature :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.height * 0.02,
                      ),
                    ),
                    FutureBuilder<Uint8List>(
                      future: encodeImage(signatureImage!),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          // If the Future is complete, display the Image widget
                          return Image.memory(
                            snapshot.data!,
                            height: 70,
                            width: 70,
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
                        if (snapshot.connectionState == ConnectionState.done) {
                          // If the Future is complete, display the Image widget
                          return Image.memory(
                            snapshot.data!,
                            height: 70,
                            width: 70,
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
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            // show dialog
          },
          label: const Text('confirm')),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
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
                border: InputBorder.none,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.black
                          .withOpacity(0.5)), // Change color as needed
                ),
                hintStyle: TextStyle(fontSize: size.width * 0.03),
                hintText: hintText,
                contentPadding:
                    EdgeInsets.only(bottom: size.width * 0.035, left: 5),
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
