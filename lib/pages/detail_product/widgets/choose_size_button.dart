import 'package:flutter/material.dart';

class ChooseSizeButton extends StatelessWidget {
  const ChooseSizeButton({
    super.key,
    required this.title,
    required this.onTab,
    required this.isActive,
  });

  final String title;
  final VoidCallback onTab;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10),
          backgroundColor: isActive ? Color(0xFFFF6B01) : Color(0xFFFCE6D9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
        ),
        onPressed: onTab,
        child: Text(
          title,
          style: TextStyle(
            color: isActive ? Color(0xFFFFFFFF) : Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
