import 'package:flutter/material.dart';

class ItemRedondeado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomCenter,

          children: <Widget>[
            Container(
              height: 110.0,
              width: 110.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110.0),
                border: Border.all(color: Colors.yellow, width: 2.0
                ),
              ),
              child: ClipOval(
                child: Image.network(
                    'https://pics.filmaffinity.com/Origen-652954101-large.jpg',
                    fit: BoxFit.cover,
                ),
              ),
            ),
            Image.asset('assets/imgs/origen.png',
             width:95.0,
             )
          ],
        ),
        SizedBox(width: 10.0,)
      ],
    );
  }
}
