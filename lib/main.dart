import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:i_love_iruka/injection.dart';
import 'package:i_love_iruka/presentation/app_widget.dart';
import 'package:i_love_iruka/util/constants.dart';
import 'package:injectable/injectable.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();

  configureInjection(Environment.prod);
  await GetStorage.init(Constants().getIrukaStorage);
  runApp(AppWidget());
}
