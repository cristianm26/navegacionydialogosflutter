import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:navigationanddialogs/pages/widgets/share_menu.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  void _showSimpleDialog(BuildContext context) async {
    final bool isOk = await showDialog(
      context: context,
      builder: (context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            title: const Text(
              "Simple Dialog",
              textAlign: TextAlign.center,
            ),
            content: const Text(
                "Mi nombes es Cristian Muñoz y soy desarrollador :)"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context, false);
                },
                child: const Text(
                  "Cancelar",
                  style: TextStyle(
                    color: Colors.redAccent,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: const Text("Ok"),
              ),
            ],
          ),
        );
      },
    );
    /*   if (isOk != null && isOk) {
      print("Eliminar Elemento");
    } */
    if (isOk) {
      print("Eliminar Elemento");
    }
  }

  void _showCuppertinoDialog(BuildContext context) async {
    final bool isOk = await showCupertinoDialog(
      context: context,
      builder: (_) {
        return CupertinoAlertDialog(
          title: const Text(
            "Simple Dialog",
            textAlign: TextAlign.center,
          ),
          content:
              const Text("Mi nombes es Cristian Muñoz y soy desarrollador :)"),
          actions: [
            CupertinoDialogAction(
              child: const Text("Ok"),
              onPressed: () => Navigator.pop(context, true),
            ),
            CupertinoDialogAction(
              child: const Text("Cancelar"),
              onPressed: () => Navigator.pop(context),
              isDestructiveAction: true,
            ),
          ],
        );
      },
    );
    if (isOk) {
      print("Eliminar Elemento");
    }
  }

  void _pickHero(BuildContext context) async {
    final options = [
      "Batman",
      "SpiderMan",
      "IronMan",
      "Hulk",
      "Thor",
      "Capitan America"
    ];
    final String hero = await showCupertinoModalPopup(
      context: context,
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      builder: (_) => CupertinoActionSheet(
        title: const Text(
          "Selecciona un heroe",
          style: TextStyle(color: Colors.black),
        ),
        message: const Text("Selecciona un heroe"),
        actions: [
          ...List.generate(
            options.length,
            (index) {
              final String option = options[index];
              return CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.pop(context, option);
                },
                child: Text(option),
              );
            },
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Cancelar"),
            isDestructiveAction: true,
          ),
        ],
      ),
    );
    if (hero != null) {
      print("El heroe es $hero");
    }
  }

  void _showCustomMenu(BuildContext context) async {
    final String data = await showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => const ShareMenu(),
    );
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: const Text('Alert Dialog'),
            onTap: () {
              _showSimpleDialog(context);
            },
          ),
          ListTile(
            title: const Text('Cuppertino Dialog'),
            onTap: () {
              _showCuppertinoDialog(context);
            },
          ),
          ListTile(
            title: const Text('Selecciona un Heroe '),
            onTap: () {
              _pickHero(context);
            },
          ),
          ListTile(
            title: const Text('Custom Menu'),
            onTap: () {
              _showCustomMenu(context);
            },
          ),
        ],
      ),
    );
  }
}
