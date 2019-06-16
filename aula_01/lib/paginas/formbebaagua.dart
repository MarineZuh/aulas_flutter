import 'package:flutter/material.dart';

import 'calcula.dart';

class FormBebaAgua extends StatefulWidget {
  @override
  _FormBebaAguaState createState() {
    return _FormBebaAguaState();
  }
}

class _FormBebaAguaState extends State<FormBebaAgua> {
  final _chaveForm = GlobalKey<FormState>();
  var nome;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Beba agua!')),
      body: Form(
        key: _chaveForm,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Nome', hintText: 'Informe seu nome aqui'),
                validator: (value) {
                  if (value.isEmpty) return 'Por favor, informe seu nome.';
                },
                onSaved: (value) {
                  nome = value;
                },
                keyboardType: TextInputType.text,
              ),
              RaisedButton(
                child: Text('ENVIAR'),
                onPressed: () {
                  if (_chaveForm.currentState.validate()) {
                    _chaveForm.currentState.save();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CalculaQuantidade(nome)));
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
