import 'package:exercice_2_layouts/vues/pages/page_route2.dart';
import 'package:exercice_2_layouts/vues/vue_drawer.dart';
import 'package:flutter/material.dart';

class PageRoute1 extends StatelessWidget{
  const PageRoute1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Mon App")
      ),
      drawer: const VueDrawer(),
      body: Column( children: [
        Expanded(child: Row(children: [
          Expanded(child: Column(children: [
            Expanded(child: Container(color: Colors.green))
          ],)),
          Expanded(child: Column(children: [
            Expanded(child: Container(color: Colors.red))
          ],))
        ])),
        Expanded(child: Row(children: [
          Expanded(flex: 2, child: Column(children: [
            Expanded(child: Container(color: Colors.blue))
          ],)),
          Expanded(child: Column(children: [
            Expanded(child: Container(color: Colors.yellow))
          ],)),
          Expanded(child: Column(children: [
            Expanded(child: Container(color: Colors.orange))
          ],))
        ])),
        Expanded(flex: 2, child: Row(children: [
          Expanded(child: Column(children: [
            Expanded(child: Container(color: Colors.yellow))
          ],)),
          Expanded(child: Column(children: [
            Expanded(child: Container(color: Colors.green))
          ],)),
          Expanded(child: Column(children: [
            Expanded(child: Container(color: Colors.blue))
          ],)),
          Expanded(flex: 3, child: Column(children: [
            Expanded(child: Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const PageRoute2())
                    );
                  },
                  child: const Text("Naviguer vers la page 2")
              )
            ))
          ],))
        ])),
        Expanded(child: Row(children: [
          Expanded(child: Column(children: [
            Expanded(child: Container(color: Colors.green))
          ],)),
          Expanded(child: Column(children: [
            Expanded(child: Container(color: Colors.red))
          ],))
        ])),
      ])
    );
  }

}