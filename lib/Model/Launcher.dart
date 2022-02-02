import 'package:url_launcher/url_launcher.dart';
class Launcher {
  launchURL(String link) async {
    var url = link;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  launchEmail() async {
      if (await canLaunch("mailto:kgshametha@gmail.com")) {
        await launch("mailto:kgshametha@gmail.com");
      } else {
        throw 'Could not launch';
      }
    }

}
