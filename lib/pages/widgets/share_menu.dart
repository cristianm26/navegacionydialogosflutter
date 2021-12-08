import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ShareMenu extends StatelessWidget {
  const ShareMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 50,
              height: 4,
              color: Colors.grey.withOpacity(0.5),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Compartir Pregunta",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(),
            _MenuItem(
              label: "Añadir Pregunta",
              icon: Icons.add,
              onPressed: () {},
            ),
            _MenuItem(
              label: "Compartir Pregunta via...",
              icon: Icons.share,
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: CupertinoButton(
                child: const Text("Enviar"),
                onPressed: () {
                  Navigator.pop(context, " Hola");
                },
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}

class _MenuItem extends StatelessWidget {
  final void Function() onPressed;
  final String label;
  final IconData icon;
  const _MenuItem({
    Key? key,
    required this.onPressed,
    required this.label,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.black,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
      onPressed: onPressed,
    );
  }
}
