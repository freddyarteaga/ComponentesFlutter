import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(padding: EdgeInsets.all(10.0), children: <Widget>[
        _cardTipo1(),
        SizedBox(height: 30.0),
        _cardTipo2()
      ]),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo de esta Targeta'),
            subtitle: Text(
                'esto es una prueba para ver el subtitle de lo que quieren mostrarle'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Text('Cancelar'),
              ),
              FlatButton(
                onPressed: () {},
                child: Text('OK'),
              ),
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
        FadeInImage(
          image: NetworkImage(
              'https://cdn2.wanderlust.co.uk/media/1028/cropped-shutterstock_497799013.jpg?anchor=center&mode=crop&width=1440&height=540&format=auto&quality=80&rnd=131915974290000000'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover,
        ),
        // Image(
        //   image: NetworkImage(
        //       'https://cdn2.wanderlust.co.uk/media/1028/cropped-shutterstock_497799013.jpg?anchor=center&mode=crop&width=1440&height=540&format=auto&quality=80&rnd=131915974290000000'),
        // ),
        Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea que poner'))
      ],
    ));
  }
}
