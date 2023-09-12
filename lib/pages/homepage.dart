import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 350,
            width: 350,
            child: Image.asset('lib/images/novologo.png'),
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  loginwidget('E-mail'),
                  const SizedBox(
                    height: 10,
                  ),
                  loginwidget('Senha'),
                  const SizedBox(
                    height: 10,
                  ),
                  cadastradoWithProblem(
                      context, 'Esqueceu seu login ou senha? '),
                  const SizedBox(
                    height: 10,
                  ),
                  cadastradoWithProblem(context, 'Não é registrado? '),
                  const SizedBox(
                    height: 10,
                  ),
                  bottonEnter(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget loginwidget(String controllerEeP) {
  return TextFormField(
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.all(10),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(11),
        ),
      ),
      hintText: controllerEeP,
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

Widget bottonEnter(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(35),
    child: SizedBox(
      height: 50,
      width: 105,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/new');
        },
        child: const Text(
          'Entrar',
          style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Montserrat-SemiBold'),
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

Widget cadastradoWithProblem(BuildContext context, String texto) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        texto,
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Tahoma',
        ),
      ),
      InkWell(
        child: Text(
          'Clique aqui',
          style: TextStyle(
            fontFamily: 'Tahoma',
            color: Color.fromRGBO(255, 214, 0, 1),
          ),
        ),
        onTap: () {
          Navigator.of(context).pushNamed('/regis');
        },
      )
    ],
  );
}
