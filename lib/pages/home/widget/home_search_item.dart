import 'package:flutter/material.dart';

class HomeSearchItem extends StatelessWidget {
  const HomeSearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFE8E8E8),
                hintText: "Search",
                helperStyle: TextStyle(color: Color(0xFFACACAC)),
                prefixIcon: Icon(Icons.search),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          SizedBox(width: 40),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFFF6B01),
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 2,
            ),
            onPressed: () {},
            child: Icon(Icons.filter_list_alt),
          ),
        ],
      ),
    );
  }
}
