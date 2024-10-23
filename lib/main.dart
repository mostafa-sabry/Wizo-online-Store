import 'package:flutter/material.dart';
import 'package:online_store/core/networking/services/get_it_locator.dart';

import 'package:online_store/my_app.dart';

void main() {
  setupServicesLocator();
  runApp(const MyApp());
}
