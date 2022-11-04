import 'package:flutter/material.dart';

import 'package:firstproj/decorator/decorator.dart';
import 'package:firstproj/widgets/decorator/custom_selection.dart';
import 'package:firstproj/widgets/decorator/equipment_information.dart';
import 'package:firstproj/widgets/decorator/equipment_selection.dart';


class DecoratorExample extends StatefulWidget {
  const DecoratorExample();

  @override
  _DecoratorExampleState createState() => _DecoratorExampleState();
}

class _DecoratorExampleState extends State<DecoratorExample> {
  final EquipmentMenu equipmentMenu = EquipmentMenu();

  late final Map<int, EquipmentToppingData> _equipmentToppingsDataMap;
  late Equipment _equipment;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _equipmentToppingsDataMap = equipmentMenu.getEquipmentToppingsDataMap();
    _equipment = equipmentMenu.getEquipment(0, _equipmentToppingsDataMap);
  }

  void _onSelectedIndexChanged(int? index) {
    _setSelectedIndex(index!);
    _setSelectedEquipment(index);
  }

  void _setSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onCustomEquipmentChipSelected(int index, bool? selected) {
    _setChipSelected(index, selected!);
    _setSelectedEquipment(_selectedIndex);
  }

  void _setChipSelected(int index, bool selected) {
    setState(() {
      _equipmentToppingsDataMap[index]!.setSelected(isSelected: selected);
    });
  }

  void _setSelectedEquipment(int index) {
    setState(() {
      _equipment = equipmentMenu.getEquipment(index, _equipmentToppingsDataMap);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          body: ScrollConfiguration(
            behavior: const ScrollBehavior(),
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Select your equipment:',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  EquipmentSelection(
                    selectedIndex: _selectedIndex,
                    onChanged: _onSelectedIndexChanged,
                  ),
                  if (_selectedIndex == 2)
                    CustomSelection(
                      equipmentToppingsDataMap: _equipmentToppingsDataMap,
                      onSelected: _onCustomEquipmentChipSelected,
                    ),
                  EquipmentInformation(
                    equipment: _equipment,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() => runApp(DecoratorExample());