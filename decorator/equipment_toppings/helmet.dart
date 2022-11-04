import 'package:firstproj/decorator/equipment_decorator.dart';



class Helmet extends EquipmentDecorator {
  Helmet(super.pizza) {
    description = 'Helmet';
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