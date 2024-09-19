import 'package:fintech_investment/core/card/current_plan.dart';
import 'package:flutter/material.dart';

class MyAsset extends StatelessWidget {
  const MyAsset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 85, top: 20),
          child: Text(
            "My Asset",
            style: TextStyle(
              fontFamily: "DMSans",
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PortfolioValue(),
            const SizedBox(height: 30),
            const Text(
              "Current Plan",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: "DMSans",
              ),
            ),
            const SizedBox(height: 20),
            const CurrentPlan(
              title: "Gold",
              color: Color(0xffF0C735),
              imagePath: ("assets/images/image 4.png"),
              percentage: " 30% return",
            ),
            const SizedBox(height: 60),
            const Text(
              "History",
              style: TextStyle(
                fontFamily: "DMSans",
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.8,
              ),
            ),
            const SizedBox(height: 20),
            // Use Expanded or Flexible to constrain ListView inside Column
            Expanded(
              child: TransactionHistory(),
            ),
          ],
        ),
      ),
    );
  }
}

class PortfolioValue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Your total asset portfolio",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            children: const [
              Text(
                "N203, 945",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 20),
              Text(
                "+2%",
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TransactionHistory extends StatelessWidget {
  final List<Map<String, dynamic>> transactions = [
    {'amount': 'N 200.000', 'description': 'Buy APPLE Stock', 'date': 'TUE 22 Jun 2020', 'isPositive': false},
    {'amount': 'N 150.000', 'description': 'Sell TLM Stock', 'date': 'TUE 22 Jun 2020', 'isPositive': true},
    {'amount': 'N 1.000.240', 'description': 'Buy TLB Stock', 'date': 'TUE 22 Jun 2020', 'isPositive': false},
    {'amount': 'N 1.000.240', 'description': 'Sell APPLE Stock', 'date': 'TUE 22 Jun 2020', 'isPositive': true},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: transactions.length,
      separatorBuilder: (context, index) => Divider(thickness: 3, color: Colors.grey[300]),
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          title: Text(
            transactions[index]['amount']!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: transactions[index]['isPositive'] ? Colors.green : Colors.black,
              fontSize: 18,
            ),
          ),
          subtitle: Text(
            transactions[index]['description']!,
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
          trailing: Text(
            transactions[index]['date']!,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
        );
      },
    );
  }
}
