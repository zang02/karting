import 'package:firstproj/decorator/equipment_decorator.dart';

class Kart extends EquipmentDecorator {
  Kart(super.equipment) {
    description = 'Kart';
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