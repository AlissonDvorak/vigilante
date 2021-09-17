import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:date_format/date_format.dart';

class BtNivel extends StatelessWidget {
  const BtNivel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: SizedBox(
        width: 400.0,
        height: 70.0,
        child: FloatingActionButton.extended(
          onPressed: () {},
          label: Text(
            'VIZUALIZAR NIVEL DO RIO',
            textScaleFactor: 2,
          ),
          backgroundColor: Color(0xFF17A0A6),
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}

class BtShare extends StatelessWidget {
  const BtShare({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: SizedBox(
        width: 400.0,
        height: 70.0,
        child: FloatingActionButton.extended(
          onPressed: () {},
          label: Text(
            'Compartilhar',
            textScaleFactor: 2,
          ),
          backgroundColor: Color(0xFF17A0A6),
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}

class BtNivelFinal extends StatelessWidget {
  const BtNivelFinal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: SizedBox(
        width: 400.0,
        height: 70.0,
        child: FloatingActionButton.extended(
          onPressed: () {},
          label: Text(
            'VIZUALIZAR NIVEL DO RIO',
            textScaleFactor: 2,
          ),
          backgroundColor: Color(0xFF17A0A6),
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}

class TextFormato extends StatelessWidget {
  const TextFormato({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(
        "Insira uma data no formato válido \n dia/mês/ano",
        style: GoogleFonts.getFont(
          'Roboto',
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class TextLocalidade extends StatelessWidget {
  const TextLocalidade({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(
        "O Sensor na localidade",
        style: GoogleFonts.getFont(
          'Gruppo',
          fontSize: 50,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class TextCep extends StatelessWidget {
  const TextCep({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(
        "00000-001",
        style: GoogleFonts.getFont('Gruppo',
            fontSize: 50, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class TextCadastro extends StatelessWidget {
  const TextCadastro({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Text(
        "Cadastrar alerta",
        style: GoogleFonts.getFont(
          'Gruppo',
          fontSize: 50,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class TextNivel extends StatelessWidget {
  const TextNivel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(
        "Escolha o nivel",
        style: GoogleFonts.getFont(
          'Gruppo',
          fontSize: 50,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class TextConsulta extends StatelessWidget {
  const TextConsulta({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Text(
        "Consulta por período",
        style: GoogleFonts.getFont(
          'Gruppo',
          fontSize: 50,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}

class TextPopup extends StatelessWidget {
  const TextPopup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Text(
        "Ao atingir o nível escolhido será enviado alerta pop up",
        style: GoogleFonts.getFont(
          'Roboto',
          fontSize: 20,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}

class TextCadastrado extends StatelessWidget {
  const TextCadastrado({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 25),
      child: Text(
        "Alerta Cadastrado \ncom Sucesso!",
        style: GoogleFonts.getFont(
          'Gruppo',
          fontSize: 50,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class RowCep extends StatelessWidget {
  const RowCep({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 10),
      child: Row(
        children: [
          Text(
            "CEP   ",
            style: GoogleFonts.getFont(
              'Gruppo',
              fontSize: 30,
            ),
            textAlign: TextAlign.left,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Color(0xFF17A0A6), // set border color
                    width: 1.0), // set border width
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)), // set rounded corner radius
              ),
              child: TextField(
                autofocus: false,
                decoration: InputDecoration(
                  hintText: '',
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RowInicio extends StatelessWidget {
  const RowInicio({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Inicio",
            style: GoogleFonts.getFont(
              'Gruppo',
              fontSize: 30,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: Color(0xFF17A0A6), // set border color
                  width: 1.0), // set border width
              borderRadius: BorderRadius.all(
                  Radius.circular(10.0)), // set rounded corner radius
            ),
            child: TextField(
              autofocus: false,
              decoration: InputDecoration(
                hintText: '',
                border: InputBorder.none,
              ),
              keyboardType: TextInputType.number,
            ),
          ),
        ),
      ],
    );
  }
}

class RowFinal extends StatelessWidget {
  const RowFinal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Final  ",
            style: GoogleFonts.getFont(
              'Gruppo',
              fontSize: 30,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: Color(0xFF17A0A6), // set border color
                  width: 1.0), // set border width
              borderRadius: BorderRadius.all(
                  Radius.circular(10.0)), // set rounded corner radius
            ),
            child: TextField(
              autofocus: false,
              decoration: InputDecoration(
                hintText: '',
                border: InputBorder.none,
              ),
              keyboardType: TextInputType.number,
            ),
          ),
        ),
      ],
    );
  }
}

class BtCadastrar extends StatelessWidget {
  const BtCadastrar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: SizedBox(
        width: 400.0,
        height: 70.0,
        child: FloatingActionButton.extended(
          onPressed: () {},
          label: Text(
            'CADASTRAR ALERTA',
            textScaleFactor: 2,
          ),
          backgroundColor: Color(0xFF17A0A6),
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}

class ImageChecked extends StatelessWidget {
  const ImageChecked({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20),
      child: Image.asset(
        'assets/checked.png',
        height: 300,
        fit: BoxFit.fill,
      ),
    );
  }
}

class ImageNiveis extends StatelessWidget {
  const ImageNiveis({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20),
      child: Image.asset(
        'assets/niveis.png',
        height: 300,
        fit: BoxFit.fill,
      ),
    );
  }
}

class DataAtual extends StatelessWidget {
  const DataAtual({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 30),
      child: Text(
        formatDate(
          DateTime.now(),
          ['Em ', dd, '-', mm, '-', yyyy, '  ', HH, ':', nn, ' Hrs'],
        ),
        style: GoogleFonts.getFont(
          'Gruppo',
          fontSize: 45,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
