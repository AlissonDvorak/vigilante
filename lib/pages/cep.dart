import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_controller.dart';
import 'menu_pages/apresentacao.dart';

class Cep extends StatelessWidget {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF17A0A6),
        elevation: 5,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                controller.googleAccount.value?.displayName ?? '',
              ),
              accountEmail: Text(controller.googleAccount.value?.email ?? ''),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage(
                  controller.googleAccount.value?.photoUrl ?? '',
                ),
              ),
              decoration: BoxDecoration(color: Color(0xFF17A0A6)),
            ),
            ListTile(
              title: Text('> Consulta em tempo real'),
              onTap: () {},
            ),
            Divider(
              color: Colors.grey,
              height: 5.0,
            ),
            ListTile(
              title: Text('> Consulta por data'),
              onTap: () {},
            ),
            Divider(
              color: Colors.grey,
              height: 5.0,
            ),
            ListTile(
              title: Text('> Cadastrar alerta'),
              onTap: () {
                WidgetsBinding.instance!.addPostFrameCallback((_) {});
              },
            ),
            Divider(
              color: Colors.grey,
              height: 5.0,
            ),
            ListTile(
              title: Text('> Saneamento básico'),
              onTap: () {},
            ),
            Divider(
              color: Colors.grey,
              height: 5.0,
            ),
            ListTile(
              title: Text('> Fale Conosco'),
              onTap: () {},
            ),
            Divider(
              color: Colors.grey,
              height: 5.0,
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              child: Text(
                "Insira o CEP",
                style: GoogleFonts.getFont(
                  'Gruppo',
                  fontSize: 70,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Container(
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
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              child: Text(
                "Consulta em tempo real\n Sujeito a disponibilidade de local.\n\ Para verificar os locais disponíveis\n acesse aqui",
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: SizedBox(
              width: 400.0,
              height: 70.0,
              child: FloatingActionButton.extended(
                onPressed: () {
                  WidgetsBinding.instance!.addPostFrameCallback((_) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Apresentacao(),
                        ));
                  });
                },
                label: Text(
                  'VIZUALIZAR NIVEL DO RIO',
                  textScaleFactor: 2,
                ),
                backgroundColor: Color(0xFF17A0A6),
                foregroundColor: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
