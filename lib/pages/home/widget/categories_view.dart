import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 13),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(5, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFFFCE6D9),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.fastfood, color: Colors.amber),
                  SizedBox(width: 6),
                  Text(
                    "Vegetarian",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
