import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:swainston_dev/styles.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.red,
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 600.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("raw_logo.png", height: 400),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () => launchUrlString("https://gameplanapps.com"),
                        icon: Padding(
                          padding: const EdgeInsets.only(bottom: 0.0),
                          child: Image.asset("gameplan_blue_adjusted.png", height: 38.0,),
                        ),
                        iconSize: 48.0,
                      ),
                      const SizedBox(width: 24.0),
                      IconButton(
                        onPressed: () => launchUrlString("https://linkedin.com/in/coryswainston"),
                        icon: const Icon(
                          LineAwesomeIcons.linkedin_in,
                          color: Styles.blue,
                        ),
                        iconSize: 48.0,
                      ),
                      const SizedBox(width: 24.0),
                      IconButton(
                        onPressed: () => launchUrlString("https://github.com/coryswainston"),
                        icon: const Icon(
                          LineAwesomeIcons.github,
                          color: Styles.blue,
                        ),
                        iconSize: 48.0,
                      ),
                      const SizedBox(width: 24.0),
                      IconButton(
                        onPressed: () => launchUrlString("https://twitter.com/coryswainston"),
                        icon: const Icon(
                          LineAwesomeIcons.twitter,
                          color: Styles.blue,
                        ),
                        iconSize: 48.0,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
