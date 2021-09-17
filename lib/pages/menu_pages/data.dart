import 'package:flutter/material.dart';
import '../widgets.dart';

class BuscaData extends StatefulWidget {
  const BuscaData({Key? key}) : super(key: key);

  @override
  _BuscaDataState createState() => _BuscaDataState();
}

class _BuscaDataState extends State<BuscaData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xFF17A0A6),
        elevation: 5,
        title: Text('Busca por periodo'),
      ),
      body: Column(
        children: [
          TextConsulta(),
          RowCep(),
          RowInicio(),
          RowFinal(),
          TextFormato(),
          BtNivel(),
        ],
      ),
    );
  }
}
