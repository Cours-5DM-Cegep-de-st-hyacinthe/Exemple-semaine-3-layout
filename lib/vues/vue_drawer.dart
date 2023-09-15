import 'package:flutter/material.dart';

import 'package:exercice_2_layouts/vues/pages/page_route2.dart';
import 'package:exercice_2_layouts/vues/pages/page_route3.dart';

class VueDrawer extends StatelessWidget{
  const VueDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(child:
      Column(children: [
        Container(height: 25,),
        Expanded(child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.black
            )
          ),
          child: const Center(child: Text(
            "Menu",
            style: TextStyle(fontSize: 32),
          )),
        )),
        Expanded(flex: 9, child: ListView(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const PageRoute2())
                  );
                },
                child: const Text("Naviguer vers la page 2")
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const PageRoute3())
                  );
                },
                child: const Text("Naviguer vers la page 3")
            )
          ],
        ))
      ])
    );
  }

}