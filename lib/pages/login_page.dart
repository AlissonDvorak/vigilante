import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vigilate/pages/cep.dart';
import 'package:vigilate/pages/login_controller.dart';

class LoginPage extends StatelessWidget {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
          ),
          Stack(
            children: [
              Image.asset(
                'assets/logov.png',
                height: 300,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 355.0),
                child: Image.asset(
                  'assets/agua.png',
                  height: 300,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 500),
                child: Container(
                  child: Obx(
                    () {
                      if (controller.googleAccount.value == null)
                        return buildLoginButton();

                      WidgetsBinding.instance!.addPostFrameCallback((_) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cep()),
                        );
                      });

                      return SizedBox();
                    },
                  ),
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  FloatingActionButton buildLoginButton() {
    return FloatingActionButton.extended(
      onPressed: () {
        controller.login();
      },
      icon: Image.asset(
        'assets/googlelogo.png',
        height: 32,
        width: 32,
      ),
      label: Text(
        'Login com Google',
        style: GoogleFonts.gruppo(),
      ),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    );
  }
}
