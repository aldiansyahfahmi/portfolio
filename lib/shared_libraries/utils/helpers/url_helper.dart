import 'package:url_launcher/url_launcher.dart';

class UrlHelper {
  static void openLinkInNewTab(String link) async {
    final Uri url = Uri.parse(link);
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }
}
