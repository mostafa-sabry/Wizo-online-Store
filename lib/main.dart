import 'package:flutter/material.dart';
import 'package:online_store/core/networking/services/get_it_locator.dart';

import 'package:online_store/my_app.dart';

import 'core/helpers/cache_helper.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  setupServicesLocator();
  runApp(const MyApp());
}
