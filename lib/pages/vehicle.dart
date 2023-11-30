import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';
import 'package:wizstamp/pages/vehicle_details_confirmation_page.dart';
import '../../utils/theme.dart';

class Carsell extends StatefulWidget {
  const Carsell({super.key});

  @override
  State<Carsell> createState() => _CarsellState();
}

class _CarsellState extends State<Carsell> {
  String signature1 = '';
  ui.Image? signatureImage;
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController cnicController = TextEditingController();
  TextEditingController officeController = TextEditingController();
  TextEditingController commissionController = TextEditingController();
  TextEditingController vehiclePriceController = TextEditingController();
  TextEditingController vehicleNameController = TextEditingController();
  TextEditingController vehicleModelController = TextEditingController();
  TextEditingController vehicleRegistrationController = TextEditingController();
  TextEditingController vehicleChassiNoController = TextEditingController();
  TextEditingController vehicleEngineNoController = TextEditingController();
  TextEditingController vehicleHorsePowerController = TextEditingController();
  TextEditingController vehicleConditionController = TextEditingController();
  TextEditingController addressConditionController = TextEditingController();
  TextEditingController companycontroller = TextEditingController();
  // String signature2 = '';
  GlobalKey<SfSignaturePadState> _signaturePadKey = GlobalKey();
  // GlobalKey<SfSignaturePadState> _signaturePadKey1 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.primaryColor.shade50,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text(
          'Vehicle  Documents',
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
                  // height: MediaQuery.of(context).size.height * 320 / 100,
                  child: Column(
                    children: [
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
                      //
                      //
                      //
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          controller: addressConditionController,
                          decoration: InputDecoration(
                              hintText: 'Address',
                              label: const Text(
                                'Address',
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
                          controller: commissionController,
                          decoration: InputDecoration(
                              hintText: 'Comission Amount of Dealer',
                              label: const Text(
                                'Comission Amount',
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
                          controller: vehiclePriceController,
                          decoration: InputDecoration(
                              hintText: 'Fill the final price of vehicle',
                              label: const Text(
                                'Final Price Of Vehicle',
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
                          controller: vehicleNameController,
                          decoration: InputDecoration(
                              hintText: 'Vehicle Name',
                              label: const Text(
                                'Vehicle Name',
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
                          controller: vehicleModelController,
                          decoration: InputDecoration(
                              hintText: 'Model',
                              label: const Text(
                                'Model',
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
                          controller: vehicleRegistrationController,
                          decoration: InputDecoration(
                              hintText: 'Registration Number',
                              label: const Text(
                                'Registration Number',
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
                          controller: vehicleChassiNoController,
                          decoration: InputDecoration(
                              hintText: 'Chassis No',
                              label: const Text(
                                'Chassis No',
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
                          controller: vehicleEngineNoController,
                          decoration: InputDecoration(
                              hintText: 'Engine No',
                              label: const Text(
                                'Engine No',
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
                          controller: vehicleHorsePowerController,
                          decoration: InputDecoration(
                              hintText: 'Horse Power',
                              label: const Text(
                                'Horse Power',
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
                          controller: companycontroller,
                          decoration: InputDecoration(
                              hintText: 'Manufacturer Company',
                              label: const Text(
                                'Manufacturer Company',
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
                          controller: vehicleConditionController,
                          decoration: InputDecoration(
                              hintText: 'Describe vehicle Condition',
                              label: const Text(
                                'Describe Vehicle Condition',
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
                                strokeColor: Colors.red,
                                key: _signaturePadKey,
                                backgroundColor: Colors.grey[200],
                                onDrawEnd: () async {
                                  // isDrawEnd = true;
                                  ui.Image image = await _signaturePadKey
                                      .currentState!
                                      .toImage();
                                  signatureImage = image;
                                  print('is draw end executed');
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, left: 0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: TextButton(
                                        child: const Text("Clear",
                                            style:
                                                TextStyle(color: Colors.red)),
                                        onPressed: () async {
                                          _signaturePadKey.currentState!
                                              .clear();
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
                      //
                      //
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
                                    borderSide:
                                        BorderSide(color: Colors.black))),
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
                            keyboardType: TextInputType.number,
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
                                    borderSide:
                                        BorderSide(color: Colors.black))),
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
                            keyboardType: TextInputType.number,
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
                                    borderSide:
                                        BorderSide(color: Colors.black))),
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
                                    borderSide:
                                        BorderSide(color: Colors.black))),
                          ),
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
                            Opacity(
                              opacity: 0.3,
                              child: Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    color: Colors.black.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(20)),
                                height: 180,
                                width: 230,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, left: 0),
                              child: Opacity(
                                opacity: 0.3,
                                child: Row(
                                  children: [
                                    // TextButton(
                                    //     child: const Text('Save As Image'),
                                    //     onPressed: () async {
                                    //       ui.Image image =
                                    //           await _signaturePadKey
                                    //               .currentState!
                                    //               .toImage();
                                    //     }),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
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
                                  ],
                                ),
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
        onPressed: () {
          if (nameController.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Name is required')));
          } else if (phoneController.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Phone Number is required')));
          } else if (cnicController.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('CNIC is required')));
          } else if (officeController.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Office section is required')));
          } else if (vehiclePriceController.text.isEmpty) {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('Add Price')));
          } else if (vehicleNameController.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Vehicle Name is required')));
          } else if (vehicleModelController.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Vehicle Model is required')));
          } else if (vehicleRegistrationController.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Vehicle Registration is required')));
          } else if (vehicleChassiNoController.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Chassis is required')));
          } else if (vehicleEngineNoController.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Engine No is required')));
          } else if (vehicleHorsePowerController.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Horse Power is required')));
          } else if (vehicleConditionController.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Vehicle Condition is required')));
          } else if (signatureImage == null) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Signature is required')));
          } else {
            print('go to vehicle confirmation page ');
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => VehicleDetailsConfirmationPage(
                nameSeller: nameController.text.toString(),
                phoneNumberSeller: phoneController.text.toString(),
                cnicSeller: cnicController.text.toString(),
                officeAddressSeller: officeController.text.toString(),
                commissionAmount: commissionController.text.toString(),
                priceOfVehicle: vehiclePriceController.text.toString(),
                chassisNo: vehicleChassiNoController.text.toString(),
                conditionOfVehicle: vehicleConditionController.text.toString(),
                engineNo: vehicleEngineNoController.text.toString(),
                horsePower: vehicleHorsePowerController.text.toString(),
                modelOfVehicle: vehicleModelController.text.toString(),
                vehicleName: vehicleNameController.text.toString(),
                registrationNo: vehicleRegistrationController.text.toString(),
                officeNameSeller: officeController.text.toString(),
                signatureImage: signatureImage,
                company: companycontroller.text,
              ),
            ));
          }
        },
        label: const Icon(
          Icons.remove_red_eye_outlined,
          color: Colors.white,
        ),
        icon: const Text(
          'Preview',
          style: TextStyle(
            color: Colors.white,
          ),
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
