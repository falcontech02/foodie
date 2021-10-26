import 'package:flutter/material.dart';
import 'package:foodie/home_screen.dart';
import './foodie_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var theme = FoodTheme.light();
  bool isDone = false;

  void changeTheme(){
    isDone = !isDone;
    if (isDone == true){
      setState(() {
         theme = FoodTheme.dark();
      });
    }else{
      setState(() {
        theme = FoodTheme.light();
      });
    }

  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Foodie',
      theme: theme,
      home: HomeScreen(changeTheme: changeTheme,),
    );
  }
}

