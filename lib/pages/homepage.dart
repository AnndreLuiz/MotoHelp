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
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: Column(children: [
              TextFormField(
                 decoration: InputDecoration(
                   contentPadding: EdgeInsets.all(10),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(11),
                     ),
                   ),
                   hintText: "E-mail",
                   hintStyle: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'tahoma',
                                      fontWeight: FontWeight.bold,
                                    ),
                   fillColor: Colors.blue,
                   filled: true,
                 ),
                 ),
                 SizedBox(
                   height: 10,
                 ),
                 TextFormField(
               decoration: InputDecoration(
                 contentPadding: EdgeInsets.all(10),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.all(Radius.circular(11),
                   ),
                 ),
                 hintText: "Senha",
                 hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'tahoma',
                                    fontWeight: FontWeight.bold,
                                  ),
                 fillColor: Colors.blue,
                 filled: true,
               ),
               ),
               SizedBox(
                 height: 10,
               ),
               Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Esqueceu seu login ou senha? ',
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
                                  onTap: () {},
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Não é registrado? ',
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
                                  onTap: () {},
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.all(35),
                              child: Container(
                                height: 50,
                                width: 105,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('/list');
                                  },
                                  child: Text(
                                    'Entrar',
                                    style: TextStyle(
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
                                        side: BorderSide(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
            ],),
          ),
        ),
       ],
      ),
    );
  }
}