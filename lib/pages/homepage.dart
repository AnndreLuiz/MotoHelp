import 'package:flutter/material.dart';
import 'package:motohelp/components/button_elevated.dart';

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
          SizedBox(
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
                  ButtonElevated(
                    textButton: 'Entrar',
                    navigatorIndicator: '/new',
                  ),
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
        borderSide: BorderSide(color: Colors.white, width: 2),
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

Widget cadastradoWithProblem(BuildContext context, String texto) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        texto,
        textAlign: TextAlign.left,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: 'Tahoma',
        ),
      ),
      InkWell(
        child: const Text(
          'Clique aqui',
          style: TextStyle(
            fontFamily: 'Tahoma',
            color: Color.fromRGBO(255, 214, 0, 1),
          ),
        ),
        onTap: () {
          Navigator.of(context).pushNamed('/regist');
        },
      )
    ],
  );
}
