import 'package:flutter/material.dart';
import '../untils/constants.dart';
import '../widgets/custom_button.dart';

import '../widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Home Screen",
              style: TextStyle(fontSize: 24),
            ),

            SizedBox(height: 20),

            // Hiển thị MSSV
            Text(
              Constants.student.mssv,
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(height: 20),

            CustomButton(
              text: "Go to About",
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
          ],
        ),
      ),
    );
  }
}