import 'package:fintech_investment/core/widgets/basic_button.dart';
import 'package:flutter/material.dart';

class BankAccountInfo extends StatefulWidget {
  const BankAccountInfo({super.key});

  @override
  State<BankAccountInfo> createState() => _BankAccountInfoState();
}

class _BankAccountInfoState extends State<BankAccountInfo> {
  // List to store bank account info
  List<Map<String, String>> bankAccounts = [
    {"bank": "Bank of Abroad", "account": "0123468xxx", "owner": "Jonas Macaroni"},
    {"bank": "Zenith Bank", "account": "0123468xxx", "owner": "Jonas Opomulero"}
  ];

  // Method to add a new bank account
  void addAccount() {
    setState(() {
      bankAccounts.add({
        "bank": "New Bank",
        "account": "12785959xxx",
        "owner": "New Owner",
      });
    });
  }

  // Method to edit a specific bank account
  void editAccount(int index) {
    TextEditingController bankController = TextEditingController(text: bankAccounts[index]['bank']);
    TextEditingController accountController = TextEditingController(text: bankAccounts[index]['account']);
    TextEditingController ownerController = TextEditingController(text: bankAccounts[index]['owner']);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Edit Account"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: bankController,
                decoration: InputDecoration(labelText: "Bank"),
              ),
              TextField(
                controller: accountController,
                decoration: InputDecoration(labelText: "Account Number"),
              ),
              TextField(
                controller: ownerController,
                decoration: InputDecoration(labelText: "Account Owner"),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  bankAccounts[index] = {
                    "bank": bankController.text,
                    "account": accountController.text,
                    "owner": ownerController.text,
                  };
                });
                Navigator.of(context).pop();
              },
              child: Text("Save"),
            ),
          ],
        );
      },
    );
  }

  // Method to delete a specific bank account
  void deleteAccount(int index) {
    setState(() {
      bankAccounts.removeAt(index);
    });
  }

  // Method to show menu options (edit, delete)
  void showMenuOptions(BuildContext context, int index) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 150,
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.edit),
                title: Text("Edit"),
                onTap: () {
                  Navigator.pop(context);
                  editAccount(index); // Call editAccount function
                },
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text("Delete"),
                onTap: () {
                  Navigator.pop(context);
                  deleteAccount(index); // Call deleteAccount function
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bank Account Info",
          style: TextStyle(
            fontFamily: "DMSans",
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: bankAccounts.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    leading: Image.asset("assets/images/Rectangle 56.png"),
                    title: Text(
                      '${bankAccounts[index]["bank"]}', // Correct string interpolation
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Account: ${bankAccounts[index]["account"]}\nOwner: ${bankAccounts[index]["owner"]}',
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.more_vert),
                      onPressed: () {
                        showMenuOptions(context, index); // Pass index to handle edit and delete
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0, right: 32, bottom: 20),
            child: BasicButton(
              title: "Add Account",
              color: Colors.green, // Green color for the button
              onPressed: addAccount, // Add gesture to the button
            ),
          ),
        ],
      ),
    );
  }
}
