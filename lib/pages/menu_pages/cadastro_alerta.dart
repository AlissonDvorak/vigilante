import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets.dart';

class CadastroAlerta extends StatefulWidget {
  const CadastroAlerta({Key? key}) : super(key: key);

  @override
  _CadastroAlertaState createState() => _CadastroAlertaState();
}

class _CadastroAlertaState extends State<CadastroAlerta> {
  bool baixo = false;
  bool medio = false;
  bool alto = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xFF17A0A6),
        elevation: 5,
        title: Text('Cadastrar alerta'),
      ),
      body: Scaffold(
        body: Column(
          children: [
            TextCadastro(),
            RowCep(),
            TextNivel(),
            buildCheckbox(),
            BtCadastrar(),
            TextPopup()
          ],
        ),
      ),
    );
  }

  Widget buildCheckbox() => Row(
        children: [
          Checkbox(
              value: baixo,
              onChanged: (value) {
                setState(() {
                  this.baixo = value!;
                });
              }),
          Text(
            "BAIXO",
            style: GoogleFonts.getFont(
              'Gruppo',
              fontSize: 30,
            ),
            textAlign: TextAlign.left,
          ),
          Checkbox(
              value: medio,
              onChanged: (value) {
                setState(() {
                  this.medio = value!;
                });
              }),
          Text(
            "MEDIO",
            style: GoogleFonts.getFont(
              'Gruppo',
              fontSize: 30,
            ),
            textAlign: TextAlign.left,
          ),
          Checkbox(
              value: alto,
              onChanged: (value) {
                setState(() {
                  this.alto = value!;
                });
              }),
          Text(
            "ALTO",
            style: GoogleFonts.getFont(
              'Gruppo',
              fontSize: 30,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      );
}
