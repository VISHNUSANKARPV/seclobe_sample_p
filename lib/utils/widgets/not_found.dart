import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.warning,
          color: Colors.red,
          size: 40,
        ),
        Text(
          "Page Not Found",
          style: TextStyle(color: Colors.black, fontSize: 30),
        )
      ],
    );
  }
}
