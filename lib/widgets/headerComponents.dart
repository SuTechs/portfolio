import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '👋 Hi, I’m Afaq Ahmed',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 54,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'I’m a Product Designer with a passion to participate in every stage of digital product, from discovery to delivery. Helping to focus the business goals on users.',
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Color.fromRGBO(37, 50, 61, 0.6),
            fontSize: 20,
          ),
        ),
        SizedBox(height: 38),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(
              TextSpan(
                text: 'I’m looking for new opportunities\n',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff48545E),
                ),
                children: [
                  TextSpan(text: 'Previously I worked at '),
                  TextSpan(
                      text: 'Pickmeup Technologies',
                      style: TextStyle(color: Color(0xff2976F5)))
                ],
              ),
            ),

            ///
            Text.rich(
              TextSpan(
                text: 'Bangalore, India\n',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff5D87A8),
                ),
                children: [
                  TextSpan(
                      text: 'afaq7105@gmail.com',
                      style: TextStyle(color: Color(0xff2976F5))),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 38),

        /// view my resume button
        Container(
          width: 163,
          height: 52,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(250, 118, 96, 0.20000000298023224),
                  offset: Offset(0, 5),
                  blurRadius: 20)
            ],
            gradient: LinearGradient(
                begin: Alignment(-0.25, 0.25),
                end: Alignment(0.5, 0.5),
                colors: [
                  Color.fromRGBO(0, 55, 197, 1),
                  Color.fromRGBO(48, 131, 255, 1)
                ]),
          ),
          child: Center(
            child: Text(
              'View my resumè',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                height: 1.5,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class HeaderImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// image
        Positioned(
          top: 101,
          left: 56,
          child: Container(
              width: 247 + 64.0 + 8,
              height: 214 + 54.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(14)),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(25, 25, 46, 0.03999999910593033),
                      offset: Offset(0, 40),
                      blurRadius: 30)
                ],
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    /// image
                    CircleAvatar(
                      radius: 59,
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage('assets/profilePic.png'),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(250, 118, 96, 0.2),
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          child: Text(
                            'UX/UI',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 8),

                    /// name
                    Text(
                      'Afaq Ahmed',
                      style: TextStyle(
                          color: Color.fromRGBO(37, 50, 60, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),

                    SizedBox(height: 4),

                    /// location
                    Text(
                      'Bangalore',
                      style: TextStyle(
                        color: Color.fromRGBO(133, 159, 179, 1),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              )),
        ),

        /// icons

        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                textTile('🎨  Style Guide'),
                SizedBox(width: 57),
                textTile('🔍  User Research', true),
              ],
            ),

            /// icons

            Row(
              children: [
                Image.network('assets/figmaLogo.svg'),
                SizedBox(width: 182),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Image.network('assets/sketchLogo.svg'),
                ),
              ],
            ),

            ///
            Row(
              children: [
                textTile('🔔  Icons'),
                SizedBox(width: 204),
                textTile('🔀  Wireframing', true),
              ],
            ),

            ///
            Row(
              children: [
                textTile('🔍  Prototyping'),
                SizedBox(width: 89),
                textTile('🔤  Interactions', true),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget textTile(String text, [bool isTopPadding = false]) {
    return Padding(
      padding: EdgeInsets.only(top: isTopPadding ? 40 : 0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(25, 25, 46, 0.03999999910593033),
                offset: Offset(0, 40),
                blurRadius: 30)
          ],
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Color.fromRGBO(93, 134, 167, 1),
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
