import 'package:flutter/material.dart';
import 'package:netflix/componentes/cartel_principal.dart';
import 'package:netflix/componentes/item_redondeado.dart';
import 'package:netflix/componentes/item_imagen.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          CartelPrincipal(),
          this.listaHorizontal('Avances', ItemRedondeado(), 20),
          SizedBox(height: 10.0,),
          this.listaHorizontal('Mi lista', ItemImg(), 20),
          SizedBox(height: 10.0,),
          this.listaHorizontal('Series TV', ItemImg(), 20),
          SizedBox(height: 10.0,),
          this.listaHorizontal('Animes de ciencia ficción y fantásticos', ItemImg(), 20),
          SizedBox(height: 20.0,),
        ],
      ),
      bottomNavigationBar: this.navInferior(),
    );
  }

  BottomNavigationBar navInferior() {
    return BottomNavigationBar (
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem> [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Inicio', style: TextStyle(fontSize:12.0),),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('Buscar', style: TextStyle(fontSize:12.0),),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_library),
          title: Text('Próximamente', style: TextStyle(fontSize:12.0),),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.file_download),
          title: Text('Descargas', style: TextStyle(fontSize:12.0),),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          title: Text('Más', style: TextStyle(fontSize:12.0),),
        ),
      ],
      );
  }

  Widget listaHorizontal(String titulo, Widget item, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
          child: Text(
            titulo,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
        ),
        Container(
          height: 110.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cantidad,
            itemBuilder: (context, index) {
              return item;
            },
          ),
        )
      ],
    );
  }
}
