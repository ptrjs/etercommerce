import 'package:etercommerce/shared/theme/theme.dart';
import 'package:etercommerce/state_util.dart';
import 'package:etercommerce/core.dart';
import 'package:etercommerce/core.dart';
import 'package:flutter/material.dart';

import 'module/login/view/login_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runMainApp();
}

runMainApp() async {
  return runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EterCommerce',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: getDefaultTheme(),
      home: LoginView(),
    );
  }
}


