import 'package:flutter/cupertino.dart';

class AppBarColor extends StatelessWidget {
  const AppBarColor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 27, 52, 108),
      ),
    );
  }
}
