import 'package:bookly_app/features/Home/peresentation/views/widgets/simillar_books_list_view.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';

class SimillarBooksSection extends StatelessWidget {
  const SimillarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40, left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'You can also like',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 16,
          ),
          const SimillarBooksListView()
        ],
      ),
    );
  }
}
