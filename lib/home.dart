import 'package:flutter/material.dart';
// import 'package:myapp101/Data/datawork.dart';
import 'package:myapp101/screen.dart';
import 'package:myapp101/work.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({
    super.key,
  });

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(11, 33, 61, 1.0),
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(20, 50, 20, 30),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  children: [
                    const Spacer(),
                    const Text(
                      "นายเจษฎาพร จันทร์ประเสริฐ ",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white54,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 20),
                    Image.asset(
                      "assest/USER.png",
                      scale: 3,
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
              const SizedBox(height: 35),
              Image.asset("assest/ADS2.png"),
              const SizedBox(height: 30),
              Column(
                children: [
                  // First Row of Buttons
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 35, vertical: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Work(),
                            ),
                          );
                        },
                        child: const Text(
                          "ฝ่ายการเรียน",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 35, vertical: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Work(),
                            ),
                          );
                        },
                        child: const Text(
                          "ฝ่ายกิจกรรม",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Second Row of Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Work(),
                            ),
                          );
                        },
                        child: const Text(
                          "ฝ่ายสารวัตรนักเรียน",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Work(),
                            ),
                          );
                        },
                        child: const Text(
                          "ฝ่ายการงาน",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.lightBlue, // Set the border color
                        width: 2, // Set the border thickness
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 15), // Optional: Adjust padding
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home(),
                        ),
                      );
                    },
                    child: const Text(
                      "ออกจากระบบ",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Custom button builder function
}
