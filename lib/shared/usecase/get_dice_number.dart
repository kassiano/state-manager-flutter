
import 'dart:math';

import 'package:warren_state_management/shared/repository/dice_repository.dart';

class GetDiceNumber {

  final DiceRepository diceRepository;
  final Random random;
  
  GetDiceNumber(this.diceRepository, this.random);

  Future<int> execute() async {

    return await Future.delayed(Duration(milliseconds: 2000), () {

      final numbers = diceRepository.getDiceNumbers();
      final maxNumber = numbers.reduce(max);
      final minNumber = numbers.reduce(min);

      final number = random.nextInt(maxNumber - minNumber);

      return number;
    });

  }
}