import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/Home/data/Models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/data/repos/Home_repo_implement.dart';
import 'package:bookly_app/features/Home/peresentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/Home/peresentation/views/Book_details_view.dart';
import 'package:bookly_app/features/Home/peresentation/views/Home_page.dart';
import 'package:bookly_app/features/search/peresentation/views/search_view.dart';
import 'package:bookly_app/features/splash/peresentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHOmeView = '/HomeView';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashVIew(),
      ),
      GoRoute(
        path: kHOmeView,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(book: state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
