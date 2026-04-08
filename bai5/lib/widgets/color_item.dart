import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {

  final String name;
  final Color color;
  final VoidCallback onTap;

  const ColorItem({
    super.key,
    required this.name,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return Card(
      child: ListTile(

        leading: Container(
          width: 30,
          height: 30,
          color: color,
        ),

        title: Text(name),

        onTap: onTap,
      ),
    );

  }
}