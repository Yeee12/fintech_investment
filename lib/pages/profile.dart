import 'package:fintech_investment/core/card/best_plan_card.dart';
import 'package:fintech_investment/core/card/profile_card.dart';
import 'package:fintech_investment/pages/bank_account_info.dart';
import 'package:fintech_investment/pages/contact_info.dart';
import 'package:fintech_investment/pages/home_page.dart';
import 'package:fintech_investment/pages/my_asset.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile",
          style: TextStyle(
            fontFamily: "DMSans",
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            CircleAvatar(
              radius: 80,
              backgroundImage:
              AssetImage("assets/images/Ellipse 741.png"),
            ),
            SizedBox(height: 5,),
            Text("Jonas Macroni",
            style: TextStyle(
              fontSize: 22,
            ),
            ),
            SizedBox(height: 2,),
            Text('Expert'),
            SizedBox(height: 30,),
            Expanded(
              child: ListView(
                children: [
                  ProfileCard(title: "Contact Info",
                      icon: Icons.co_present,
                      onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>ContactInfo()
                    )
                    );
                      }
                  ),
                  SizedBox(height: 20,),
                  ProfileCard(title: "Source of Funding Info",
                      icon: Icons.credit_card_rounded,
                      onTap: (){}
                  ),
                  SizedBox(height: 20,),
                  ProfileCard(title: "Bank Account Info",
                      icon: Icons.account_balance_outlined,
                      onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>BankAccountInfo()
                    )
                    );
                      }
                  ),
                  SizedBox(height: 20,),
                  ProfileCard(title: "Document Info",
                      icon: Icons.document_scanner,
                      onTap: (){}
                  ),
                  SizedBox(height: 20,),
                  ProfileCard(title: "Settings",
                      icon: Icons.settings,
                      onTap: (){}
                  ),
                ],
              ),
            )
          ],
        ),
      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the selected tab
          });

          // Handle different icon tap events
          switch (index) {
            case 0:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (BuildContext context) => const HomePage()),
              );
              break;
            case 1:
            // Handle Product icon tap (currently nothing is set)
              break;
            case 2:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (BuildContext context) => const MyAsset()),
              );
              break;
            case 3:
            // Handle Account icon tap (currently nothing is set)
              break;
            default:
              break;
          }
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Product",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: "Transaction",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ],
      ),



    );
  }
}
