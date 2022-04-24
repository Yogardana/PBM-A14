import 'package:coffeestore/launcher.dart';
import 'package:coffeestore/pilihan.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Launcher(),
    );
  }
}

class Launcher extends StatelessWidget {
  const Launcher({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 205, 166, 146),
        body: SafeArea(
            child: Column(
          children: [
            Container(
              child: Image.asset('assets/image11.png'),
              alignment: const Alignment(1, 0),
            ),
            Container(
              child: Image.asset('assets/coffee.png'),
            ),
            Container(
                alignment: Alignment.center,
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "CoffeeStore",
                    textAlign: TextAlign.center,
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
                    "Aplikasi pemesanan kopi",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                  ),
                )),
            Container(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return const Pilihan();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(300, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      primary: const Color.fromARGB(255, 32, 199, 99)),
                  child: const Text(
                    "Mulai",
                    style: TextStyle(fontSize: 30, fontFamily: "Poppins"),
                  )),
            ),
          ],
        )),
      ),
    );
  }
}
