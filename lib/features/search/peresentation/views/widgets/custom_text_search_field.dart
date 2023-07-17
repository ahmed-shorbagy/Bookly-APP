import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextSearchField extends StatelessWidget {
  const CustomTextSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          suffixIconColor: Colors.white.withOpacity(.8),
          enabledBorder: customBoroder(),
          focusedBorder: customBoroder(),
          disabledBorder: customBoroder(),
          suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(size: 20, FontAwesomeIcons.magnifyingGlass)),
          hintText: 'Search',
          border: customBoroder()),
    );
  }

  OutlineInputBorder customBoroder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.white));
  }
}
