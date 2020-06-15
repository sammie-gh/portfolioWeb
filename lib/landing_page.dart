import 'dart:html';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String desc =
      "Experienced Android Developer with a demonstrated history of working in the computer software industry. Skilled in Computer Networking, User Interface Design, Android Development, Android Studio, and Copywriting. ";

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          const Color(0xff213A50),
          const Color(0xff071930),
        ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
//              borderRadius: BorderRadius.all(Radius.circular(80)),
                child: Image.asset(
              "assets/evans.png",
                  width: 180,
                  height: 180,
            )),
            SizedBox(
              height: 12,
            ),

            //Name Text
            Text(
              "Evans Drah",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 8,
            ),
            //description Text
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(desc,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Connect with me",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    _launchURL("https://web.facebook.com/Sammie.ev/");
                  },
                  child: Image.asset(
                    "assets/Facebook.png",
                    width: 25,
                    height: 25,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL("https://github.com/sammie-gh");
                  },
                  child: Image.asset(
                    "assets/Github.png",
                    color: Colors.white,
                    width: 25,
                    height: 25,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL("https://twitter.com/SJKOED");
                  },
                  child: Image.asset(
                    "assets/twitter.png",
                    width: 25,
                    height: 25,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: (){
                _launchURL("https://www.linkedin.com/in/drah-evans");
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                    gradient: LinearGradient(colors: [
                  const Color(0xffA2834D),
                  const Color(0xffBC9A5F)
                ])),
                child: Text(
                  "Download My Resume",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
