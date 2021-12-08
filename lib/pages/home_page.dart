import 'package:flutter/material.dart';
import 'package:navigationanddialogs/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Primera Pagina"),
              const SizedBox(height: 20),
              TextButton(
                  onPressed: () async {
                    /*  final Route route = MaterialPageRoute<String>(
                      builder: (_) => const SecondPage(
                        name: "Cristian Muñoz",
                      ),
                    ); */
                    /*  Navigator.pushReplacement(context, route); */

                    /*  await Navigator.push(context, route); */

                    //Navigator Pushnamed
                    /* Navigator.pushNamed(
                      context,
                      '/second',
                      arguments: "Cristian Muñoz",
                    ); */
                    Navigator.pushNamed(
                      context,
                      Routes.second,
                      arguments: "Cristian Muñoz",
                    );
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.redAccent,
                  ),
                  child: const Text(
                    "Ir a la segunda pagina",
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
