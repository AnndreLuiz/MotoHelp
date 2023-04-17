import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage('lib/images/avatarperfil.jpg'),),
          ),
          ),
          Text('Test', style: TextStyle(color: Colors.white, fontSize:20),),
          Text('test@test.com', style: TextStyle(color: Colors.white, fontSize: 20),),
        ]),
    );
  }
}