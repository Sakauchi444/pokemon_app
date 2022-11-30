import 'package:flutter/material.dart';
import 'poke_detail.dart';
import 'poke_list_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemon Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(),
      home: const TopPage(),
    );
  }
}
class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ListView(
      //   children: List.generate(10000, (id) => id)
      //       .map((val) => PikaButton(index: val))
      //       .toList(),
      // ),
    // );
      body: ListView.builder(
          itemCount: 10000,
          // itemBuilder: (context, index) => PikaButton(index: index)),
          itemBuilder: (context, index) => PokeListItem(index: index)),
    );
  }
}

class PikaButton extends StatelessWidget {
  const PikaButton({Key? key, index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('pikachu'),
      onPressed: () => {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => const PokeDetail(),
            // builder: (BuildContext context) => const PokeListItem(index: index),
          ),
        ),
      },
    );
  }
}