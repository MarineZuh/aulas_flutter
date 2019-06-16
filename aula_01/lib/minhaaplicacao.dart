import 'package:flutter/material.dart';
import 'paginas/paginainicial.dart';

class MinhaAplicacao extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primeira App',
      theme: ThemeData( primaryColor: Colors.blue ),
      home: PaginaInicial()
    );
  }

}