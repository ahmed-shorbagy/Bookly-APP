import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BooklyAPP());
}

class BooklyAPP extends StatelessWidget {
  const BooklyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp();
  }
}
