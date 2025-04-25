import 'package:flutter/material.dart';

class BMIRangeRow extends StatelessWidget {
  const BMIRangeRow({
    super.key,
    required this.label,
    required this.range,
    required this.isCurrentCategory,
  });

  final String label;
  final String range;
  final bool isCurrentCategory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          color: isCurrentCategory
              ? Color(0xFFCF248E)
              : Color(0xFF57094D),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            Text(
              range,
              style: const TextStyle(color: Colors.white70, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}