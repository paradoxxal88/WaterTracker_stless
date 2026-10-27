import 'package:flutter/material.dart';
import 'package:stay_hydrated/buttons.dart';
import 'package:stay_hydrated/card_goal.dart';


class WaterTracker extends StatelessWidget {
  const WaterTracker({super.key});

  @override
  Widget build(BuildContext context) {
    final double marginHorizontal = MediaQuery.sizeOf(context).width * 0.3;
    final double marginVertical = MediaQuery.sizeOf(context).height * 0.06;

    return Scaffold(
      backgroundColor: Color(0xFFF0F3F7),
      appBar: AppBar(
        backgroundColor: Color(0xFF3B5FC8),
        centerTitle: true,
        title: Text(
          "Water Tracker",
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: marginHorizontal,
            vertical: marginVertical,
          ),

          child: Column(
            children: [
              Icon(Icons.water_drop, size: 100, color: Colors.blue),
              SizedBox(height: 16),
              Text(
                "Stay Hydrated!",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              SizedBox(height: 6),
              Text(
                "Build a healthy daily habit",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 24),
              GoalCard(glasses: 8),
              SizedBox(height: 16),
              Buttons(text: "Drink water regularly"),
              SizedBox(height: 12),
              Buttons(text: "Bring your water bottle"),
              SizedBox(height: 20),
              Text(
                "Every glass counts!",
                style: TextStyle(fontSize: 14, color: Color(0xFF4B5563)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
