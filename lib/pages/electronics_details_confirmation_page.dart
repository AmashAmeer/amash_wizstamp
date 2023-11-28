import 'dart:typed_data';
import 'dart:ui' as ui;
import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ElectronicsConfirmationPage extends StatelessWidget {
  final String phoneNumberSeller;
  final String cnicSeller;
  final String deviceName;
  final String modelOfDevice;
  final String priceOfDevice;
  final String guaranteeOfDevice;
  final String nameOfShopSeller;
  final String addressOfShopSeller;
  final String conditionOfDevice;
  final String nameSeller;
  final String currentDate;
  final ui.Image? signatureImage;

  ElectronicsConfirmationPage({
    required this.nameSeller,
    required this.phoneNumberSeller,
    required this.cnicSeller,
    required this.deviceName,
    required this.modelOfDevice,
    required this.priceOfDevice,
    required this.guaranteeOfDevice,
    required this.addressOfShopSeller,
    required this.conditionOfDevice,
    required this.nameOfShopSeller,
    required this.currentDate,
    required this.signatureImage,
  });

  // ui.Image? signatureImage;
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Electronic Accessories Document',
                  style: TextStyle(
                      fontSize: size.width * 0.05, fontWeight: FontWeight.bold),
                ),
                //
                //
                //date and receipt row////////

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
                                    baseline: size.width * 0.04,
                                    baselineType: TextBaseline.alphabetic,
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
                                              fontSize: size.width * 0.026,
                                              fontWeight: FontWeight.bold),
                                          hintText: nameSeller,
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
                                    baseline: size.width * 0.04,
                                    baselineType: TextBaseline.alphabetic,
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
                                              fontSize: size.width * 0.026,
                                              fontWeight: FontWeight.bold),
                                          hintText: cnicSeller,
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
                                    baseline: 15.0,
                                    baselineType: TextBaseline.alphabetic,
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
                                              fontSize: size.width * 0.026,
                                              fontWeight: FontWeight.bold),
                                          hintText: phoneNumberSeller,
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
                                  baseline: size.width * 0.04,
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
                                    baseline: size.width * 0.04,
                                    baselineType: TextBaseline.alphabetic,
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
                                              fontSize: size.width * 0.025,
                                              fontWeight: FontWeight.bold),
                                          hintText: addressOfShopSeller,
                                          hintMaxLines: 6,
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

                    DottedBorder(
                      padding: EdgeInsets.all(size.width * 0.015),
                      child: SizedBox(
                        height: size.height * 0.28,
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
                                    baseline: size.width * 0.04,
                                    baselineType: TextBaseline.alphabetic,
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
                                              fontSize: size.width * 0.026,
                                              fontWeight: FontWeight.bold),
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
                                    baseline: size.width * 0.04,
                                    baselineType: TextBaseline.alphabetic,
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
                                              fontSize: size.width * 0.026,
                                              fontWeight: FontWeight.bold),
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
                                    baseline: 15.0,
                                    baselineType: TextBaseline.alphabetic,
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
                                              fontSize: size.width * 0.026,
                                              fontWeight: FontWeight.bold),
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
                                  baseline: size.width * 0.04,
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
                                    baseline: size.width * 0.04,
                                    baselineType: TextBaseline.alphabetic,
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
                                              fontSize: size.width * 0.025,
                                              fontWeight: FontWeight.bold),
                                          hintText:
                                              'House 07 street 01 staff colony central jail kot lakhpat lahore',
                                          hintMaxLines: 6,
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

                    // DottedBorder(
                    //   padding: EdgeInsets.all(size.width * 0.015),
                    //   child: SizedBox(
                    //     height: size.height * 0.28,
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
                    //                   hintText: addressOfShop,
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
                    //                 height: size.height * 0.06,
                    //                 child: TextField(
                    //                   textAlignVertical:
                    //                   TextAlignVertical.center,
                    //                   readOnly: true,
                    //                   decoration: InputDecoration(
                    //                     focusedBorder: UnderlineInputBorder(
                    //                       borderSide: BorderSide(
                    //                           color: Colors.black.withOpacity(
                    //                               0.5)), // Change color as needed
                    //                     ),
                    //                     hintStyle: TextStyle(
                    //                         fontSize: size.width * 0.03),
                    //                     hintText: name,
                    //                     contentPadding: EdgeInsets.only(
                    //                         bottom: size.height * 0.002,
                    //
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
                    //                 height: size.height * 0.06,
                    //                 child: TextField(
                    //                   textAlignVertical:
                    //                   TextAlignVertical.center,
                    //                   readOnly: true,
                    //                   decoration: InputDecoration(
                    //                     focusedBorder: UnderlineInputBorder(
                    //                       borderSide: BorderSide(
                    //                           color: Colors.black.withOpacity(
                    //                               0.5)), // Change color as needed
                    //                     ),
                    //                     hintStyle: TextStyle(
                    //                         fontSize: size.width * 0.03),
                    //                     hintText: cnic,
                    //                     contentPadding: EdgeInsets.only(
                    //                         bottom: size.height * 0.002,
                    //
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
                    //                 height: size.height * 0.06,
                    //                 child: TextField(
                    //
                    //                   textAlignVertical:
                    //                   TextAlignVertical.center,
                    //                   readOnly: true,
                    //                   decoration: InputDecoration(
                    //                     focusedBorder: UnderlineInputBorder(
                    //                       borderSide: BorderSide(
                    //                           color: Colors.black.withOpacity(
                    //                               0.5)), // Change color as needed
                    //                     ),
                    //                     hintStyle: TextStyle(
                    //                         fontSize: size.width * 0.03),
                    //                     hintText: phoneNumber,
                    //                     contentPadding: EdgeInsets.only(
                    //                         bottom: size.height * 0.002,
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
                    // DottedBorder(
                    //   padding: EdgeInsets.all(size.width * 0.015),
                    //   child: SizedBox(
                    //     height: size.height * 0.28,
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
                    //                   hintText: 'addressOfBuyer',
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
                    //                 height: size.height * 0.06,
                    //                 child: TextField(
                    //                   textAlignVertical:
                    //                   TextAlignVertical.center,
                    //                   readOnly: true,
                    //                   decoration: InputDecoration(
                    //                     focusedBorder: UnderlineInputBorder(
                    //                       borderSide: BorderSide(
                    //                           color: Colors.black.withOpacity(
                    //                               0.5)), // Change color as needed
                    //                     ),
                    //                     hintStyle: TextStyle(
                    //                         fontSize: size.width * 0.03),
                    //                     hintText: 'nameOfBuyer',
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
                    //                 height: size.height * 0.06,
                    //                 child: TextField(
                    //                   textAlignVertical:
                    //                   TextAlignVertical.center,
                    //                   readOnly: true,
                    //                   decoration: InputDecoration(
                    //                     focusedBorder: UnderlineInputBorder(
                    //                       borderSide: BorderSide(
                    //                           color: Colors.black.withOpacity(
                    //                               0.5)), // Change color as needed
                    //                     ),
                    //                     hintStyle: TextStyle(
                    //                         fontSize: size.width * 0.03),
                    //                     hintText: 'cnic',
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
                    //                 height: size.height * 0.06,
                    //                 child: TextField(
                    //                   textAlignVertical:
                    //                   TextAlignVertical.center,
                    //                   readOnly: true,
                    //                   decoration: InputDecoration(
                    //                     focusedBorder: UnderlineInputBorder(
                    //                       borderSide: BorderSide(
                    //                           color: Colors.black.withOpacity(
                    //                               0.5)), // Change color as needed
                    //                     ),
                    //                     hintStyle: TextStyle(
                    //                         fontSize: size.width * 0.03),
                    //                     hintText: 'phone',
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

                reUsableSizedBox('Guarantee :', guaranteeOfDevice, size),
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
                //
                // SizedBox(
                //   height: size.width * 0.02,
                // ),
                // DottedBorder(
                //   child: Column(
                //     children: [
                //       reUsableContainer(
                //           'Total amount to be', 'amount here', size),
                //       reUsableContainer('Amount received', 'amount here', size),
                //       reUsableContainer('Balance Due', 'Amount here', size),
                //
                //       SizedBox(height: size.width * 0.03),
                //       //
                //       ///
                //       ///
                //       ///
                //       ///
                //       ///
                //       ///
                //       ///
                //       //
                //
                //       Row(
                //         children: [
                //           SizedBox(
                //             height: size.width * 0.05,
                //             width: size.width * 0.5,
                //             child: reusableTextField(
                //                 'Received by :', 'name here ', size),
                //           ),
                //           SizedBox(
                //             width: size.width * 0.02,
                //           ),
                //           SizedBox(
                //             child: Text(
                //               '[ ]Cash',
                //               style: TextStyle(
                //                   fontWeight: FontWeight.bold,
                //                   fontSize: size.width * 0.03),
                //             ),
                //           ),
                //         ],
                //       ),
                //       SizedBox(
                //         height: size.width * 0.02,
                //       ),
                //
                //       Row(
                //         children: [
                //           SizedBox(
                //             height: size.width * 0.06,
                //             width: size.width * 0.6,
                //             child: Row(
                //               crossAxisAlignment: CrossAxisAlignment.end,
                //               // textBaseline: TextBaseline.alphabetic,
                //               children: [
                //                 Text(
                //                   'Address :',
                //                   style: TextStyle(
                //                       fontWeight: FontWeight.bold,
                //                       fontSize: size.width * 0.023),
                //                 ),
                //                 Expanded(
                //                   child: TextField(
                //                     // textAlignVertical: TextAlignVertical.center,
                //                     readOnly: true,
                //                     decoration: InputDecoration(
                //                       focusedBorder: UnderlineInputBorder(
                //                         borderSide: BorderSide(
                //                             color: Colors.black.withOpacity(
                //                                 0.5)), // Change color as needed
                //                       ),
                //                       hintStyle: TextStyle(
                //                           fontSize: size.width * 0.02),
                //                       hintText:
                //                       'House 07 street 01 staff colony central jail kot lakhpat lahore house 0333 hsods  dsh dfd ',
                //                       hintMaxLines: 4,
                //                       contentPadding: EdgeInsets.only(
                //                           bottom: size.width * 0.06, left: 5),
                //                     ),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //           SizedBox(
                //             width: size.width * 0.001,
                //           ),
                //           SizedBox(
                //             child: Text(
                //               '[ ]Cheque No',
                //               style: TextStyle(
                //                   fontWeight: FontWeight.bold,
                //                   fontSize: size.width * 0.02),
                //             ),
                //           ),
                //           Expanded(
                //               child: SizedBox(
                //                   height: size.width * 0.05,
                //                   width: size.width * 0.5,
                //                   child: TextField(
                //                     readOnly: true,
                //                     decoration: InputDecoration(
                //                       focusedBorder: UnderlineInputBorder(
                //                         borderSide: BorderSide(
                //                             color: Colors.black.withOpacity(
                //                                 0.5)), // Change color as needed
                //                       ),
                //                       hintText: '9876543210123',
                //                       contentPadding: EdgeInsets.only(
                //                           bottom: size.width * 0.04, left: 5),
                //                       hintStyle: TextStyle(
                //                           fontSize: size.width * 0.018),
                //                     ),
                //                   ))),
                //         ],
                //       ),
                //       SizedBox(
                //         height: size.width * 0.02,
                //       ),
                //
                //       Row(
                //         children: [
                //           SizedBox(
                //             height: size.width * 0.05,
                //             width: size.width * 0.5,
                //             child: reusableTextField(
                //                 'Phone :', '023038923903', size),
                //           ),
                //           SizedBox(
                //             child: Text(
                //               '[ ] Money Order',
                //               style: TextStyle(
                //                   fontWeight: FontWeight.bold,
                //                   fontSize: size.width * 0.02),
                //             ),
                //           ),
                //         ],
                //       ),
                //       SizedBox(
                //         height: size.width * 0.02,
                //       ),
                //     ],
                //   ),
                // ),

                // SizedBox(height: size.width * 0.02),
                //
                ///
                ///
                ///
                /// last part
                ///
                ///
                //

                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(border: Border.all(width: 0.5)),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  'Device Condition ',
                  style: TextStyle(
                      fontSize: size.width * 0.04, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.1,
                  child: TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintMaxLines: 2,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black
                                .withOpacity(0.5)), // Change color as needed
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
                        fontSize: size.height * 0.016,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    FutureBuilder<Uint8List>(
                      future: encodeImage(signatureImage!),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
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
                        fontSize: size.height * 0.016,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    FutureBuilder<Uint8List>(
                      future: encodeImage(signatureImage!),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
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
      floatingActionButton: FloatingActionButton.extended(
          icon: const Icon(Icons.check),
          onPressed: () {
            // show dialog
          },
          label: const Text('confirm')),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
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
                contentPadding: EdgeInsets.only(
                    bottom: size.width * 0.04, left: size.width * 0.3),
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
