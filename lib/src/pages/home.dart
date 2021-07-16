import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scaffold_providers_app/src/pages/animated_container.dart';
import 'package:scaffold_providers_app/src/pages/list_viewer.dart';
import 'package:scaffold_providers_app/src/providers/ui_provider.dart';
import 'package:scaffold_providers_app/src/widgets/button_tab.dart';
import 'package:scaffold_providers_app/src/widgets/button_tab_right.dart';
import 'package:scaffold_providers_app/src/widgets/custom_navigator.dart';
import 'package:scaffold_providers_app/src/providers/users_provider.dart' as USR;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Navigate'),
       actions: [],
     ),
     body: Stack(
      children: <Widget>[
        HomeOptions(),
        Align(
          alignment: Alignment.bottomLeft,
          child: ButtonTab(),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: ButtonTabRight(),
        ),
      ]),
     bottomNavigationBar: CustomNavigator(),
   );
  } 
}

class HomeOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final indexPosition = uiProvider.menuSelect;

    switch(indexPosition){
      case 0:
        return ListViewer(users: USR.UsersProvider.getUsers(),);
      case 1:
        return AnimatedPage();
      default:
        return  Center(child: Text('The app is searching a route that apparently doesn\'t exists'));
    }
  }
  
}