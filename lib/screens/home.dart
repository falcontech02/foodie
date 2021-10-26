import 'package:flutter/material.dart';
import 'package:foodie/foodie_theme.dart';
import 'package:foodie/text_widget.dart';

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(

        padding: const EdgeInsets.all(10),
        constraints: const BoxConstraints.expand(width: 300,height: 400),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/spag.jpg'),
            fit: BoxFit.cover,
          ),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        )
        ),
        child: Stack(
          children: [
            Positioned(
              child: textEntry(
                  'Grafil House',
                  FoodTheme.darkTextTheme.bodyText1
              ),
              top: 20,
            ),
            Positioned(
              child: textEntry(
                  "Donald's Kitchen",
                  Theme.of(context).textTheme.headline5
              ),
              bottom: 30,
              right: 10,
            ),
            Positioned(
              child: textEntry(
                  "The nicest dough in town",
                  Theme.of(context).textTheme.bodyText1
              ),
              top: 40,
            ),
            Positioned(
              child: textEntry(
                  "Anderson Chef",
                  Theme.of(context).textTheme.headline5
              ),
              bottom: 60,
              right: 10,
            ),
          ],
        ),
      ),
    );
  }
}
