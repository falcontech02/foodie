import 'package:flutter/material.dart';

import '../author_tab.dart';
import '../text_widget.dart';

class  Profil extends StatelessWidget {
// const ({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
return Center(
  child:   Container(

    padding: const EdgeInsets.all(10),

    constraints: const BoxConstraints.expand(width: 300,height: 400),

    decoration: const BoxDecoration(

        image: DecorationImage(

          image: AssetImage('assets/images/pexels.jpeg'),

          fit: BoxFit.cover,

        ),

        borderRadius: BorderRadius.all(

          Radius.circular(15),

        )

    ),
    child: Column(
      children: <Widget>[
        AuthorTab(),
        Expanded(child: Stack(
          children: <Widget>[
            Positioned(
              child: RotatedBox(
                quarterTurns: 3,
                child: textEntry(
                    "Pizza",
                    Theme.of(context).textTheme.headline2
                ),
              ),
              top: 40,
            ),
            Positioned(
              child: textEntry(
                  "Smoothies",
                  Theme.of(context).textTheme.headline5
              ),
              bottom: 40,
              right: 0,
            ),
          ],
        ))
      ],
    ),

  ),
);
}
}