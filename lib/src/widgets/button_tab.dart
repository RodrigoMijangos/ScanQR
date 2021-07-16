import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ButtonTab extends StatelessWidget{
  
  @override
  Widget build (BuildContext context){
    return FloatingActionButton(
      child: Icon(Icons.text_format),
      onPressed: () async {
        dynamic barcodesScanRes = await FlutterBarcodeScanner.scanBarcode(
              '#A03131', 'Cancelar', false, ScanMode.QR);
        if(barcodesScanRes is String)
          Navigator.of(context).pushNamed('/qrTextView',arguments: barcodesScanRes);
      });
  }
}