import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  void goToSettings(BuildContext context) {

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => SettingsScreen(),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Home Screen"),
      ),

      body: Center(

        child: Column(
          mainAxisAlignment:
          MainAxisAlignment.center,

          children: [

            Text(
              "Home Screen",
              style: TextStyle(fontSize: 24),
            ),

            SizedBox(height: 20),

            CustomButton(
              text: "Go to Settings",
              onPressed: () {
                goToSettings(context);
              },
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