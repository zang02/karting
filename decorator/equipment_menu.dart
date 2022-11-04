import 'package:firstproj/decorator/equipment.dart';

import 'equipment.dart';
import 'equipment_base.dart';
import 'equipment_topping_data.dart';
import 'package:firstproj/decorator/equipment_toppings/equipment_toppings.dart';

class EquipmentMenu {
  final Map<int, EquipmentToppingData> _equipmentToppingsDataMap = {
    1: EquipmentToppingData('Helmet'),
    2: EquipmentToppingData('Suit'),
    3: EquipmentToppingData('Kart'),
    4: EquipmentToppingData('Gloves'),
  };

  Map<int, EquipmentToppingData> getEquipmentToppingsDataMap() => _equipmentToppingsDataMap;

  Equipment getEquipment(int index, Map<int, EquipmentToppingData> equipmentToppingsDataMap) {
    switch (index) {
      case 0:
        return _getSilver();
      case 1:
        return _getGold();
      case 2:
        return _getCustom(equipmentToppingsDataMap);
    }

    throw Exception("Index of '$index' does not exist.");
  }

  Equipment _getSilver() {
    Equipment equipment = EquipmentBase('Only Kart');
    equipment = Kart(equipment);


    return equipment;
  }

  Equipment _getGold() {
    Equipment equipment = EquipmentBase('All needed suit and Kart');
    equipment = Kart(equipment);
    equipment = Suit(equipment);
    equipment = Helmet(equipment);
    equipment = Gloves(equipment);

    return equipment;
  }

  Equipment _getCustom(Map<int, EquipmentToppingData> equipmentToppingsDataMap) {
    Equipment equipment = EquipmentBase('Custom Equipment');

    if (equipmentToppingsDataMap[1]!.selected) {
      equipment = Helmet(equipment);
    }

    if (equipmentToppingsDataMap[2]!.selected) {
      equipment = Suit(equipment);
    }

    if (equipmentToppingsDataMap[3]!.selected) {
      equipment = Kart(equipment);
    }

    if (equipmentToppingsDataMap[4]!.selected) {
      equipment = Gloves(equipment);
    }


    return equipment;
  }
}