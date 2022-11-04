import 'package:firstproj/decorator/equipment.dart';

abstract class EquipmentDecorator extends Equipment {
  final Equipment equipment;

  EquipmentDecorator(this.equipment);

  @override
  String getDescription() {
    return equipment.getDescription();
  }

  @override
  double getPrice() {
    return equipment.getPrice();
  }
}