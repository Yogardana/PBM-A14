import 'package:flutter/material.dart';

class pagesatu extends StatelessWidget {
  const pagesatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PBM Basic UI 2022',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Halaman Home'),
        ),
        body: const Center(
          child: Text('Isi halaman home'),
        ),
      ),
    );
  }
}

// class DrawerA extends StatelessWidget {
//   const DrawerA({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(title)),
//       body: const Center(
//         child: Text('isi halaman!'),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blueAccent,
//               ),
//               child: Text('Judul'),
//             ),
//             ListTile(
//               title: const Text('Item 1'),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               title: const Text('Item 2'),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
