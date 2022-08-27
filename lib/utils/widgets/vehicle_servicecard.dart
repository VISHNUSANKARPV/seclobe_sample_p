import 'package:figma_ui/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class VehicleServices extends StatelessWidget {
   const VehicleServices({Key? key, required this.icon,required this.text}) : super(key: key);

 final dynamic icon;
  final dynamic text;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(top: 6),
      height: size.height * 0.09,
      width: size.width * 0.27,
      decoration: BoxDecoration(
          color: lightPrimary, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Icon(
           icon,
            color: Colors.white,
            size: 40,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 10),
          )
        ],
      ),
    );
  }
}
