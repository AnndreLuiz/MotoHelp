import 'package:flutter/material.dart';
import 'package:motohelp/pages/my_drawer_header.dart';

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
      body: Column(
        children: [
          Form(
            child: TextFormField(
                 decoration: InputDecoration(
                   prefixIcon: Padding(padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                        ),
                        ),
                   contentPadding: EdgeInsets.all(10),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(11),
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
                 ),),
                 SizedBox(
                   height: 15,
                 ),
          Padding(
            padding: const EdgeInsets.only(left: 60.0, right: 60,),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text('Você é Premium',style: TextStyle(fontSize:20), ),
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
            child: Text('Serviços'),),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(12),
              child: Row(children: [
              Column(children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(8),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                      child: Image.asset('lib/images/pneufurado.png'),
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Text('Pneu Furado'),
              ],),
              Column(children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(8),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                      child: Image.asset('lib/images/trocaOleo.png'),
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Text('Oleo'),
              ],),
              Column(children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(8),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                      child: Image.asset('lib/images/revisao.png'),
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Text('Revisão'),
              ],),
              Column(children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(8),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                      child: Image.asset('lib/images/guincho.png'),
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Text('Guincho'),
              ],),
              Column(children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(8),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                      child: Image.asset('lib/images/pneufurado.png'),
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Text('Ver Mais'),
              ],),

              
            ],),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
            alignment: Alignment.topLeft,
            child: Text('Solicitar novamente'),),
            SizedBox(height: 10,),

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
              ),
            )

            

        ],
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
        )
      ),
    );
  }

  Widget MydrawerList(){
    return Container(
      padding: EdgeInsets.only(top:15,),
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

  Widget menuItem(){
    return Material(
      child: InkWell(
        onTap: (){},
        child: Padding(padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(child: Icon(Icons.dashboard_outlined, size: 20, color: Colors.black)),
            Expanded(
              flex: 1,
              child: Text('Minha Conta',
            style: TextStyle(color: Colors.black, fontSize:20,)))
          ],
        ),),
      ),);
  }
  Widget menuItem2(){
    return Material(
      child: InkWell(
        onTap: (){},
        child: Padding(padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(child: Icon(Icons.contacts, size: 20, color: Colors.black)),
            Expanded(
              flex: 1,
              child: Text('Meu Plano',
            style: TextStyle(color: Colors.black, fontSize:20,)))
          ],
        ),),
      ),);
  }
  Widget menuItem3(){
    return Material(
      child: InkWell(
        onTap: (){},
        child: Padding(padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(child: Icon(Icons.notifications_outlined, size: 20, color: Colors.black)),
            Expanded(
              flex: 1,
              child: Text('Solicitações',
            style: TextStyle(color: Colors.black, fontSize:20,)))
          ],
        ),),
      ),);
  }
  Widget menuItem4(){
    return Material(
      child: InkWell(
        onTap: (){},
        child: Padding(padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(child: Icon(Icons.help, size: 20, color: Colors.black)),
            Expanded(
              flex: 1,
              child: Text('Ajuda',
            style: TextStyle(color: Colors.black, fontSize:20,)))
          ],
        ),),
      ),);
  }
  Widget menuItem5(){
    return Material(
      child: InkWell(
        onTap: (){},
        child: Padding(padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(child: Icon(Icons.exit_to_app, size: 20, color: Colors.black)),
            Expanded(
              flex: 1,
              child: Text('Sair',
            style: TextStyle(color: Colors.black, fontSize:20,)))
          ],
        ),),
      ),);
  }
}