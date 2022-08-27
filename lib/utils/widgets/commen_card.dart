import 'package:figma_ui/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class CommenCard extends StatelessWidget {
  const CommenCard(
      {Key? key,
      required this.url,
      required this.price,
      required this.oldPrice, required this.product})
      : super(key: key);

  final String url;
  final String product;
  final String price;
  final String oldPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            height: 120,
            width: 95,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  url,
                  fit: BoxFit.cover,
                )),
          ),
          Container(
            height: 40,
            width: 95,
            decoration: BoxDecoration(
                color: primary,
                borderRadius:const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Column(
              children: [
                Text(
                  product,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 13),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                          color: Colors.yellow[800],
                          fontWeight: FontWeight.w300,
                          fontSize: 12),
                    ),
                    Text(
                      oldPrice,
                      style: TextStyle(
                          color: Colors.grey[300],
                          fontWeight: FontWeight.w100,
                          fontSize: 9,
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 2),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
