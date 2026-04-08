import 'package:flutter/material.dart';
import '../untils/constants.dart';


class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "About our company",
              style: TextStyle(fontSize: 24),
            ),

            SizedBox(height: 20),

            // Hiển thị MSSV
            Text(
              Constants.student.mssv,
              style: TextStyle(fontSize: 18),
            ),

          ],
        ),
      ),
    );
  }
}