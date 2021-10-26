import 'package:flutter/material.dart';
import 'package:foodie/text_widget.dart';

import 'foodie_theme.dart';

class AuthorTab extends StatefulWidget {
  const AuthorTab({Key? key}) : super(key: key);

  @override
  _AuthorTabState createState() => _AuthorTabState();
}

class _AuthorTabState extends State<AuthorTab> {
  bool isClick = false;
  void _onClicked(){
    setState(() {
      isClick = !isClick;
    });

    var snackBar = SnackBar(content: Text('Favorite Pressed'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/profil.jpg'),
            radius: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              textEntry('Chef Anderson', FoodTheme.lightTextTheme.bodyText1),
              textEntry('King of dough', FoodTheme.lightTextTheme.bodyText1)
            ],
          ),
          IconButton(
              onPressed: _onClicked,
              icon: isClick ? Icon(Icons.favorite) : Icon(Icons.favorite_border_outlined)   ,
            iconSize: 30,
            color: isClick ?   Colors.red : Colors.grey[400],
          )
        ],
      ),
    );
  }
}
