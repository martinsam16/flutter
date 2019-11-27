import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Componentes temp'),
        ),
        body: ListView(children: _crearItemsCorto()),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)..add(Divider()); //impaktado
    }

    return lista;
  }

  List<Widget> _crearItemsCorto() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text('$item!'),
            subtitle: Text('$item ...'),
            leading: Icon(Icons.account_box),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
