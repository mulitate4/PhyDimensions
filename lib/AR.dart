import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class ARPage extends StatefulWidget {
  ARPage({Key? key, title}) : super(key: key);

  @override
  _ARPageState createState() => _ARPageState();
}

class _ARPageState extends State<ARPage> {
  InAppBrowser browser = new InAppBrowser();
  var options = InAppBrowserClassOptions(
      crossPlatform: InAppBrowserOptions(hideUrlBar: false),
      inAppWebViewGroupOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(javaScriptEnabled: true)));

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
            onPressed: () {
              browser.openUrlRequest(
                  urlRequest: URLRequest(
                      url: Uri.parse(
                          "https://api.echo3d.co/webar?key=mute-silence-8060&entry=69099018-7284-43d1-af46-c68b6fb41225")),
                  options: options);
            },
            child: Text("Open InAppBrowser")));
  }
}
