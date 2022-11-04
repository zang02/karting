import 'package:firstproj/decorator/equipment_decorator.dart';



class Suit extends EquipmentDecorator {
  Suit(super.equipment) {
    description = 'Suit';
  }

  @override
  String getDescription() {
    return '${equipment.getDescription()}\n- $description';
  }

  @override
  double getPrice() {
    return equipment.getPrice() + 0.2;
  }
}