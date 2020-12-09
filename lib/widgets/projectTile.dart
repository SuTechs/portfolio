import 'package:flutter/material.dart';

import '../contstants.dart';

class ProjectTile extends StatelessWidget {
  final bool isLeftImage;
  const ProjectTile({Key key, @required this.isLeftImage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 101),
      child: Row(
        textDirection:
            isLeftImage ?? false ? TextDirection.rtl : TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// project description
          Expanded(
            flex: 3,
            child: ProjectDescription(),
          ),

          SizedBox(width: 64),

          /// photo
          Expanded(
            flex: 2,
            child: ProjectImage(),
          ),
        ],
      ),
    );
  }
}

/// components

class ProjectDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        /// project title
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Rafiki',
              style: TextStyle(
                color: Color.fromRGBO(37, 50, 61, 1),
                fontSize: 36,
              ),
            ),
            SizedBox(width: 16),
            Text(
              'Design Lead',
              style: TextStyle(
                color: kGreyColor,
                fontSize: 20,
              ),
            )
          ],
        ),

        SizedBox(height: 4),

        /// blue
        BlueStyleDot(),

        SizedBox(height: 4),

        /// category
        Text(
          'Marketing Collaterals $kDotText Website $kDotText Marketing Collaterals',
          textAlign: TextAlign.left,
          style: TextStyle(
            color: kGreyColor,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 28),

        /// descriptions
        ProjectTileDescriptionText(
          text:
              'Rafiki is an AI based conversation intelligence platform, mostly used by people in sales to get filtered insights into their sales calls.',
        ),
        SizedBox(height: 16),
        ProjectTileDescriptionText(
          text:
              'Backed by extensive market research and analysis, my job was to revamp the information architecture and workflow of the app to make the features more accessible and usable.',
        ),
        SizedBox(height: 16),
        ProjectTileDescriptionText(
          text:
              'Conducted user research, competetive analysis, usabilty testing, etc. Also worked on the marketing collatoral, pitch deck presentations with product screens.',
        ),
      ],
    );
  }
}

class ProjectImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 402,
      height: 335,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              offset: Offset(0, 0),
              blurRadius: 24)
        ],
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
    );
  }
}

class BlueStyleDot extends StatelessWidget {
  final bool isVertical;

  const BlueStyleDot({Key key, this.isVertical = false}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: isVertical ? 10 : 60,
      height: isVertical ? 20 : 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(250, 118, 96, 0.20000000298023224),
              offset: Offset(0, 5),
              blurRadius: 20)
        ],
        gradient: LinearGradient(
            end: Alignment(0.5, 0.5),
            begin: Alignment(-0.25, 0.25),
            colors: [
              Color.fromRGBO(0, 55, 197, 1),
              Color.fromRGBO(48, 131, 255, 1)
            ]),
      ),
    );
  }
}

class ProjectTileDescriptionText extends StatelessWidget {
  final String text;

  const ProjectTileDescriptionText({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// blue dot
        BlueStyleDot(isVertical: true),

        SizedBox(width: 10),

        /// text
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: kBlackColor,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
