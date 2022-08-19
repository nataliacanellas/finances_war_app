import 'package:flutter/material.dart';

class ContainerCardExtrato extends StatelessWidget {
  String title;
  String value;
  String category;
  String date;
  IconData iconData;
  Color colorValue;

  ContainerCardExtrato({
    Key? key,
    required this.title,
    required this.value,
    required this.category,
    required this.date,
    required this.iconData,
    required this.colorValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            spreadRadius: 5,
            color: Colors.grey.shade200,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 17),
            ),
            const SizedBox(height: 10),
            Text(
              value,
              style: TextStyle(
                fontSize: 27,
                color: colorValue,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(iconData, size: 23),
                    const SizedBox(width: 10),
                    Text(
                      category,
                      style: const TextStyle(fontSize: 17),
                    ),
                  ],
                ),
                Text(
                  date,
                  style: const TextStyle(fontSize: 17),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
