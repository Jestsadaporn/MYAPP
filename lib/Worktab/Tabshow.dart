import 'package:flutter/material.dart';
import 'package:myapp101/form/Dataform.dart';
// import 'package:myapp101/home.dart';
// import 'package:myapp101/screen.dart';

// ignore: must_be_immutable
class Tabshow extends StatefulWidget {
  final formKey = GlobalKey<FormState>();
  Dataform myDataform = Dataform();

  Tabshow({super.key});

  @override
  State<Tabshow> createState() => _TabshowState();
}

class _TabshowState extends State<Tabshow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50], // ตั้งค่าสีพื้นหลังของหน้าจอ
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0), // เพิ่ม padding ภายในกล่อง
              decoration: BoxDecoration(
                color: Colors.white, // ตั้งค่าสีพื้นหลังของกล่องข้อความ
                borderRadius: BorderRadius.circular(8), // เพิ่มมุมโค้งให้กล่อง
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // จัดตำแหน่งข้อความให้ชิดซ้าย
                children: [
                  const Row(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "18/11/2567",
                        style: TextStyle(fontSize: 24),
                      ),
                      Spacer(),
                      Text(
                        "บันทึกโดย เจษฎาพร จันทร์ประเสริฐ",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "วิชา :",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.indigo[600],
                        ),
                      ),
                      const SizedBox(width: 10), // เพิ่มระยะห่างระหว่างข้อความ
                      const Text(" English"),
                      const SizedBox(width: 10), // เพิ่มระยะห่างระหว่างข้อความ
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(children: [
                    Text(
                      "กิจกรรมที่เกี่ยวข้อง :",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.indigo[600],
                      ),
                    ),
                    const SizedBox(width: 10), // เพิ่มระยะห่างระหว่างข้อความ
                    const Text("IT"),
                  ]),
                  const SizedBox(height: 40),
                  Row(children: [
                    Text(
                      "อื่นๆ :",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.indigo[600],
                      ),
                    ),
                    const SizedBox(width: 10), // เพิ่มระยะห่างระหว่างข้อความ
                    const Text("KMUTT"),
                    const SizedBox(
                      height: 10,
                    ),
                  ]),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 5,
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(width: 4),
                        Text(
                          "ดูเพิ่มเติม",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // ระยะห่างระหว่างกล่องและเส้นคั่น
            const Divider(
              // เส้นคั่น
              color: Colors.black, // สีของเส้นคั่น
              thickness: 2, // ความหนาของเส้นคั่น
            ),
          ],
        ),
      ),
    );
  }
}
