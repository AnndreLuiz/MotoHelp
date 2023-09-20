import 'package:flutter/material.dart';
import 'package:motohelp/components/button_elevated.dart';

class RegisterPagePrestador2 extends StatefulWidget {
  const RegisterPagePrestador2({super.key});

  @override
  State<RegisterPagePrestador2> createState() => _RegisterPagePrestador2State();
}

class _RegisterPagePrestador2State extends State<RegisterPagePrestador2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              child: Column(
                children: [
                  TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.black,
                        ),
                      ),
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      hintText: "CNH",
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: 'tahoma',
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Colors.blue,
                      filled: true,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.black,
                        ),
                      ),
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      hintText: "Foto do rosto",
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: 'tahoma',
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Colors.blue,
                      filled: true,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            ButtonElevated(textButton: 'Finalizar', navigatorIndicator: '/new'),
          ],
        ),
      ),
    );
  }
}
