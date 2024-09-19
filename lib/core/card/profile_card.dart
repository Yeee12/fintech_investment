import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const ProfileCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 32),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white, // Background color of the card
            borderRadius: BorderRadius.circular(8), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3), // Shadow color
                spreadRadius: 2, // Shadow spread
                blurRadius: 5, // Shadow blur effect
                offset: Offset(0, 3), // Position of the shadow
              ),
            ],
          ),
          child: ListTile(
            leading: Icon(icon, color: Colors.black),
            title: Text(
              title,
              style: const TextStyle(
                fontSize: 17,
                fontFamily: "Poppins",
              ),
            ),
            trailing: const Icon(Icons.chevron_right, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
