import 'package:flutter/material.dart';
import 'package:scaffold_providers_app/src/pages/list_viewer.dart';

class QrImageResponse extends StatelessWidget {

  QrImageResponse({Key? key,required this.text}):super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image from QR'),
      ),
      body: Center(
        child: ImageViewCustom(URL: text),
        ),
    );
  }
  
}