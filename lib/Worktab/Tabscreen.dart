import 'package:flutter/material.dart';
import 'package:myapp101/form/Dataform.dart';
import 'package:myapp101/work.dart';

// ignore: must_be_immutable
class Tabscreen extends StatefulWidget {
  final formKey = GlobalKey<FormState>();
  Dataform myDataform = Dataform();

  Tabscreen({super.key});

  @override
  State<Tabscreen> createState() => _TabscreenState();
}

class _TabscreenState extends State<Tabscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: widget.formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Text("การบ้าน", style: TextStyle(fontSize: 24)),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                      border: InputBorder.none,
                    ),
                    onSaved: (String? homework) {
                      widget.myDataform.homework = homework ?? '';
                    },
                  ),
                ),
                const SizedBox(height: 20),
                const Text("กิจกรรมที่เกี่ยวข้อง",
                    style: TextStyle(fontSize: 24)),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                      border: InputBorder.none,
                    ),
                    onSaved: (String? act) {
                      widget.myDataform.act = act ?? '';
                    },
                  ),
                ),
                const SizedBox(height: 20),
                const Text("อื่นๆ", style: TextStyle(fontSize: 24)),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                      border: InputBorder.none,
                    ),
                    onSaved: (String? other) {
                      widget.myDataform.other = other ?? '';
                    },
                  ),
                ),
                const SizedBox(height: 40),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (widget.formKey.currentState!.validate()) {
                        widget.formKey.currentState!.save(); // Save form data
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Work(),
                          ),
                        );
                        print("การบ้าน: ${widget.myDataform.homework}");
                        print("กิจกรรมที่เกี่ยวข้อง: ${widget.myDataform.act}");
                        print("อื่นๆ: ${widget.myDataform.other}");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 12),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.arrow_forward_ios_outlined),
                        SizedBox(width: 8),
                        Text("บันทึกข้อมูล", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
