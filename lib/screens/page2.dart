import 'package:flutter/material.dart';

class HalamanDua extends StatelessWidget {
  const HalamanDua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PBM Basic UI 2022',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Halaman Course'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.contact_phone),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        body: const Center(
          child: Text('Isi halaman course '),
        ),
      ),
    );
  }
}
