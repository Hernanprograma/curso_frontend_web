import 'package:curso_flutter_web_frontend_dashboard/router/route_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    //Initial route
    router.define(
      '/',
      handler: counterHandler,
      transitionDuration: const Duration(milliseconds: 10),
      transitionType: TransitionType.fadeIn,
    );
    //Stateful Routes
    router.define(
      '/stateful',
      handler: counterHandler,
      transitionDuration: const Duration(milliseconds: 10),
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/stateful/:base',
      handler: counterproviderHandler,
      transitionDuration: const Duration(milliseconds: 10),
      transitionType: TransitionType.fadeIn,
    );
    // Provider Routes
    router.define(
      '/provider',
      handler: counterproviderHandler,
      transitionDuration: const Duration(milliseconds: 10),
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/dashboard/users/:userid/:roleid',
      handler: dashboardUserHandler,
      transitionDuration: const Duration(milliseconds: 10),
      transitionType: TransitionType.fadeIn,
    );
    //403 - Not Found Page
    router.notFoundHandler = pageNotFound;
  }
}
