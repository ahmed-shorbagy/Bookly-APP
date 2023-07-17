import 'package:bookly_app/core/utils/size_config.dart';
import 'package:bookly_app/features/Home/peresentation/views/widgets/home_page_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: HomePageBody(),
    );
  }
}
