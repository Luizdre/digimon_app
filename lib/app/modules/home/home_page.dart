// ignore_for_file: use_key_in_widget_constructors

import 'package:digimon/app/modules/home/home_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  void initState() {
    super.initState();
    store.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter'),
        ),
        body: Observer(
            builder: (context) => store.digimons.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemCount: store.digimons.length,
                    itemBuilder: (c, i) => FittedBox(
                          child: Card(
                            child: Column(
                              children: [
                                Image.network(store.digimons[i].img!),
                                Text('Nome: ${store.digimons[i].name}'),
                                Text('Nível ${store.digimons[i].level}')
                              ],
                            ),
                          ),
                        ))));
  }
}
