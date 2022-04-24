import 'package:coffeestore/signup.dart';
import 'package:flutter/material.dart';
import 'package:coffeestore/login.dart';

class Pilihan extends StatelessWidget {
  const Pilihan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(210, 205, 166, 146),
        body: SafeArea(
            child: Column(
          children: [
            const SizedBox(height: 100),
            Container(child: Image.asset('assets/coffee.png')),
            Container(
                alignment: Alignment.center,
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "CoffeStore",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Colors.white,
                        fontFamily: "Poppins"),
                  ),
                )),
            Container(
                alignment: Alignment.center,
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Mobile App",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: "Poppins"),
                  ),
                )),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 90, 0, 15),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(300, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      primary: const Color.fromARGB(255, 32, 199, 99)),
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 30, fontFamily: "Poppins"),
                  )),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                alignment: Alignment.center,
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "or",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: "Poppins",
                      color: Colors.white,
                    ),
                  ),
                )),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Signupscreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(300, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      primary: const Color.fromARGB(255, 32, 199, 99)),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 30, fontFamily: "Poppins"),
                  )),
            )
          ],
        )),
      ),
    );
  }
}
