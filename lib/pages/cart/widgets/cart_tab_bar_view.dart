import 'package:flutter/material.dart';

class CartTabBarView extends StatelessWidget {
  const CartTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15, top: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: TabBar(
        dividerHeight: 0,
        indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(color: Color(0xFFFF6B01), width: 3),
          insets: EdgeInsetsGeometry.only(top: 10),
        ),
        labelColor: Colors.black,
        unselectedLabelColor: Colors.black54,
        labelStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        tabs: const [
          Tab(text: 'Active'),
          Tab(text: 'Previous'),
        ],
      ),
    );
  }
}
