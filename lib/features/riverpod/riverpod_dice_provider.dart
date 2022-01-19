
import 'dart:math';
import 'package:riverpod/riverpod.dart';
import 'package:warren_state_management/features/riverpod/riverpod_controller.dart';
import 'package:warren_state_management/shared/repository/dice_repository.dart';
import 'package:warren_state_management/shared/repository/dice_repository_impl.dart';
import 'package:warren_state_management/shared/usecase/get_dice_number.dart';

final diceRepositoryProvider = Provider<DiceRepository>((ref) =>
    DiceRepositoryImpl()
);

final randomProvider = Provider<Random>((ref) =>
    Random()
);

final getDiceUseCaseProvider = Provider<GetDiceNumber>((ref) =>
    GetDiceNumber(ref.read(diceRepositoryProvider), ref.read(randomProvider))
);

final diceControllerProvider = Provider<RiverpodController>((ref) =>
    RiverpodController(
        ref: ref,
        getDiceNumberUseCase: ref.read(getDiceUseCaseProvider)
    )
);

final diceNumberProvider = FutureProvider<int>((ref) =>
    ref.read(diceControllerProvider).diceNumber
);