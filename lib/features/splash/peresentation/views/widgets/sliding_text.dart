import 'package:bookly_app/features/splash/peresentation/views/widgets/splash_view_body.dart';
import 'package:flutter/cupertino.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animation,
        builder: (context, _) {
          return SlideTransition(
            position: animation,
            child: Text(
              textAlign: TextAlign.center,
              'Explore A Whole Free Amazing Books',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          );
        });
  }
}
