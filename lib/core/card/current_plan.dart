import 'package:flutter/material.dart';

class CurrentPlan extends StatelessWidget {
  final String title;
  final String percentage;
  final Color color;
  final String imagePath; // Changed from Image to String

  const CurrentPlan({
    Key? key,
    required this.title,
    required this.color,
    required this.imagePath, // Changed from Image to String
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      width: 500,
      height: 150, // Set a height for the card
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight, // Align the image to bottom-left
            child: Image.asset(imagePath, width: 70, height: 70), // Load the image
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xff0B2517),
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                percentage,
                style: const TextStyle(
                  color: Color(0xff0B2517),
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
