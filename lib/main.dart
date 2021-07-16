import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scaffold_providers_app/src/pages/home.dart';
import 'package:scaffold_providers_app/src/providers/router_provider.dart';
import 'package:scaffold_providers_app/src/providers/ui_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new UiProvider(),)
      ],
      child: MaterialApp(
        title: 'Providers',
        initialRoute: '/',
        onGenerateRoute: RouterProvider.generateRoute,
      )
    );
  }
}