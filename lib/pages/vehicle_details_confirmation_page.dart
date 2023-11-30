import 'dart:typed_data';
import 'dart:ui' as ui;
import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class VehicleDetailsConfirmationPage extends StatelessWidget {
  final String phoneNumberSeller;
  final String cnicSeller;
  final String vehicleName;
  final String modelOfVehicle;
  final String registrationNo;
  final String priceOfVehicle;
  final String officeNameSeller;
  final String officeAddressSeller;
  final String commissionAmount;
  final String nameSeller;
  final String engineNo;
  final String horsePower;
  final String conditionOfVehicle;
  final String chassisNo;
  final String company;

  var signatureImage;
  // final ui.Image? signatureImage;

  VehicleDetailsConfirmationPage({
    required this.nameSeller,
    required this.phoneNumberSeller,
    required this.cnicSeller,
    required this.vehicleName,
    required this.modelOfVehicle,
    required this.registrationNo,
    required this.priceOfVehicle,
    required this.officeNameSeller,
    required this.engineNo,
    required this.signatureImage,
    required this.conditionOfVehicle,
    required this.chassisNo,
    required this.horsePower,
    this.commissionAmount = '0.0',
    required this.officeAddressSeller,
    required this.company,
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: size.width * 0.01,
            right: size.width * 0.015,
            bottom: size.width * 0.015),
        child: Container(
          padding: EdgeInsets.all(size.width * 0.01),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 2,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Vehicle Document',
                  style: TextStyle(
                      fontSize: size.width * 0.05, fontWeight: FontWeight.bold),
                ),

                /// landlord and tenant table
                ///
                //

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Seller/Dealer               ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Buyer       ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                //
                ///
                ///
                /// details
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
                                  baseline: size.width * 0.029,
                                  baselineType: TextBaseline.alphabetic,
                                  child: Text(
                                    'Name :',
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
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Baseline(
                                  baseline: size.width * 0.029,
                                  baselineType: TextBaseline.alphabetic,
                                  child: Text(
                                    'CNIC :',
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
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Baseline(
                                  baseline: size.width * 0.021,
                                  baselineType: TextBaseline.alphabetic,
                                  child: Text(
                                    'Phone :',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: size.width * 0.03),
                                  ),
                                ),
                                Expanded(
                                  child: Baseline(
                                    baseline: size.width * 0.029,
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
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Baseline(
                                  baseline: size.width * 0.039,
                                  baselineType: TextBaseline.alphabetic,
                                  child: Text(
                                    'Address :',
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
                                          hintText: officeAddressSeller,
                                          hintMaxLines: 6,
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
                                  baseline: size.width * 0.029,
                                  baselineType: TextBaseline.alphabetic,
                                  child: Text(
                                    'Name :',
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
                                          hintText: 'Muhammad Shafiiiiii',
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
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Baseline(
                                  baseline: size.width * 0.029,
                                  baselineType: TextBaseline.alphabetic,
                                  child: Text(
                                    'CNIC :',
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
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Baseline(
                                  baseline: size.width * 0.021,
                                  baselineType: TextBaseline.alphabetic,
                                  child: Text(
                                    'Phone :',
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
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Baseline(
                                  baseline: size.width * 0.039,
                                  baselineType: TextBaseline.alphabetic,
                                  child: Text(
                                    'Address :',
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
                  ],
                ),
                //
                ///
                /// mid part
                ///
                SizedBox(height: size.height * 0.01),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        // decoration: BoxDecoration(
                        //   border: Border.all(),
                        // ),
                        height: size.height * 0.1,
                        width: size.width * 0.45,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Baseline(
                                  baseline: size.width * 0.020,
                                  baselineType: TextBaseline.alphabetic,
                                  child: Text(
                                    'Vehicle Name :',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * 0.023),
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
                                          hintText: vehicleName,
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
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Baseline(
                                  baseline: size.width * 0.020,
                                  baselineType: TextBaseline.alphabetic,
                                  child: Text(
                                    'Vehicle Model :',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * 0.023),
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
                                          hintText: modelOfVehicle,
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
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Baseline(
                                  baseline: size.width * 0.020,
                                  baselineType: TextBaseline.alphabetic,
                                  child: Text(
                                    'Registration No :',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * 0.023),
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
                                          hintText: registrationNo,
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
                      SizedBox(
                        height: size.height * 0.1,
                        width: size.width * 0.48,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Baseline(
                                  baseline: size.width * 0.020,
                                  baselineType: TextBaseline.alphabetic,
                                  child: Text(
                                    'Horsepower :',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * 0.023),
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
                                          hintText: horsePower,
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
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Baseline(
                                  baseline: size.width * 0.020,
                                  baselineType: TextBaseline.alphabetic,
                                  child: Text(
                                    'Engine No :',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * 0.023),
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
                                          hintText: engineNo,
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
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Baseline(
                                  baseline: size.width * 0.020,
                                  baselineType: TextBaseline.alphabetic,
                                  child: Text(
                                    'Chassis No :',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * 0.023),
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
                                              fontSize: size.width * 0.022,
                                              fontWeight: FontWeight.bold),
                                          hintText: chassisNo,
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
                    ],
                  ),
                ),
                //
                ///
                ///
                ///2nd last part
                ///
                ///
                //
                SizedBox(
                  height: 30,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Baseline(
                          baseline: size.width * 0.039,
                          baselineType: TextBaseline.alphabetic,
                          child: Text(
                            'Manufacturer Company :',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: size.width * 0.023),
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
                                  hintText: company,
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
                  ),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Baseline(
                      baseline: size.width * 0.023,
                      baselineType: TextBaseline.alphabetic,
                      child: Text(
                        'Commission Amount :',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.width * 0.025),
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
                              // border: InputBorder.none,
                              hintStyle: TextStyle(
                                  fontSize: size.width * 0.026,
                                  fontWeight: FontWeight.bold),
                              hintText: commissionAmount,
                              contentPadding: EdgeInsets.only(
                                  // bottom: size.height * 0.002,

                                  left: size.width * 0.25),
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
                      baseline: size.width * 0.023,
                      baselineType: TextBaseline.alphabetic,
                      child: Text(
                        'Final Price of Vehicle:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.width * 0.025),
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
                              // border: InputBorder.none,
                              hintStyle: TextStyle(
                                  fontSize: size.width * 0.026,
                                  fontWeight: FontWeight.bold),
                              hintText: priceOfVehicle,
                              contentPadding: EdgeInsets.only(
                                  // bottom: size.height * 0.002,

                                  left: size.width * 0.25),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: size.width * 0.05),

                ///

                //
                ///
                ///

                /// last part
                ///
                ///
                //
                Text(
                  'Vehicle Condition ',
                  style: TextStyle(
                      fontSize: size.width * 0.04, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.11,
                  child: TextField(
                    minLines: 2,
                    maxLines: 5,
                    readOnly: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: conditionOfVehicle,
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
                        fontSize: size.height * 0.015,
                      ),
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
                SizedBox(height: size.width * 0.03),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Buyer Signature :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.height * 0.015,
                      ),
                    ),
                    // FutureBuilder<Uint8List>(
                    //   future: encodeImage(signatureImage!),
                    //   builder: (context, snapshot) {
                    //     if (snapshot.connectionState == ConnectionState.done) {
                    //       // If the Future is complete, display the Image widget
                    //       return Image.memory(
                    //         snapshot.data!,
                    //         height: 60,
                    //         width: 60,
                    //       );
                    //     } else {
                    //       // Display a placeholder or loading indicator while the Future is in progress
                    //       return const CircularProgressIndicator();
                    //     }
                    //   },
                    // ),
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
            // show popup dialog
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
