import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ButtonTabRight extends StatelessWidget{
  
  @override
  Widget build (BuildContext context){
    return FloatingActionButton(
      child: Icon(Icons.image_aspect_ratio_sharp),
      onPressed: () async {
        dynamic barcodesScanRes = await FlutterBarcodeScanner.scanBarcode(
              '#A03131', 'Cancelar', false, ScanMode.QR);
        if(barcodesScanRes is String)
          Navigator.of(context).pushNamed('/qrImageView',arguments: barcodesScanRes);
      });
  }
}