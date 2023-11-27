import 'package:flutter/material.dart';
import 'package:wizstamp/pages/real_estate_rent_result_document_page.dart';
import 'package:wizstamp/pages/real_estate_seller_document_result_page.dart';

class RentDocumentConfirmationPage extends StatelessWidget {
  final String name;

  RentDocumentConfirmationPage({
    required this.name,
    required this.phoneNumber,
    required this.cnic,
    required this.office,
    required this.commissionAmount,
    required this.monthlyRent,
    required this.propertyLocation,
  });

  final String phoneNumber;
  final String cnic;
  final String office;
  final String commissionAmount;
  final String monthlyRent;
  final String propertyLocation;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rent confirmation Document'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('your design'),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: const EdgeInsets.all(16),
                height: size.height * 0.7,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),


                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    reusableRow('Name', name),
                    reusableRow('Phone Number', phoneNumber),
                    reusableRow('CNIC', cnic),
                    reusableRow('Office', office),
                    reusableRow('Commission Amount', commissionAmount),
                    reusableRow('Monthly Rent', monthlyRent),
                    reusableRow('Location', propertyLocation),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: TextButton(
          child: const Text('Confirm', style: TextStyle(
            fontSize: 18,
          ),),
          onPressed: () {
            //// hit api

            //// save the document
            // Navigator.of(context).pushReplacement(MaterialPageRoute(
            //   builder: (context) =>
                  // RentDocumentResultPage(name: name,
                  //   phoneNumber: phoneNumber,
                  //   cnic: cnic,
                  //   office: office,
                  //   commissionAmount: commissionAmount,
                  //   monthlyRent: monthlyRent,
                  //   propertyLocation: propertyLocation,
                  //   ),));
          },
        ),
      ),
    );
  }
}


Widget reusableRow(String label, value, {String? fontFamily, double? size,}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Expanded(
        flex: 1,
        child: Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 16,
          ),
        ),
      ),
      Expanded(
        child: Text(
          value,
          // maxLines: 4,
          softWrap: true,
          style: TextStyle(
            fontFamily: fontFamily,
            fontSize: size,
          ),
          // overflow: TextOverflow.fade,
        ),
      ),
    ],
  );
}