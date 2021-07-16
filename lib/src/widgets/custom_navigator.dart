import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scaffold_providers_app/src/providers/ui_provider.dart';

class CustomNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context){

    final uiProvider = Provider.of<UiProvider>(context);
    final menuPositionIndex = uiProvider.menuSelect;

    return BottomNavigationBar(
      onTap: (int i) => uiProvider.menuSelect = i,
      currentIndex: menuPositionIndex,
      items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: const FlutterLogo(), label: 'ListView'),
      BottomNavigationBarItem(icon: const FlutterLogo(), label: 'AnimatedContainer')
    ]);
  }
}