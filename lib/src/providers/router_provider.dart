import 'package:flutter/material.dart';
import 'package:scaffold_providers_app/src/pages/home.dart';
import 'package:scaffold_providers_app/src/pages/qr_image_response.dart';
import 'package:scaffold_providers_app/src/pages/qr_text_response.dart';

class RouterProvider {
  static Route<dynamic> generateRoute(RouteSettings settings){
    
    final args = settings.arguments;

    int errorCode = 0;
    
    switch (settings.name){
      case '/':
          return MaterialPageRoute(builder: (_) => Home());
      case '/qrTextView':
        if(args is String)
          return MaterialPageRoute(builder: (_) => QrTextResponse(text: args,));
        else
          errorCode = 1;
        break;
      case '/qrImageView':
        if(args is String)
          return MaterialPageRoute(builder: (_) => QrImageResponse(text: args,));
        else
          errorCode = 1;
        break;

      default:
          errorCode = 0;
    }

    switch(errorCode){
      case 0:
        return _errorRoute();
      case 1:
        return _errorFormatText();
      default:
        return _errorRoute();
    }
  }


  static Route<dynamic>_errorRoute(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        appBar: AppBar(title: Text('Error on route'),),
        body: Center(
          child: Text('The app is searching a route that apparently doesn\'t exists'),
        ),
        );
    });
  }

  static Route<dynamic>_errorFormatText(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        appBar: AppBar(title: Text('Error on format'),),
        body: Center(
          child: Text('The Widget is waiting for String but the response contains another type of data'),
        ),
        );
    });
  }

  static Route<dynamic>_UnknowError(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        appBar: AppBar(title: Text('Error on route'),),
        body: Center(
          child: Text('The app is experimenting an inesperate error'),
        ),
        );
    });
  }
}