import 'package:firstproj/decorator/equipment_decorator.dart';



class Gloves extends EquipmentDecorator {
  Gloves(super.equipment) {
    description = 'Gloves';
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