
import 'package:riverpod/riverpod.dart';
import 'package:warren_state_management/features/riverpod/riverpod_dice_provider.dart';
import 'package:warren_state_management/shared/usecase/get_dice_number.dart';

class RiverpodController {

  final GetDiceNumber getDiceNumberUseCase;
  final ProviderRef ref;

  RiverpodController({ required this.ref, required this.getDiceNumberUseCase });

  Future<int> diceNumber = Future.value(0);

  getNumber() {
    diceNumber = getDiceNumberUseCase.execute();
    ref.refresh(diceNumberProvider);
    print(diceNumber);
  }
}