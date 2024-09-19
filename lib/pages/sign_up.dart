import 'package:fintech_investment/core/widgets/basic_button.dart';
import 'package:fintech_investment/pages/create_account.dart';
import 'package:fintech_investment/pages/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            children: [
              Image.asset("assets/images/Asset 1 1.png"),
              const SizedBox(height: 20,),
              const Text("Stay on top of your \n finance with us.",
              style: TextStyle(
                fontFamily: "DMSans",
                fontWeight: FontWeight.bold,
                fontSize: 34
              ),
              ),
              const SizedBox(height: 10,),
              const Text(
                "We are your new financial Advisors \n"
                    "to recommend the best investments for \n"
                    "you.",
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: "Poppins",
                  letterSpacing: 0,
                ),
                textAlign: TextAlign.center, // Center align the text
              ),
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(left: 32.0,
                right: 32),
                child: BasicButton(title: "Create Account",
                    color: const Color(0xff31A062),
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const CreateAccount()
                  )
                  );
                  },
                ),
              ),
              const SizedBox(height: 19,),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>Login()
                  )
                  );
                },
                child: const Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.greenAccent,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
