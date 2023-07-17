import 'package:bookly_app/features/Home/peresentation/views/Book_details_view.dart';
import 'package:bookly_app/features/Home/peresentation/views/Home_page.dart';
import 'package:bookly_app/features/search/peresentation/views/search_view.dart';
import 'package:bookly_app/features/splash/peresentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHOmeView = '/HomeView';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashVIew(),
      ),
      GoRoute(
        path: kHOmeView,
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}
