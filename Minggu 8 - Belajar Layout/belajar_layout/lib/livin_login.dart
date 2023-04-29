import 'package:belajar_layout/main.dart';
import 'package:flutter/material.dart';

class LivinLogin extends StatelessWidget {
  const LivinLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/livinlogin.jpeg'),
                fit: BoxFit.fitWidth)),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 500.0,
            ),
            buildButtonLogin(),
            SizedBox(
              height: 10.0,
            ),
            buildFooterButton()
          ],
        ),
      ),
    );
  }

  Widget buildButtonLogin() {
    return Material(
      borderRadius: BorderRadius.circular(45.0),
      color: Colors.blueAccent,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.fingerprint,
              color: Colors.white,
              size: 27,
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              "Login",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget circleButton(String text, Icon icon, Color color) {
    return Container(
      constraints: BoxConstraints(maxWidth: 75),
      child: Column(
        children: <Widget>[
          RawMaterialButton(
            onPressed: () {},
            elevation: 2.0,
            fillColor: color,
            child: icon,
            padding: EdgeInsets.all(12.0),
            shape: CircleBorder(),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 20.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFooterButton() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          circleButton("Text", Icon(Icons.payment), Colors.lightBlue),
          circleButton("Text", Icon(Icons.payment), Colors.lightBlue),
          circleButton("Text", Icon(Icons.payment), Colors.lightBlue),
          circleButton("Text", Icon(Icons.payment), Colors.lightBlue),
        ],
      ),
    );
  }
}
