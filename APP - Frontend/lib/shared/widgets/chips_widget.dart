import 'package:flutter/material.dart';

class Chips extends StatelessWidget {
  final String label;
  const Chips({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ActionChip(
        backgroundColor: Colors.white,
        label: Text(label),
        side: BorderSide(color: Colors.grey, width: 1),
        onPressed: () {},
      ),
    );
  }
}
