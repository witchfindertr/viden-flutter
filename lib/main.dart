import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:vidente/controllers/cidade_controller.dart';
import 'package:vidente/widgets/vidente_app.dart';

Future main() async {
  await dotenv.load();
  await CidadeController.instancia.inicializarDB();
  await CidadeController.instancia.inicializarCidade();
  runApp(VidenteApp());
}
