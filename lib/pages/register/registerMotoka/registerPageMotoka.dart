import 'package:flutter/material.dart';

class RegisterPageMotoka extends StatefulWidget {
  const RegisterPageMotoka({super.key});

  @override
  State<RegisterPageMotoka> createState() => _RegisterPageMotokaState();
}

class _RegisterPageMotokaState extends State<RegisterPageMotoka> {
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
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(11),
                        ),
                      ),
                      hintText: "Nome",
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
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(11),
                        ),
                      ),
                      hintText: "CPF",
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
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(11),
                        ),
                      ),
                      hintText: "Data Nascimento DD/MM/AAAA",
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
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(11),
                        ),
                      ),
                      hintText: "Celular",
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
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(11),
                        ),
                      ),
                      hintText: "E-mail",
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
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(11),
                        ),
                      ),
                      hintText: "Senha",
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: 'tahoma',
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Colors.blue,
                      filled: true,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                child: ElevatedButton(
                  child: Text(
                    'Proximo',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/registerMotoka');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
