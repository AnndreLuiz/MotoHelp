import 'package:flutter/material.dart';
import 'package:motohelp/pages/firstpage.dart';
import 'package:motohelp/pages/homepage.dart';
import 'package:motohelp/pages/servicos/pageguincho.dart';
import 'package:motohelp/pages/servicos/pageservicos.dart';
import 'package:motohelp/pages/register/registerMotoka/registerPageMotoka.dart';
import 'package:motohelp/pages/register/registerMotoka/registerPageMotoka2.dart';
import 'package:motohelp/pages/register/registerPrestador/registerPagePrestador.dart';
import 'package:motohelp/pages/register/registerPrestador/registerPagePrestador2.dart';
import 'package:motohelp/pages/register/registerpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MotoHelp',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 59, 102, 137),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        '/regisMotoka': (context) => const RegisterPageMotoka(),
        '/registerMotoka': (context) => const RegisterPageMotoka2(),
        '/new': (context) => const FirstPage(),
        '/regist': (context) => const RegisterPage(),
        '/registerPrestador': (context) => const RegisterPrestador(),
        '/registerPrestador2': (context) => const RegisterPagePrestador2(),
        '/servico': (context) => const PagesServicos(),
        '/servicoguincho': (context) => const PageGuincho(),
      },
      initialRoute: '/',
    );
  }
}
