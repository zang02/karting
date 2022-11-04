import 'package:flutter/material.dart';
import 'package:firstproj/decorator/decorator.dart';


class CustomSelection extends StatelessWidget {
  final Map<int, EquipmentToppingData> equipmentToppingsDataMap;
  final Function(int, bool?) onSelected;

  const CustomSelection({
    required this.equipmentToppingsDataMap,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: <Widget>[
        for (var i = 0; i < equipmentToppingsDataMap.length; i++)
          i == 0
              ? ChoiceChip(
            label: const Text(
              'Equipment Base',
              style: TextStyle(color: Colors.white),
            ),
            selected: true,
            selectedColor: Colors.black,
            onSelected: (_) {},
          )
              : ChoiceChip(
            label: Text(
              equipmentToppingsDataMap[i]!.label,
              style: TextStyle(
                color: equipmentToppingsDataMap[i]!.selected
                    ? Colors.white
                    : Colors.black,
              ),
            ),
            selected: equipmentToppingsDataMap[i]!.selected,
            selectedColor: Colors.orange,
            onSelected: (bool? selected) => onSelected(i, selected),
          ),
      ],
    );
  }
}