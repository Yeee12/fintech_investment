import 'package:fintech_investment/core/widgets/contact_tile.dart';
import 'package:flutter/material.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({super.key});

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {

  String name = "John Opomulero";
  String birthdate = "05 January 1990";
  String gender = "Male";
  String email = "JohnOpomuleros@namename.com";
  String phoneNumber = "12345678";
  String address = "no12 Heaven\n' street";

  // To show dialog and edit field value
  void _editField(BuildContext context, String title, String currentValue, Function(String) onSave) {
    TextEditingController controller = TextEditingController(text: currentValue);

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Edit $title"),
            content: TextField(
              controller: controller,
              decoration: InputDecoration(
                  hintText: "Enter new $title"
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Cancel")
              ),
              TextButton(
                  onPressed: () {
                    onSave(controller.text);
                    Navigator.of(context).pop();
                  },
                  child: Text("Save")
              ),
            ],
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact Info",
          style: TextStyle(
            fontFamily: "DMSans",
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("assets/images/Ellipse 741.png"),
              ),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ContactTile(
                  title: "Name",
                  value: name,
                  onEdit: () {
                    _editField(context, "Name", name, (newValue) {
                      setState(() {
                        name = newValue;
                      });
                    });
                  },
                ),
                Divider(),
                ContactTile(
                  title: "Birthdate",
                  value: birthdate,
                  onEdit: () {
                    _editField(context, "Birthdate", birthdate, (newValue) {
                      setState(() {
                        birthdate = newValue;
                      });
                    });
                  },
                ),
                Divider(),
                ContactTile(
                  title: "Gender",
                  value: gender,
                  onEdit: () {
                    _editField(context, "Gender", gender, (newValue) {
                      setState(() {
                        gender = newValue;
                      });
                    });
                  },
                ),
                Divider(),
                ContactTile(
                  title: "Email",
                  value: email,
                  onEdit: () {
                    _editField(context, "Email", email, (newValue) {
                      setState(() {
                        email = newValue;
                      });
                    });
                  },
                ),
                Divider(),
                ContactTile(
                  title: "Phone Number",
                  value: phoneNumber,
                  onEdit: () {
                    _editField(context, "Phone Number", phoneNumber, (newValue) {
                      setState(() {
                        phoneNumber = newValue;
                      });
                    });
                  },
                ),
                Divider(),
                ContactTile(
                  title: "Address",
                  value: address,
                  onEdit: () {
                    _editField(context, "Address", address, (newValue) {
                      setState(() {
                        address = newValue;
                      });
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
