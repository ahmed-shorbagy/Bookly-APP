import 'package:flutter/cupertino.dart';

class SearchResultListVIew extends StatelessWidget {
  const SearchResultListVIew({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          // child: NewestBooksListITem( book:),
        );
      },
      itemCount: 6,
    );
  }
}
