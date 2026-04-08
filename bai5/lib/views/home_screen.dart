import 'package:flutter/material.dart';
import '../untils/constants.dart';
import 'pick_color_screen.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() =>
      _HomeScreenState();

}

class _HomeScreenState
    extends State<HomeScreen> {

  Color selectedColor = Colors.grey;

  Future<void> pickColor() async {

    var selected =
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
            PickColorScreen(),
      ),
    );

    if (selected != null) {

      setState(() {
        selectedColor = selected;
      });

    }

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
              "Selected Color",
              style: TextStyle(fontSize: 24),
            ),

            SizedBox(height: 20),

            // Box màu
            Container(
              width: 120,
              height: 120,
              color: selectedColor,
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: pickColor,
              child: Text("Pick Color"),
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