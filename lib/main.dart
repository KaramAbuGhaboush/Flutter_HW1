import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: const Color(0xFF222831),
            appBar: AppBar(
                backgroundColor: const Color(0xFF00ADB5),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('Images/t1.png', fit: BoxFit.contain, height: 60),
                    Container(
                      padding: const EdgeInsets.all(8.0), child: const Text('PPU STU INFO.', style: TextStyle(color: Color(0xFF393E46),)),
                    )
                  ],
                )
            ),
            body: ListView(
                  children: const [
                    Student(imagePath: 'Images/m2.jpg', name: 'Husam Mohammed', studentID: '211345', description: 'CS Student', averageScore: 87.8),
                    Student(imagePath: 'Images/m3.jpg', name: 'Ahmad Mouhsen', studentID: '201122', description: 'CSE Student', averageScore: 99.1),
                    Student(imagePath: 'Images/m4.jpg', name: 'Alaa Aysar', studentID: '211124', description: 'CSE Student', averageScore: 63.7),
                    Student(imagePath: 'Images/m5.jpg', name: 'Jack Johnson', studentID: '210098', description: 'CSE Student', averageScore: 57.5),
                    Student(imagePath: 'Images/m1.jpeg', name: 'Mr.Cat Abu Hussien', studentID: '170790', description: 'CSE Student', averageScore: 11.5),
                    Student(imagePath: 'Images/m6.jpg', name: 'Aziz Osama', studentID: '233498', description: 'CSE Student', averageScore: 85.0),
                  ],
        )
        )
    );
  }
}


class Student extends StatelessWidget {
  final String imagePath;
  final String name;
  final String studentID;
  final String description;
  final double averageScore;

  const Student({super.key,
    required this.imagePath,
    required this.name,
    required this.studentID,
    required this.description,
    required this.averageScore,
  });

  String determineStars() {
    if (averageScore >= 80) {
      return "*****";
    } else if (averageScore >= 60) {
      return "****";
    } else if (averageScore >= 40) {
      return "***";
    } else if (averageScore >= 20) {
      return "**";
    } else {
      return "*";
    }
  }

  @override
  Widget build(BuildContext context) {
    final rate = determineStars();

    return Container(
      padding: const EdgeInsets.all(3),
      height: 150,
      child: Card(
        color: const Color(0xFFEEEEEE),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: Image.asset(imagePath),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(name, style: const TextStyle(fontSize: 20),),
                  Text(studentID),
                  Text(description),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("$rate    ", style: const TextStyle(color: Color(0xFFFFC400)),)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}






