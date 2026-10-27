import 'package:flutter/material.dart';
import 'package:stay_hydrated/widgets/goal_card.dart';
import 'package:stay_hydrated/widgets/water_button.dart';

class WaterTracker extends StatelessWidget {
  const WaterTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F3F7),
      appBar: AppBar(
        backgroundColor: const Color(0xFF3B5FC8),
        centerTitle: true,
        title: const Text(
          "Water Tracker",
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.water_drop, size: 90, color: Colors.blue),
              const SizedBox(height: 16),
              const Text(
                "Stay Hydrated!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                "Build a healthy daily habit",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF6B7280),
                ),
              ),
              const SizedBox(height: 24),
              const GoalCard(glasses: 8),
              const SizedBox(height: 16),
              const WaterButton(text: "Drink water regularly"),
              const SizedBox(height: 12),
              const WaterButton(text: "Bring your water bottle"),
              const SizedBox(height: 20),
              const Text(
                "Every glass counts!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Color(0xFF4B5563)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
