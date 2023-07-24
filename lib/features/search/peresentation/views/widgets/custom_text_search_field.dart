import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextSearchField extends StatelessWidget {
  const CustomTextSearchField(
      {super.key,
      required this.onSearchIconPressed,
      this.onChanged,
      this.onSubmitted});
  final void Function() onSearchIconPressed;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onSubmitted,
      onChanged: onChanged,
      decoration: InputDecoration(
          suffixIconColor: Colors.white.withOpacity(.8),
          enabledBorder: customBoroder(),
          focusedBorder: customBoroder(),
          disabledBorder: customBoroder(),
          suffixIcon: IconButton(
              onPressed: onSearchIconPressed,
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
