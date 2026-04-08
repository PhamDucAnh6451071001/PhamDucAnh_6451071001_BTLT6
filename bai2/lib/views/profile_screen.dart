import 'package:flutter/material.dart';
import '../untils/constants.dart';


class ProfileScreen extends StatelessWidget {

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // Nhận username
    final username =
    ModalRoute.of(context)!
        .settings
        .arguments as String;

    return Scaffold(

      appBar: AppBar(
        title: Text("Profile Screen"),
      ),

      body: Center(

        child: Column(
          mainAxisAlignment:
          MainAxisAlignment.center,

          children: [

            Text(
              "User Profile",
              style: TextStyle(fontSize: 24),
            ),

            SizedBox(height: 20),

            Text(
              "Username: $username",
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(height: 20),

            // MSSV
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