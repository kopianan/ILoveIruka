import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:i_love_iruka/injection.dart';
import 'package:i_love_iruka/presentation/app_widget.dart';
import 'package:injectable/injectable.dart';

import 'infrastructure/core/local_storage.dart';

void main() async {
  configureInjection(Environment.prod);
  await GetStorage.init(getUserStorageKey);

  runApp(AppWidget());
}
