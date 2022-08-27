import 'package:flutter/material.dart';

class CommonWidget extends StatelessWidget {
 const CommonWidget({Key? key, required this.heading, required this.widget})
      : super(key: key);

  final String heading;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 12, top: 12,bottom: 10),
      width: size.width * 1,
      height: size.height * 0.23,
      color: Colors.blue[50],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 7,
              itemBuilder: (context, index) {
              return widget;
            }),
          )
        ],
      ),
    );
  }
}
