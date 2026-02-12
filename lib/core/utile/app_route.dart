import 'package:go_router/go_router.dart';
import 'package:goldy/feature/home/presentation/views/home_Secreen.dart';

class AppRoute {
  // GoRouter configuration
  static const khomeviews = '/homeviews';
  static final route = GoRouter(
    routes: [
      GoRoute(path: khomeviews, builder: (context, state) => HomeSecreen()),
    ],
  );
}
