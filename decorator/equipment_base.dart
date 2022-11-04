import 'package:firstproj/decorator/equipment.dart';


class EquipmentBase extends Equipment {
  EquipmentBase(String description) {
    this.description = description;
  }

  @override
  String getDescription() {
    return description;
  }

  @override
  double getPrice() {
    return 2.0;
  }
}