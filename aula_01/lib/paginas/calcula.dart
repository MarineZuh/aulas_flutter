import 'package:flutter/material.dart';

class CalculaQuantidade extends StatelessWidget {
  final String nomeRecebido;

  CalculaQuantidade(this.nomeRecebido);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Resultado')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(nomeRecebido,
                style: TextStyle(fontSize: 30, color: Colors.blue))
          ],
        ),
      ),
    );
  }
}
