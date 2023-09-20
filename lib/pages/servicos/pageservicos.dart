import 'package:flutter/material.dart';

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
                      servicosWidgetPag(
                        'Pneu Furado',
                        Image.asset('lib/images/pneufurado.png'),
                      ),
                      servicosWidgetPag(
                        'Oleo',
                        Image.asset('lib/images/trocaOleo.png'),
                      ),
                      servicosWidgetPag(
                        'Revisão',
                        Image.asset('lib/images/revisao.png'),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/servicoguincho');
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: EdgeInsets.all(8),
                                child: Container(
                                  height: 150,
                                  width: 150,
                                  child: Center(
                                    child:
                                        Image.asset('lib/images/guincho.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Guincho',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'tahoma',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      servicosWidgetPag(
                        'Abastecer',
                        Image.asset('lib/images/abastecimento.png'),
                      ),
                      servicosWidgetPag(
                        'Carga na bateria',
                        Image.asset('lib/images/carganabateria.png'),
                      ),
                      servicosWidgetPag(
                        'Carga na bateria',
                        Image.asset('lib/images/carganabateria.png'),
                      ),
                      servicosWidgetPag(
                        'Trocar pneu',
                        Image.asset('lib/images/trocarpneu.png'),
                      ),
                      servicosWidgetPag(
                        'Trocar pastilha de freio',
                        Image.asset('lib/images/discodefreio.png'),
                      ),
                      servicosWidgetPag(
                        'Trocar Lampada',
                        Image.asset('lib/images/farol.png'),
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

Widget servicosWidgetPag(String textInfo, Image imageInfo) {
  return InkWell(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              height: 150,
              width: 150,
              child: Center(
                child: imageInfo,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            textInfo,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'tahoma',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
