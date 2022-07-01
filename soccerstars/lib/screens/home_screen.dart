import 'package:flutter/material.dart';
import 'package:soccerstars/widgets/widgets.dart'; //aqui importamos todos los widgets que creemos en el archivo widgets.dart

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Soccer Stars'),
          elevation: 0,
          //con las actions puedo meter elementos en la appbar, en este caso una lupa de buscar
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_outlined),
            )
          ],
        ),
        body: Column(
          //uso colum en el body para ir poniendo elementos en columna
          children: [
            CardSwipper()

            //listado horizontal de jugadores
          ],
        ));
  }
}
