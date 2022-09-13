import 'package:flutter/material.dart';

class GridBuilder extends StatelessWidget {
  const GridBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
      ),
    );
  }
}
