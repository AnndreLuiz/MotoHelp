import 'package:flutter/material.dart';

class MyWidgetRegister extends StatefulWidget {
  final String textinfo;
  const MyWidgetRegister({Key? key, required this.textinfo}) : super(key: key);

  @override
  State<MyWidgetRegister> createState() => _MyWidgetRegisterState();
}

class _MyWidgetRegisterState extends State<MyWidgetRegister> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(11),
          ),
        ),
        hintText: widget.textinfo,
        hintStyle: const TextStyle(
          color: Colors.white,
          fontFamily: 'tahoma',
          fontWeight: FontWeight.bold,
        ),
        fillColor: Colors.blue,
        filled: true,
      ),
    );
  }
}
