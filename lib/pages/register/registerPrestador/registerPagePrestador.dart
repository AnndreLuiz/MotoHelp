import 'package:flutter/material.dart';
import 'package:motohelp/components/button_elevated.dart';
import 'package:motohelp/components/widget_register.dart';

class RegisterPrestador extends StatefulWidget {
  const RegisterPrestador({super.key});

  @override
  State<RegisterPrestador> createState() => _RegisterPrestadorState();
}

class _RegisterPrestadorState extends State<RegisterPrestador> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Form(
              child: Column(
                children: [
                  MyWidgetRegister(textinfo: 'Nome'),
                  SizedBox(height: 15),
                  MyWidgetRegister(textinfo: 'CPF'),
                  SizedBox(height: 15),
                  MyWidgetRegister(textinfo: 'Data Nascimento DD/MM/AAAA'),
                  SizedBox(height: 15),
                  MyWidgetRegister(textinfo: 'Celular'),
                  SizedBox(height: 15),
                  MyWidgetRegister(textinfo: 'Serviço Prestado'),
                  SizedBox(height: 15),
                  MyWidgetRegister(textinfo: 'Tempo de Experiência'),
                  SizedBox(height: 15),
                  MyWidgetRegister(textinfo: 'E-mail'),
                  SizedBox(height: 15),
                  MyWidgetRegister(textinfo: 'Senha'),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ButtonElevated(
                textButton: 'Proximo',
                navigatorIndicator: '/registerPrestador2'),
          ],
        ),
      ),
    );
  }
}
