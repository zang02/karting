import 'package:firstproj/decorator/decorator.dart';
import 'package:flutter/material.dart';

import 'package:firstproj/decorator/decorator.dart';

class EquipmentInformation extends StatelessWidget {
  final Equipment equipment;

  const EquipmentInformation({
    required this.equipment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Equipment details:',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: 16.0),
        Text(
          equipment.getDescription(),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 8.0),
        Text('Price: \$${equipment.getPrice().toStringAsFixed(2)}'),
      ],
    );
  }
}