import 'package:flutter/material.dart';

class PokeDetail extends StatelessWidget{
  const PokeDetail({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(32),
                child: Image.network(
                  "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png",
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text(
                  'No.25',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const Text(
            'pikachu',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          // const Chip(
          //   label: Text('electric'),
          //   backgroundColor: Colors.yellow,
          // ),
          Chip(
            backgroundColor: Colors.yellow,
            label: Text(
              'electric',
              style: TextStyle(
                  color: Colors.yellow.computeLuminance() > 0.5
                      ? Colors.black
                      : Colors.white),
            ),
          ),
          // Container(
          //   child: const Text('electric'),
          //   padding: const EdgeInsets.all(8),
          //   decoration: BoxDecoration(
          //     color: Colors.yellow,
          //     borderRadius: BorderRadius.circular(20),
          //   ),
          // ),
        ]),
      ),
    );
  }
}