import 'package:flutter/material.dart';

import '../utils/theme.dart';

class Create2 extends StatelessWidget {
  const Create2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.primaryColor.shade50,
      body: const Center(child: Text('car')),
    );
  }
}
