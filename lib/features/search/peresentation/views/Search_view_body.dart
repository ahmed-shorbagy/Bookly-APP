import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/peresentation/views/widgets/custom_text_search_field.dart';
import 'package:bookly_app/features/search/peresentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(12),
          child: CustomTextSearchField(),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.all(12),
          child: Text(
            'Result',
            style: Styles.textStyle18,
          ),
        ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(12),
          child: SearchResultListVIew(),
        ))
      ],
    );
  }
}
