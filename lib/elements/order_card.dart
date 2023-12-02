// ignore_for_file: dead_code
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final double width;
  final double height;

  const ProductCard({super.key, required this.width, required this.height});

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: _isSelected ? Colors.blue : Colors.grey[100],
          borderRadius: BorderRadius.circular(20.0),
          border: _isSelected
              ? Border.all(color: Colors.blue, width: 2.0)
              : Border.all(color: Colors.transparent),
        ),
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '10',
                  style: TextStyle(
                    color: _isSelected ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  "16:30",
                  style: TextStyle(
                    color: _isSelected ? Colors.white : Colors.black,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Text(
              "ул. Рафиева д.46",
              style: TextStyle(
                color: _isSelected ? Colors.white : Colors.black,
                fontSize: 14.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.14),
              child: Text(
                "готов",
                style: TextStyle(
                  color: _isSelected ? Colors.white : Colors.black,
                  fontSize: 14.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
