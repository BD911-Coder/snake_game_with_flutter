import 'dart:async';

import 'package:flutter/material.dart';

class StartGameButton extends StatelessWidget {
  const StartGameButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: _startGame,
        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
            fixedSize: MaterialStateProperty.all(const Size(120, 70))),
        child: const Text(
          'Play',
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }

  void _startGame() {
    Timer.periodic(const Duration(milliseconds: 200), (timer) {});
  }
}
