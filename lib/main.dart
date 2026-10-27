import 'package:flutter/material.dart';

import 'screens/mainscreen.dart';

void main() {
  runApp(const StayHydrated());
}

class StayHydrated extends StatelessWidget {
  const StayHydrated({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WaterTracker(),
    );
  }
}
