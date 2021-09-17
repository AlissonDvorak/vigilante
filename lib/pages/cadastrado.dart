import 'package:flutter/material.dart';
import 'package:vigilate/pages/widgets.dart';

class Cadastrado extends StatefulWidget {
  const Cadastrado({Key? key}) : super(key: key);

  @override
  _CadastradoState createState() => _CadastradoState();
}

class _CadastradoState extends State<Cadastrado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xFF17A0A6),
        elevation: 5,
        title: Text('Alerta cadastrado'),
      ),
      body: Scaffold(
        body: Column(
          children: [
            TextCadastrado(),
            ImageChecked(),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: BtNivelFinal(),
            )
          ],
        ),
      ),
    );
  }
}
