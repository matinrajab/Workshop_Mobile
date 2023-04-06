import 'package:flutter/cupertino.dart';

class BackgroundColor extends StatelessWidget {
  const BackgroundColor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 30, 39, 98),
            Color.fromARGB(255, 12, 29, 59),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
    );
  }
}
