import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_project/bindings/general_bindings.dart';
import 'package:ecommerce_project/routes/app_routes.dart';
import 'package:ecommerce_project/utils/constraints/colors.dart';
import 'package:ecommerce_project/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      getPages: AppRoutes.pages,
      ///show loader or circular progress indicator meanwhile authentication repository is deciding to show relevant screen
      home: const Scaffold(backgroundColor: TColors.primary, body: Center(child: CircularProgressIndicator(color: Colors.white))),
    );
  }
}