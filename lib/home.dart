import 'package:flutter/material.dart';

import 'components/products.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('MyHomePage'),
      ),
      body: Column(
        children: [
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddProduct(),
                ),
              );
            },
            icon: const Icon(Icons.publish),
            label: const Text('Start'),
          )
        ],
      ),
    );
  }
}
