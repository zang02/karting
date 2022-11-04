import 'package:firstproj/decorator/equipment.dart';

class EquipmentToppingData {
  final String label;
  bool selected = false;

  EquipmentToppingData(this.label);

  // ignore: use_setters_to_change_properties
  void setSelected({required bool isSelected}) {
    selected = isSelected;
  }
}