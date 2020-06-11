import 'package:UltimoEjercicio/ShowModels/ShowRefrescos.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      //TOdo llamar al menu lateral
      drawer: _returnMenuLateral(),
      appBar: AppBar(
        title: Text("Pagina de inicio"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            //TOdo llamar al menu lateral
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Image.network("Link de la imagen que gustes"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>ShowRefrescos())
                  );
                },
                child: Text("Pagina de refrescos"),
                color: Colors.blueGrey,
                textColor: Colors.white,
                //Todo Completar diseño
              ),
              FlatButton(
                onPressed: () {
                  //TOdo Hacer la navergacion a la pagina de papitas
                },
                child: Text("Pagina de papitas"),
                color: Colors.blueGrey,
                textColor: Colors.white,
                //Todo Completar diseño
              )
            ],
          ),
        ],
      ),
    );
  }

  _returnMenuLateral() {
    //ToDo Hacer el Drawer
  }
}
