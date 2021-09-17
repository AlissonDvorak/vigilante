import 'package:flutter/material.dart';

class SaneamentoBasico extends StatefulWidget {
  const SaneamentoBasico({Key? key}) : super(key: key);

  @override
  _SaneamentoBasicoState createState() => _SaneamentoBasicoState();
}

class _SaneamentoBasicoState extends State<SaneamentoBasico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xFF17A0A6),
        elevation: 5,
        title: Text('Saneamento basico'),
      ),
    );
  }
}
