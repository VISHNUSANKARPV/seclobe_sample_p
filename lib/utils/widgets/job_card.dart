import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  const JobCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Stack(
      
      alignment: Alignment.bottomCenter,
      children: [
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          ),
          color: Colors.white,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset("assets/gettyimages-1054217860-612x612.jpg")),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6,left: 6,right: 6,bottom: 6),
          child: Card(
            shadowColor: Colors.white,
            color: Colors.grey.withOpacity(0.4),
            child: const Text("Painter",
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(color: Colors.black),),
          ),
        )
      ],
    );
  }
}