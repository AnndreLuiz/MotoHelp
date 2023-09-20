import 'package:flutter/material.dart';

class ButtonElevated extends StatefulWidget {
  final String textButton;
  final String navigatorIndicator;
  const ButtonElevated(
      {super.key, required this.textButton, required this.navigatorIndicator});

  @override
  State<ButtonElevated> createState() => _ButtonElevatedState();
}

class _ButtonElevatedState extends State<ButtonElevated> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35),
      child: SizedBox(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(widget.navigatorIndicator);
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              widget.textButton,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat-SemiBold'),
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.blue,
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
