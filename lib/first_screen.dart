import 'package:btvn_buoi9/students_screen.dart';
import 'package:flutter/material.dart';
import 'package:btvn_buoi9/infor_student.dart';

List<Students> listStudent = [
  Students("Chi", 20),
  Students("Hiếu", 10),
  Students("Tuấn", 25),
  Students("Tân", 27),
  Students("Hùng", 20),
  Students("Mạnh", 18),
  Students("Chí", 21),
  Students("Thắng", 22),
  Students("Nam", 20),
  Students("Hồng", 23),
  Students("Huyền", 24),
  Students("Trang", 22),
  Students("Hà", 20),
];

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Danh sách sinh viên')
      ),
      body: ListView.builder(
        itemCount: listStudent.length,
        itemBuilder: (context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                      StudentsScreen(student: listStudent[index],))
              );
            },
            child: Container(
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
              decoration:  BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius:
                  const BorderRadius.all(Radius.circular(4.0))
              ),
              child: Row(
                children: [
                  Text(
                    listStudent[index].getName(), // listStudent chạy, index sẽ đọc được nó là pt số mấy và getName
                    style: const TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),

          );
        },
      ),
    );
  }
}
