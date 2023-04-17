import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RegisterSecondPage extends StatefulWidget {
  const RegisterSecondPage({super.key});

  @override
  State<RegisterSecondPage> createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              child: Column(
                children: [
                  TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      prefixIcon: Padding(padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        ),
                        ),
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10),
                        ),
                      ),
                      hintText: "CNH",
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
                 height: 15,
               ),
               TextFormField(
                 textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      prefixIcon: Padding(padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        ),
                        ),
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10),
                        ),
                      ),
                      hintText: "CRLV",
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
                    height: 15,
                  ),
                  TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      prefixIcon: Padding(padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        ),
                        ),
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10),
                        ),
                      ),
                      hintText: "Foto do rosto",
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
                    height: 15,
                    ),
                ],
                ),
              ),
              Padding(padding: EdgeInsets.all(15),
              child: Container(
                child: ElevatedButton(
                  onPressed: (){}, 
                  child: Text('Finalizar'),),
              ),),
          ],
        ),
      ),
    );
  }
}