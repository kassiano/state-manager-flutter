
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:warren_state_management/shared/repository/dice_repository_impl.dart';
import 'package:warren_state_management/shared/usecase/get_dice_number.dart';

import 'inherted_dice.dart';
import 'inherted_dice_controller.dart';

class InhertedApp extends StatelessWidget {
   InhertedApp({Key? key}) : super(key: key);

  final getDiceUseCase = GetDiceNumber(DiceRepositoryImpl(), Random());

  @override
  Widget build(BuildContext context) {
    return InhertedDiceController(
        getDiceUseCase,
        child: InhertedDice()
    );
  }
}
