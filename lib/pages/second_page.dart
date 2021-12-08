import 'package:flutter/material.dart';

import 'package:navigationanddialogs/routes/routes.dart';

class SecondPage extends StatelessWidget {
  final String name;
  const SecondPage({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /* final name=  ModalRoute.of(context)!.settings.arguments as String; */
    return Scaffold(
      /* WillPopScope(
      //Regresar a la pagina anterior
      onWillPop: () async {
        return false;
      }, */
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            final canPop = Navigator.canPop(context);
            if (canPop) {
              Navigator.pop(context, "Cristian");
            }
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              /*  final Route route =
                  MaterialPageRoute(builder: (_) => const SettingsPage());
              Navigator.push(context, route);
            },
            icon: const Icon(
              Icons.settings,
            ), */

              Navigator.pushNamed(context, Routes.second);
            },
            icon: const Icon(
              Icons.settings,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name),
            ],
          ),
        ),
      ),
    );
  }
}
