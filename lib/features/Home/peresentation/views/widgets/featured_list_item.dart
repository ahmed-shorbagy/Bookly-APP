import 'package:bookly_app/features/Home/data/Models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage(
      {super.key, required this.imageUrl, required this.book});
  final String imageUrl;
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: book);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: AspectRatio(
            aspectRatio: 2.7 / 4.5,
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.fill,
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
      ),
    );
  }
}
