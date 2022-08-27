

import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({Key? key, required this.icon, required this.text})
      : super(key: key);

  final dynamic icon;
  final dynamic text;

  @override
  Widget build(BuildContext context) {
 
    return Column(
      children: [
        CircleAvatar(
          radius: 27,
          backgroundColor: Colors.white,
          child: Icon(icon),
        ),
        const SizedBox(height: 4,),
        Text(
          text,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
