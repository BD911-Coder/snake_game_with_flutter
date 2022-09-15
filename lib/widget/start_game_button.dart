import 'dart:async';

import 'package:flutter/material.dart';
import 'package:snake_game/core/globals.dart' as globals;

class StartGameButton extends StatefulWidget {
  const StartGameButton({Key? key}) : super(key: key);

  @override
  State<StartGameButton> createState() => _StartGameButtonState();
}

class _StartGameButtonState extends State<StartGameButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: ElevatedButton(
          onPressed: _startGame,
          style: Theme.of(context).elevatedButtonTheme.style,
          child: const Text(
            'Play',
          ),
        ),
      ),
    );
  }

  void _startGame() {
    Timer.periodic(const Duration(milliseconds: 200), (timer) {
      setState(() {
        globals.snakePosition.add(globals.snakePosition.last + 1);
        globals.snakePosition.removeAt(0);
      });
    });
  }
}
