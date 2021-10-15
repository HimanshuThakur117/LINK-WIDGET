import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Link widget"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 40.0,
              ),

              Link(
                uri: Uri.parse(
                    'https://flutter.dev/'),
                  target: LinkTarget.self,
                builder: (context, followLink) {
                  return ElevatedButton(
                    onPressed: followLink,
                    child: Text("open link inside the app",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        )),
                  );
                }
              ),

              SizedBox(
                height: 40.0,
              ),

              Link(
                  uri: Uri.parse(
                      'https://pub.dev/'),
                  target: LinkTarget.blank,
                  builder: (context, followLink) {
                    return ElevatedButton(
                      onPressed: followLink,
                      child: Text("open link outside the app",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          )),
                    );
                  }
              ),

            ],
          ),
        ),
      ),
    );
  }


}
