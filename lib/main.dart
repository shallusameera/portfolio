import 'package:flutter/material.dart';
import 'package:g_pack/config/theme/g_theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:portfolio/getx/getx_bindings.dart';
import 'package:portfolio/routes/routes.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
late GAppTheme gtheme;
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  gtheme = GAppTheme.init(
      lPrimaryColor: Colors.teal, dPrimaryColor: Colors.tealAccent);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: GRoutes().getPage(),
      initialBinding: GetXBinding(),
      initialRoute: GRoutes.INITIAL_VIEW_ROUTE,
      darkTheme: gtheme.darkTheme,
      theme: gtheme.lightTheme,
    );
    // return GetMaterialApp(
    //
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     useMaterial3: true,
    //   ),
    //   getPages: GRoutes().getPage(),
    //   navigatorKey: navigatorKey,
    //   initialRoute: GRoutes.INITIAL_VIEW_ROUTE,
    //   initialBinding: GetXBinding(),
    // );
  }
}
