import 'package:flutter/material.dart';

class NavBarSuperior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      
      children: <Widget>[
      Image.asset(
        'assets/imgs/Netflix-Symbol.png',
        width: 50.0,
      ),
      Text(
        'Programas',
        style: TextStyle(color: Colors.white, fontSize: 16.0),
      ),
      Text(
        'Películas',
        style: TextStyle(color: Colors.white, fontSize: 16.0),
      ),
      Text(
        'Mi lista',
        style: TextStyle(color: Colors.white, fontSize: 16.0),
      ),
    ]);
  }
}
