import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget {
  
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.network('https://es.web.img2.acsta.net/pictures/18/12/07/12/40/4530128.jpg', 
        width: 100.0,
        fit: BoxFit.cover,
        ),

        SizedBox(width: 10.0,)
      ],
    );
  }
}