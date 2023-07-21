import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/Home/data/repos/Home_repo_implement.dart';
import 'package:bookly_app/features/Home/peresentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/Home/peresentation/manager/newet_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyAPP());
}

class BooklyAPP extends StatelessWidget {
  const BooklyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: kPrimamryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
