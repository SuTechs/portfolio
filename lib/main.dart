import 'package:flutter/material.dart';
import 'package:portfolio/contstants.dart';
import 'package:portfolio/widgets/headerComponents.dart';
import 'package:portfolio/widgets/projectTile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Image.network(
                "assets/header.svg",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                height: 286,
              ),

              /// logo
              Padding(
                padding: const EdgeInsets.only(left: 72, top: 32),
                child: Image.network(
                  "assets/logo.svg",
                ),
              ),

              /// Header Text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 72),
                child: Row(
                  children: [
                    /// header text
                    Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 69),
                          child: HeaderText(),
                        )),

                    SizedBox(width: 64),

                    /// photo
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 117, left: 32),
                        child: HeaderImage(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 64),

          /// check out my work
          Center(
            child: Text(
              'Check out my work here',
              style: TextStyle(
                color: kBlueColor,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 64),

          /// products
          ProjectTile(isLeftImage: false),

          SizedBox(height: 64),

          ProjectTile(isLeftImage: true),

          SizedBox(height: 64),

          ProjectTile(isLeftImage: false),

          SizedBox(height: 64),
        ],
      ),
    );
  }
}
