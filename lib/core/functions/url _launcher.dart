import 'package:url_launcher/url_launcher.dart';

Future<void> customUrlLauncher({required String url}) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    launchUrl(uri);
  }
}
