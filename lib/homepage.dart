import 'package:first_assignment/taskpage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    final double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height / 4),
          const Center(
            child: Text(
              'Welcome to',
              style: TextStyle(fontSize: 14),
            ),
          ),

          const Text(
            'Plan IT',
            style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: height / 4.5),

          const Text(
            'Your Personal task management \nand  planning solution',
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),

          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TaskPage()),
              );
            },
            child: Container(
              width: width / 1.8,
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: const Color(0xff363636),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  "Let's get started",
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          // SizedBox(height: height / 6.5),
        ],
      ),
    );
  }
}
