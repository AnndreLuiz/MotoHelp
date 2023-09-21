import 'package:flutter/material.dart';
import 'package:motohelp/components/widget_service.dart';

class PagesServicos extends StatefulWidget {
  const PagesServicos({super.key});

  @override
  State<PagesServicos> createState() => _PagesServicosState();
}

class _PagesServicosState extends State<PagesServicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Do que precisa hoje?',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'tahoma',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(11),
                      ),
                    ),
                    hintText: "Buscar serviço",
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: 'tahoma',
                      fontWeight: FontWeight.bold,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(12),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: VisualDensity.maximumDensity,
                  ),
                  child: Column(
                    children: <Widget>[
                      MyWidgetService(
                        navigatorPage: '/servicoguincho',
                        textInfo: 'Pneu Furado',
                        imageInfo: Image.asset('lib/images/pneufurado.png'),
                      ),
                      MyWidgetService(
                        navigatorPage: '/servicoguincho',
                        textInfo: 'Oleo',
                        imageInfo: Image.asset('lib/images/trocaOleo.png'),
                      ),
                      MyWidgetService(
                        navigatorPage: '/servicoguincho',
                        textInfo: 'Revisão',
                        imageInfo: Image.asset('lib/images/revisao.png'),
                      ),
                      MyWidgetService(
                        navigatorPage: '/servicoguincho',
                        textInfo: 'Guincho',
                        imageInfo: Image.asset(
                          'lib/images/guincho.png',
                        ),
                      ),
                      MyWidgetService(
                        navigatorPage: '/servicoguincho',
                        textInfo: 'Abastecer',
                        imageInfo: Image.asset(
                          'lib/images/abastecimento.png',
                        ),
                      ),
                      MyWidgetService(
                        navigatorPage: '/servicoguincho',
                        textInfo: 'Carga na bateria',
                        imageInfo: Image.asset(
                          'lib/images/carganabateria.png',
                        ),
                      ),
                      MyWidgetService(
                        navigatorPage: '/servicoguincho',
                        textInfo: 'Trocar pneu',
                        imageInfo: Image.asset(
                          'lib/images/trocarpneu.png',
                        ),
                      ),
                      MyWidgetService(
                        navigatorPage: '/servicoguincho',
                        textInfo: 'Trocar pastilha de freio',
                        imageInfo: Image.asset(
                          'lib/images/discodefreio.png',
                        ),
                      ),
                      MyWidgetService(
                        navigatorPage: '/servicoguincho',
                        textInfo: 'Trocar Lampada',
                        imageInfo: Image.asset(
                          'lib/images/farol.png',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
