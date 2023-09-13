import 'package:flutter/material.dart';
import 'infor_student.dart';

class StudentsScreen extends StatelessWidget {

  final Students student;

  const StudentsScreen({super.key, required this.student});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Thông tin Sinh viên"),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 25, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Tên: ${student.name}\nTuổi: ${student.age}',
                style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
  
}