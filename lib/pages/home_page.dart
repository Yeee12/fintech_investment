import 'package:fintech_investment/core/card/best_plan_card.dart';
import 'package:fintech_investment/pages/my_asset.dart';
import 'package:fintech_investment/pages/profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notification_add,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome, Jessi.",
              style: TextStyle(
                fontFamily: "DMSans",
                fontWeight: FontWeight.bold,
                fontSize: 34,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Your total asset portfolio",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins",
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "N203,935",
                        style: TextStyle(
                          fontSize: 28,
                          fontFamily: "Poppins",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Action for Invest Now button
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white, // Button color
                          foregroundColor: Colors.green, // Text color
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: const Text('Invest Now'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Best Plans",
                  style: TextStyle(
                    fontFamily: "DMSans",
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.8,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context)=>MyAsset()
                        )
                    );
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "See All",
                        style: TextStyle(color: Colors.red),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.arrow_forward,
                        size: 18,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  BestPlanCard(
                    title: "Gold",
                    color: Color(0xffF0C735),
                    imagePath: "assets/images/image 4.png",
                    percentage: "30% return",
                  ),
                  SizedBox(width: 20),
                  BestPlanCard(
                    title: "Silver",
                    color: Color(0xff979797),
                    imagePath: "assets/images/image 5.png",
                    percentage: "60% return",
                  ),
                  SizedBox(width: 20),
                  BestPlanCard(
                    title: "Gold",
                    color: Color(0xffF0C735),
                    imagePath: "assets/images/image 4.png",
                    percentage: "30% return",
                  ),
                  SizedBox(width: 20),
                  BestPlanCard(
                    title: "Platinum",
                    color: Colors.purple,
                    imagePath: "assets/images/image 5.png",
                    percentage: "90% return",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Investment Guide",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: "DMSans",
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Basic type of investments",
                            style: TextStyle(
                              fontFamily: "DMSans",
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.8,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "This is how you set your foot for 2020 \n Stock market recession. What’s next...",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage:
                      AssetImage("assets/images/Ellipse 740.png"),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "How much can you start wit..",
                            style: TextStyle(
                              fontFamily: "DMSans",
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.8,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "What do you like to see? It’s a very \n different market from 2018. The way....",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage:
                      AssetImage("assets/images/Ellipse 740 (1).png"),
                    ),
                  ],
                ),
              ],
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
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>HomePage()
              )
              );
              break;
            case 1:
              break;
            case 2:
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext contetxt) =>MyAsset()
            )
            );
              break;
            case 3:
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext contetxt) =>Profile()
              )
              );
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
