import 'package:flutter/material.dart';

class CategoryItem extends StatefulWidget {
  final IconData icon;
  final String label;

  const CategoryItem({required this.icon, required this.label, super.key});

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white24),
        borderRadius: BorderRadius.circular(6),
        color: Colors.black,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(widget.icon, size: 15, color: Colors.white),
            SizedBox(width: 5),
            Text(
              widget.label,
              style: TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),
            ),
          ],
        ),
      ),
    );
  }
}