
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAligment: podemos modificar la posicion en el eje horizontal
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image.asset(
          'assets/images/Netflix-Logo.png',
          width: 50.0,
          height: 50.0,
        ),
        Text("Series", style: TextStyle(color: Colors.white, fontSize: 16.0)),
        Text("Programs", style: TextStyle(color: Colors.white, fontSize: 16.0)),
        Text("Movies", style: TextStyle(color: Colors.white, fontSize: 16.0)),
      ],
    );
  }
}
