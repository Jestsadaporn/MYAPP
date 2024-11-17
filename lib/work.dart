import 'package:flutter/material.dart';
import 'package:myapp101/Worktab/Tabscreen.dart';
import 'package:myapp101/Worktab/Tabshow.dart';
// import 'package:myapp101/home.dart';

class Work extends StatefulWidget {
  const Work({super.key});

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(11, 33, 61, 1.0),
        body: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            // TabBar อยู่ด้านบน
            Row(
              children: [
                const SizedBox(width: 10),
                IconButton(
                  icon:
                      const Icon(Icons.arrow_back_rounded, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context); // แทนที่ด้วย Navigator.pop
                  },
                ),
                const SizedBox(width: 60),
                const Text(
                  "ฝ่ายการเรียน",
                  style: TextStyle(fontSize: 36, color: Colors.lime),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const TabBar(
                tabs: [
                  Tab(text: "สร้างบันทึกข้อมูลประจำวัน"),
                  Tab(text: "ประวัติบันทึกข้อมูลประจำวัน"),
                ],
                labelColor: Colors.white,
                indicatorColor: Colors.yellow,
                unselectedLabelColor: Colors.grey),

            // TabBarView สำหรับเนื้อหา
            Expanded(
              child: TabBarView(
                children: [
                  Tabscreen(),
                  Tabshow(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
