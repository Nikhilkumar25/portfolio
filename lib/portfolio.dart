import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import 'package:url_launcher/url_launcher.dart';

class Portfolio extends StatelessWidget {
  final resumeUrl =
      "https://iamnikhil.netlify.app/files/resume/Resume-Nikhil-Kumar.pdf";

  final email = "nikhilaggarwal122@gmail.com";

  String about1 =
      "I am a third-year student pursuing Int. M.Tech. In Geological Technology at IIT Roorkee, I am an enthusiastic learner with a good team spirit and communication skills. I am interested in Entrepreneurship, Mobile app development, Geological research.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Portfolio"),
        actions: [
          IconButton(
              onPressed: () {
                openUrl(resumeUrl);
              },
              icon: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: Icon(Icons.download),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Nikhil Kumar",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 33,
                fontWeight: FontWeight.w900,
              ),
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(75.0),
                child: Image.asset(
                  "/images/abc.png",
                  width: 150.0,
                  height: 150.0,
                  fit: BoxFit.scaleDown,
                )),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                "Building Kalayaam | App Developer",
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.w100,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            const Text(
              "IIT Roorkee",
              style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.w100,
                  fontSize: 18),
              textAlign: TextAlign.center,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.email_rounded,
                    color: Colors.red,
                    size: 40,
                  ),
                  onPressed: () {
                    sendMail(email);
                  },
                ),
              ],
            ),
            Text(
              about1,
              style: const TextStyle(fontSize: 16, fontStyle: FontStyle.normal),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> openUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: false);
    } else {
      throw ("can't launch $url");
    }
  }

  Future<void> sendMail(String url) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: url,
    );

    if (await canLaunch(emailLaunchUri.toString())) {
      await launch(emailLaunchUri.toString(), forceWebView: false);
    } else {
      throw ("can't launch $url");
    }
  }
}
