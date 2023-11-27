import 'package:flutter/material.dart';

import '../../utils/theme.dart';

class Brand extends StatelessWidget {
  const Brand({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.primaryColor.shade50,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text(
          'Branding',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 94, 2, 254),
      ),
    );
  }
}
