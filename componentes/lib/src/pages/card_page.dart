import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('titulo'),
            subtitle: Text('Subtitulo C:'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('OK'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: <Widget>[
          /*
          Image(
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTQNP_D9DAzBCO5yCETfIVLcQhT7XL2mLBFxclYkUfX0IRf8QyH'),
          ),
          */
          FadeInImage(
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTQNP_D9DAzBCO5yCETfIVLcQhT7XL2mLBFxclYkUfX0IRf8QyH'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(padding: EdgeInsets.all(10.0), child: Text('El mo')),
        ],
      ),
    );
  }
}
