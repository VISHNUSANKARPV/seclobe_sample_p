import 'package:flutter/material.dart';

class RechargeCoupon extends StatelessWidget {
  const RechargeCoupon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height*0.09,
      width: size.width*0.4,
      color: Colors.red
    );
  }
}