import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:portfolio/views/home_view.dart';

class GRoutes {
  //  * Variables * //
  static const String INITIAL_VIEW_ROUTE = '/';

  static const String HOME_VIEW_ROUTE = '/home-view-route';

  /// * Constructors * ///
  GRoutes();

  //  * Functions * //
  List<GetPage<dynamic>>? getPage() {
    return [
      GetPage(name: INITIAL_VIEW_ROUTE, page: () => HomeView()),
      GetPage(name: HOME_VIEW_ROUTE, page: () => HomeView())
    ];
  }
}
