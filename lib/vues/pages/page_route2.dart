import 'package:exercice_2_layouts/vues/pages/page_route3.dart';
import 'package:flutter/material.dart';

class PageRoute2 extends StatelessWidget{
  const PageRoute2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Mon App"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(children: [
        Center(child: ElevatedButton(
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => const PageRoute3())
            );
          },
          child: const Text("Naviguer vers la page 3")
        )),
        Expanded(child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            for(var i = 0; i < 30; i++)
              Row(key: Key(i.toString()), children: [
                Text("Élément ${i + 1}", style: TextStyle(fontSize: 32))
              ],)
          ],
        ))
      ],),
    );
  }

}