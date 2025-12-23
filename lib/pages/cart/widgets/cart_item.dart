import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusGeometry.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 20,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/eat.png",
            width: 125,
            height: 130,
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  "Prawn mix salad",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 20,
                    height: 1,
                  ),
                ),

                Text(
                  "Seafood rice",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA7A7A7),
                    fontSize: 10,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "\$8.99",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFF6B01),
                    fontSize: 20,
                    height: 1,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 4,
            ),
            decoration: BoxDecoration(
              color: Color(0xFFFF6B01),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                Icon(Icons.remove, color: Colors.white),
                SizedBox(height: 20),
                RotatedBox(
                  quarterTurns: -1,
                  child: Text(
                    '1',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Icon(Icons.add, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
