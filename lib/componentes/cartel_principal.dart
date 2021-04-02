import 'package:flutter/material.dart';
import 'package:netflix/componentes/nav_bar_superior.dart';

class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        this.cabezera(),
        this.infoSeries(),
        this.botonera(),
      ],
    );
  }

  Widget cabezera() {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/imgs/deathnote-c677011d630f60a183d24dbd4ef6d7c2-1200x800.jpg",
          height: 350.0,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.black38, Colors.black])),
        ),
        SafeArea(
          child: NavBarSuperior()
        ),
      ],
    );
  }

  Widget infoSeries() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Comedias',
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
        SizedBox(width: 8.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 7.5),
        SizedBox(width: 8.0),
        Text(
          'Animes',
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
        SizedBox(width: 8.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 7.5),
        SizedBox(width: 8.0),
        Text(
          'Policiacas',
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
        SizedBox(width: 8.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 7.5),
        SizedBox(width: 8.0),
        Text(
          'Suspense',
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
      ],
    );
  }

  Widget botonera() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(  
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Icon(Icons.check, color: Colors.white),
            SizedBox(height: 3.0),
            Text(
              'Mi Lista',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10.0,
              ),
            )
          ],
        ),
        FlatButton.icon(
          onPressed: () {},
          color: Colors.white,
          icon: Icon(Icons.play_arrow, color: Colors.black),
          label: Text('Reproducir'),
        ),
        Column(
          children: <Widget>[
            Icon(Icons.info_outline, color: Colors.white),
            SizedBox(height: 3.0),
            Text(
              'Información',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10.0,
              ),
            )
          ],
        ),
      ],
      ),
    );
  }
}
