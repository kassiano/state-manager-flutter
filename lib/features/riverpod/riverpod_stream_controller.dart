
import 'dart:async';
import 'package:warren_state_management/shared/usecase/get_dice_number.dart';

class RiverpodStreamController {

  final GetDiceNumber getDiceNumberUseCase;
  RiverpodStreamController({ required this.getDiceNumberUseCase }) {
    _diceNumberStream.add(0);
  }

  var _diceNumberStream = StreamController<int>();
  Stream<int> get diceNumberStream => _diceNumberStream.stream;

  getNumber() async {
    _diceNumberStream = StreamController<int>();
    final number = await getDiceNumberUseCase.execute();
    _diceNumberStream.add(number);
  }

}