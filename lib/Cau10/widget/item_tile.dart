import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  final String title;

  const ItemTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(title));
  }
}