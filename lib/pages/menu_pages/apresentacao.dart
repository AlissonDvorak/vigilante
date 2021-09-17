import 'package:flutter/material.dart';

import '../widgets.dart';
import 'package:share_files_and_screenshot_widgets_plus/share_files_and_screenshot_widgets_plus.dart';

class Apresentacao extends StatefulWidget {
  const Apresentacao({Key? key}) : super(key: key);

  @override
  _ApresentacaoState createState() => _ApresentacaoState();
}

class _ApresentacaoState extends State<Apresentacao> {
  GlobalKey previewContainer = GlobalKey();
  int originalSize = 800;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        DataAtual(),
        TextLocalidade(),
        TextCep(),
        RepaintBoundary(key: previewContainer, child: ImageNiveis()),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: SizedBox(
            width: 400.0,
            height: 70.0,
            child: FloatingActionButton.extended(
              onPressed: () {
                ShareFilesAndScreenshotWidgets().shareScreenshot(
                    previewContainer,
                    originalSize,
                    "Vigilante",
                    "nivel.png",
                    "image/png",
                    text: "Nivel atual do rio");
              },
              label: Text(
                'Compartilhar',
                textScaleFactor: 2,
              ),
              backgroundColor: Color(0xFF17A0A6),
              foregroundColor: Colors.white,
            ),
          ),
        )
      ],
    ));
  }
}
