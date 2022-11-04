import 'package:flutter/foundation.dart';

abstract class Equipment {
  @protected
  late String description;

  String getDescription();
  double getPrice();
}