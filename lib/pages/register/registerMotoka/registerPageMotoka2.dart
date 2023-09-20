import 'package:flutter/material.dart';

class RegisterPageMotoka2 extends StatefulWidget {
  const RegisterPageMotoka2({super.key});

  @override
  State<RegisterPageMotoka2> createState() => _RegisterPageMotoka2State();
}

class _RegisterPageMotoka2State extends State<RegisterPageMotoka2> {
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
                      hintText: "CRLV",
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
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Finalizar',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
