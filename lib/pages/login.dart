import 'package:fintech_investment/core/widgets/basic_button.dart';
import 'package:fintech_investment/pages/home_page.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          children: [
            Text("Login",
              style: TextStyle(
                  fontFamily: "DMSans",
                  fontSize: 34,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 15,),
            Text("Invest and double your income now",
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: "Poppins"
                )
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 32.0,
                  right: 32),
              child: BasicButton(title: "Login",
                color: const Color(0xff31A062),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context) => const HomePage()
                  )
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
