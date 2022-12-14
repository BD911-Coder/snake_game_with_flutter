import 'package:flutter/material.dart';
import 'package:snake_game/widget/grid_widget.dart';
import 'package:snake_game/widget/start_game_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snake Game With Flutter'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.purple,
            ),
          ),
          const GridWidget(),
          const StartGameButton()
        ],
      ),
    );
  }
}
