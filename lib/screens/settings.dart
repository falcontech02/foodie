import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  final Function changeTheme;
const Settings({Key? key, required this.changeTheme}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool value = false;
@override
Widget build(BuildContext context) {
return Container(

    child: Center(
      child: Column(
        children: [
          Text('This is the Foodie App'),
          Row(
            children: [
               Text('Make Your Choice',
              style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(width: 10,),
              Checkbox(value: value, onChanged: (bool? value){
               setState(() {
                 this.value = value!;
               });
              }),

            ],
          ),
          ElevatedButton(onPressed: () =>

            widget.changeTheme(),
           child: Text('text'))
        ],
      ),
    ),

);
}
}