import 'package:firstproj/decorator/decorator.dart';
import 'package:flutter/material.dart';

const _labels = ['Silver', 'Gold', 'Custom'];

class EquipmentSelection extends StatelessWidget {
  final int selectedIndex;
  final ValueSetter<int?> onChanged;

  const EquipmentSelection({
    required this.selectedIndex,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        for (var i = 0; i < _labels.length; i++)
          RadioListTile(
            title: Text(_labels[i]),
            value: i,
            groupValue: selectedIndex,
            selected: i == selectedIndex,
            activeColor: Colors.black,
            onChanged: onChanged,
          ),
      ],
    );
  }
}