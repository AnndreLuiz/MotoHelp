import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 350,
              width: 350,
              child: Image.asset('lib/images/novologo.png'),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: 400,
                height: 80,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/regisMotoka');
                  },
                  child: Text(
                    'Motoqueiro, Motoboy, Motoka',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: 400,
                height: 80,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/registerPrestador');
                  },
                  child: Text(
                    'Prestador de Serviço, Mecânico',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
