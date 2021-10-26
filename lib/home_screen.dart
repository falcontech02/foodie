import 'package:flutter/material.dart';
import 'package:foodie/screens/profile.dart';
import 'package:foodie/screens/settings.dart';
import './screens/home.dart';
import './screens/settings.dart';

class  HomeScreen extends StatefulWidget {
  final Function changeTheme;
  HomeScreen({required this.changeTheme});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  initState(){
    super.initState();
    function = widget.changeTheme;
  }

int _selectedIndex = 0;
  static var function;

static List<Widget> pages = [

  Home(),
  Profil(),
 Settings(changeTheme: function),
];

void _ontapped(int index){
  setState(() {
    _selectedIndex = index;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title:  Text('FOODIE',
    style: Theme.of(context).textTheme.headline3,
    ),
    ),
      body: pages[_selectedIndex],




      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _ontapped,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          const BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        ],
      ),
    );
  }
}
