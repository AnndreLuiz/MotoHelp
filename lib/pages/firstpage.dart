import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:motohelp/components/my_drawer_header.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Olá, Teste'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            Padding(
              padding: const EdgeInsets.only(
                left: 60.0,
                right: 60,
              ),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'Você é Premium',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'tahoma',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: Image.asset('lib/images/planoouro.png'),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Serviços',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'tahoma',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  servicosWidget(
                    'Pneu Furado',
                    Image.asset('lib/images/pneufurado.png'),
                  ),
                  servicosWidget(
                    'Oleo',
                    Image.asset('lib/images/trocaOleo.png'),
                  ),
                  servicosWidget(
                    'Revisão',
                    Image.asset('lib/images/revisao.png'),
                  ),
                  servicosWidget(
                    'Guincho',
                    Image.asset('lib/images/guincho.png'),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/servico');
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
                              height: 60,
                              width: 60,
                              child: Center(
                                child: Image.asset('lib/images/iconmais.png'),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Ver Mais',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'tahoma',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Solicitar novamente',
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 1.0, left: 20, bottom: 1, right: 20),
                    child: Container(
                      width: 210,
                      height: 210,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 90,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  'Guincho',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'tahoma',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              width: 100,
                              height: 100,
                              child: Image.asset('lib/images/guincho.png'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  'Solicitar',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'tahoma',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 1.0, left: 20, bottom: 1, right: 20),
                    child: Container(
                      width: 210,
                      height: 210,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 90,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  'Combustivel',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'tahoma',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              width: 100,
                              height: 100,
                              child: Image.asset(
                                  'lib/images/bombadecombustivel.png'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  'Solicitar',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'tahoma',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 1.0, left: 20, bottom: 1, right: 20),
                    child: Container(
                      width: 210,
                      height: 210,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 90,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  'Pneu Furado',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'tahoma',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              width: 100,
                              height: 100,
                              child: Image.asset('lib/images/pneufurado.png'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  'Solicitar',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'tahoma',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 1.0, left: 20, bottom: 1, right: 20),
                    child: Container(
                      width: 210,
                      height: 210,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 90,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  'Freios',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'tahoma',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              width: 100,
                              height: 100,
                              child: Image.asset('lib/images/discodefreio.png'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Text(
                                  'Solicitar',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'tahoma',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
          child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              MyHeaderDrawer(),
              MydrawerList(),
            ],
          ),
        ),
      )),
    );
  }

  Widget MydrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        children: [
          menuItem(),
          menuItem2(),
          menuItem3(),
          menuItem4(),
          menuItem5(),
        ],
      ),
    );
  }

  Widget menuItem() {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                  child: Icon(Icons.dashboard_outlined,
                      size: 20, color: Colors.black)),
              Expanded(
                  flex: 1,
                  child: Text('Minha Conta',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      )))
            ],
          ),
        ),
      ),
    );
  }

  Widget menuItem2() {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                  child: Icon(Icons.contacts, size: 20, color: Colors.black)),
              Expanded(
                  flex: 1,
                  child: Text('Meu Plano',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      )))
            ],
          ),
        ),
      ),
    );
  }

  Widget menuItem3() {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                  child: Icon(Icons.notifications_outlined,
                      size: 20, color: Colors.black)),
              Expanded(
                  flex: 1,
                  child: Text('Solicitações',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      )))
            ],
          ),
        ),
      ),
    );
  }

  Widget menuItem4() {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(child: Icon(Icons.help, size: 20, color: Colors.black)),
              Expanded(
                  flex: 1,
                  child: Text('Ajuda',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      )))
            ],
          ),
        ),
      ),
    );
  }

  Widget menuItem5() {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed('/');
        },
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                  child:
                      Icon(Icons.exit_to_app, size: 20, color: Colors.black)),
              Expanded(
                  flex: 1,
                  child: Text('Sair',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}

Widget servicosWidget(String textServices, Image iconesServices) {
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
            child: Container(
              height: 60,
              width: 60,
              child: Center(
                child: iconesServices,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            textServices,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'tahoma',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
