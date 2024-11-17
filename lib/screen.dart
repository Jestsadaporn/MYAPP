import 'package:flutter/material.dart';
import 'package:myapp101/Login.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(11, 33, 61, 1.0), // กำหนดสีพื้นหลังที่นี่
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                margin: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset("assest/LOGO101.png", scale: 5),
                    const Text(
                      "WATTHANA",
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.lime,
                      ),
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      "phothawattanasenee School",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "“ Develop systems ”",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Let our app help you make your white classroom management system more efficient and useful.",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      "assest/ADS.png",
                      scale: 3,
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 10,
                        ),
                      ),
                      child: const Text(
                        "Start",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
