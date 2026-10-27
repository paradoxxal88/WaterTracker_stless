import 'package:flutter/material.dart';

class GoalCard extends StatelessWidget {
  final int glasses;

  const GoalCard({super.key, required this.glasses});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Daily Water Goal",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF4B5563),
            ),
          ),
          Text(
            "$glasses",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 96,
              fontWeight: FontWeight.w900,
              height: 1.1,
              color: Color(0xFF2545B5),
            ),
          ),
          const Text(
            "glasses per day",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF4B5563),
            ),
          ),
        ],
      ),
    );
  }
}