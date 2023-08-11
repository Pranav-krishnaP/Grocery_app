import 'package:flutter/material.dart';

class Selected extends StatelessWidget {
  const Selected({super.key, required this.category});

  final category;

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Placeholder(),
    );
  }
}
