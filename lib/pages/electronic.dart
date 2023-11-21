import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';
import '../utils/theme.dart';

class Electronic extends StatefulWidget {
  const Electronic({super.key});

  @override
  State<Electronic> createState() => _ElectronicState();
}

class _ElectronicState extends State<Electronic> {
  String signature1 = '';

  String signature2 = '';
  GlobalKey<SfSignaturePadState> _signaturePadKey = GlobalKey();
  GlobalKey<SfSignaturePadState> _signaturePadKey1 = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.primaryColor.shade50,
      appBar: AppBar(
        title: const Text(
          'Electronic Accessries Docs',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                  height: MediaQuery.of(context).size.height * 275 / 100,
                  child: Column(
                    children: [
                      //
                      //
                      //
                      //
                      //  Seller Information Start
                      //
                      //
                      //
                      //
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Center(
                          child: Text(
                            "Seller information",
                            style: TextStyle(
                                fontSize: 22,
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
                          decoration: InputDecoration(
                              hintText: 'Seller Name',
                              label: const Text(
                                'Seller Name',
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
                          decoration: InputDecoration(
                              hintText: "Fill Device name",
                              label: const Text(
                                'Device Name',
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
                          decoration: InputDecoration(
                              hintText: "Device Model",
                              label: const Text(
                                "Device Model",
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
                          decoration: InputDecoration(
                              hintText: 'Final Price',
                              label: const Text(
                                'Final Price',
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
                          decoration: InputDecoration(
                              hintText: 'Fill Guarantee Duration',
                              label: const Text(
                                'Guarantee Duration',
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
                          decoration: InputDecoration(
                              hintText: 'Shope Name',
                              label: const Text(
                                'Shope Name',
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
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Shope Address',
                              label: const Text(
                                'Shope Address',
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
                          decoration: InputDecoration(
                              hintText: 'Describe Current Condition Of Device ',
                              label: const Text(
                                'Describe Condition',
                                style: TextStyle(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                          minLines: 3,
                          maxLines: 6,
                        ),
                      ),
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
                                  borderRadius: BorderRadius.circular(20)),
                              height: 180,
                              width: 230,
                              child: SfSignaturePad(
                                minimumStrokeWidth: 1,
                                maximumStrokeWidth: 3,
                                strokeColor: Colors.blue,
                                key: _signaturePadKey,
                                backgroundColor: Colors.grey[200],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, left: 0),
                              child: Row(
                                children: [
                                  ElevatedButton(
                                      child:
                                          const Text('Save Signature As Image'),
                                      onPressed: () async {
                                        ui.Image image = await _signaturePadKey
                                            .currentState!
                                            .toImage();
                                      }),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: ElevatedButton(
                                        child: const Text("Clear"),
                                        onPressed: () async {
                                          _signaturePadKey.currentState!
                                              .clear();
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
                      //     Buyer Information .....start....
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
                          child: Text(
                            "Buyer Information",
                            style: TextStyle(
                                fontSize: 22,
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
                          decoration: InputDecoration(
                              hintText: 'Full Name',
                              label: const Text(
                                'Full Name',
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
                          decoration: InputDecoration(
                              hintText: 'Phone Number',
                              label: const Text(
                                'Phone Number ',
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
                            Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              height: 180,
                              width: 230,
                              child: SfSignaturePad(
                                minimumStrokeWidth: 1,
                                maximumStrokeWidth: 3,
                                strokeColor: Colors.blue,
                                key: _signaturePadKey1,
                                backgroundColor: Colors.grey[200],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, left: 0),
                              child: Row(
                                children: [
                                  ElevatedButton(
                                      child:
                                          const Text('Save Signature As Image'),
                                      onPressed: () async {
                                        ui.Image image = await _signaturePadKey
                                            .currentState!
                                            .toImage();
                                      }),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: ElevatedButton(
                                        child: const Text("Clear"),
                                        onPressed: () async {
                                          _signaturePadKey1.currentState!
                                              .clear();
                                        }),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
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
        onPressed: () {},
        label: const Icon(
          Icons.remove_red_eye_outlined,
          color: Colors.white,
        ),
        icon: const Text('Preview'),
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
