import 'package:flutter/material.dart';

class BasicButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback? onPressed;

  const BasicButton({
    Key? key,
    required this.title,
    required this.color,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff31A062), // Button background color
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Rounded corners
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 17,
            color: Colors.white, // Text color
            fontFamily: "Poppins"
          ),
        ),
      ),
    );
  }
}
