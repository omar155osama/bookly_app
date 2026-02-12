import 'package:clean_boookly/features/home/presentation/views/details_view.dart';
import 'package:clean_boookly/features/home/presentation/views/home_screen.dart';
import 'package:clean_boookly/features/search/presentation/views/search_view.dart';
import 'package:clean_boookly/features/splash/presention/views/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kSplashScreen = '/';
  static const kHomeScreen = '/HomeScreen';
  static const kDetailsScreen = '/DetailsView';
  static const kSearchScreen = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: kSplashScreen, builder: (context, state) => SplashScreen()),
      GoRoute(path: kHomeScreen, builder: (context, state) => HomeScreen()),
      GoRoute(path: kDetailsScreen, builder: (context, state) => DetailsView()),
      GoRoute(path: kSearchScreen, builder: (context, state) => SearchView()),
    ],
  );
}
