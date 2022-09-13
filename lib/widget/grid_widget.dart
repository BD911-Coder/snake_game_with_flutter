import 'package:flutter/material.dart';
import 'package:snake_game/widget/grid_builder_widget.dart';
import 'package:snake_game/widget/snake_physics_widget.dart';

class GridWidget extends StatelessWidget {
  GridWidget({Key? key}) : super(key: key);

  final int _rowSize = 10;
  final int _totalSquares = 100;
  final List<int> _snakePosition = [0, 1, 2];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: GridView.builder(
        itemCount: _totalSquares,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: _rowSize),
        itemBuilder: (context, index) {
          if (_snakePosition.contains(index)) {
            return const SnakePhysics();
          } else {
            return const GridBuilder();
          }
        },
      ),
    );
  }
}
