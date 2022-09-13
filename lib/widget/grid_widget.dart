import 'package:flutter/material.dart';
import 'package:snake_game/widget/food_physics_widget.dart';
import 'package:snake_game/widget/grid_builder_widget.dart';
import 'package:snake_game/widget/snake_physics_widget.dart';
import 'package:snake_game/core/globals.dart' as globals;

class GridWidget extends StatelessWidget {
  const GridWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: GridView.builder(
        itemCount: globals.totalSquares,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: globals.rowSize),
        itemBuilder: (context, index) {
          if (globals.snakePosition.contains(index)) {
            return const SnakePhysics();
          } else if (globals.foodPosition == index) {
            return const FoodPhysics();
          } else {
            return const GridBuilder();
          }
        },
      ),
    );
  }
}
