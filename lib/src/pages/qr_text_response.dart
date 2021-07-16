import 'package:flutter/material.dart';
import 'package:scaffold_providers_app/src/pages/list_viewer.dart';

class QrTextResponse extends StatelessWidget {

  QrTextResponse({Key? key,required this.text}):super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text from QR'),
      ),
      body: Center(
        child: Text(text),
        ),
    );
  }
  
}