// import 'package:flutter/material.dart';
// import 'package:learning_flutter/widgets/content_column.dart';

// class Home extends StatelessWidget {
//   const Home({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//       ),
//       backgroundColor: Colors.pink[100],
//       body: const Padding(
//         padding: EdgeInsets.all(8.0),
//         child: Row(children: [
//           ContentColumn(title: 'Primera Columna', text: 'Primer Parrafo'),
//           ContentColumn(title: 'Segunda Columna', text: 'Segundo Parrafo'),
//           ContentColumn(title: 'Tercer Columna', text: 'Tercer Parrafo'),
//         ]),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => print('click'),
//         backgroundColor: Colors.pink[300],
//         foregroundColor: Colors.white,
//         child: const Icon(Icons.home),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//     );
//   }
// }
