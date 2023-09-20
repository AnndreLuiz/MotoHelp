import 'package:flutter/material.dart';

class PageGuincho extends StatefulWidget {
  const PageGuincho({super.key});

  @override
  State<PageGuincho> createState() => _PageGuinchoState();
}

class _PageGuinchoState extends State<PageGuincho> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Guincho',
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
                  hintText: "Qual sua localização?",
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
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(8),
              child: Image.asset('lib/images/googlemaps.png'),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset('lib/images/avatar1.png'),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        '                 Nando Guinchos',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'tahoma',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset('lib/images/avatar2.png'),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        '                 Lobinho Guincho',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'tahoma',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset('lib/images/avatar3.png'),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        '                 Irmãos Reboque',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'tahoma',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
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
    );
  }
}
