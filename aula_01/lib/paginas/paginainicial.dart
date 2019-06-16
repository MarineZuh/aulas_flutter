import 'package:flutter/material.dart';

import 'formbebaagua.dart';

class PaginaInicial extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<PaginaInicial> {

  String _novoTexto = "Aula de Flutter";

  void _mudarTexto() {
    setState(() {
      _novoTexto = "Novo texto";
    });
  }

  @override
  Widget build(BuildContext context) {

    Text textoTitulo = new Text('Minha Aplicação');
    Text textoCorpo = new  Text(_novoTexto);
    
    AppBar appBar = new AppBar( title: textoTitulo );
    FloatingActionButton floatingActionButton = new FloatingActionButton(
      child: Text('+'),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>FormBebaAgua()));
      },
    );
    
    return Scaffold(
      appBar: appBar,
      body: textoCorpo,
      floatingActionButton: floatingActionButton,
    );
  }
}