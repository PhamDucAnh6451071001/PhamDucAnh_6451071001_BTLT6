import 'package:flutter/material.dart';

import '../untils/constants.dart';
import '../widgets/color_item.dart';


class PickColorScreen extends StatelessWidget {

  const PickColorScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Pick Color"),
      ),

      body: Column(

        children: [

          Expanded(

            child: ListView(

              children: [

                ColorItem(
                  name: "Red",
                  color: Colors.red,
                  onTap: () {
                    Navigator.pop(
                        context,
                        Colors.red);
                  },
                ),

                ColorItem(
                  name: "Blue",
                  color: Colors.blue,
                  onTap: () {
                    Navigator.pop(
                        context,
                        Colors.blue);
                  },
                ),

                ColorItem(
                  name: "Green",
                  color: Colors.green,
                  onTap: () {
                    Navigator.pop(
                        context,
                        Colors.green);
                  },
                ),

              ],
            ),

          ),

          SizedBox(height: 10),

          // MSSV
          Text(
            Constants.student.mssv,
            style: TextStyle(fontSize: 18),
          ),

          SizedBox(height: 10),

        ],
      ),
    );
  }
}