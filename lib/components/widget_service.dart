import 'package:flutter/material.dart';

class MyWidgetService extends StatefulWidget {
  final Image imageInfo;
  final String textInfo;
  final String navigatorPage;
  const MyWidgetService(
      {super.key,
      required this.imageInfo,
      required this.textInfo,
      required this.navigatorPage});

  @override
  State<MyWidgetService> createState() => _MyWidgetServiceState();
}

class _MyWidgetServiceState extends State<MyWidgetService> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(widget.navigatorPage);
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
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                height: 150,
                width: 150,
                child: Center(
                  child: widget.imageInfo,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              widget.textInfo,
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
}
