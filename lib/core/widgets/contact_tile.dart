import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  final String title;
  final String value;
  final VoidCallback onEdit;

  const ContactTile({
    Key? key,
    required this.title,
    required this.value,
    required this.onEdit
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(title, style: TextStyle(
      fontWeight: FontWeight.bold,
      ),
      ),
      subtitle: Text(value),
      trailing: TextButton(onPressed: onEdit,
          child: Text("change")
      ),
    );
  }
}
