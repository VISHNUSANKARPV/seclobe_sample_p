import 'package:figma_ui/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class UsedCard extends StatelessWidget {
  const UsedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 12,left: 15,right: 15),
            child: Column(children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const[
               //background color of box
                BoxShadow (
                  color: Colors.grey,
                  blurRadius: 7.0, // soften the shadow
                  spreadRadius: 1.0, //extend the shadow
                  offset: Offset(
                    2.0, // Move to right 10  horizontally
                    1.0, // Move to bottom 10 Vertically
                  ),
                )
              ],
                ),
                child: Icon(Icons.electric_bolt_rounded,color: lightPrimary,)),
                const Text("Electriian",style:  TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 12),),
                const Text("Seclob Service\n     at Kochi",style: TextStyle(fontSize: 10),)
            ],),
          ),
        ),
        Container(
          height: 20,
          width: 95,
          decoration: BoxDecoration(
            color: lightPrimary,
            borderRadius: const BorderRadius.only(bottomLeft:  Radius.circular(18),bottomRight:  Radius.circular(18))
          ),
          
          child: const Center(child: Text("20 minutes ago...",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w300),)))
      ],
    );
  }
}