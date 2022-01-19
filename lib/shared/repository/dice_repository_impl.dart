
import 'package:warren_state_management/shared/repository/dice_repository.dart';

class DiceRepositoryImpl implements DiceRepository {
  
  @override
  List<int> getDiceNumbers() {
    return [1,2,3,4,5,6];
  }
  
}