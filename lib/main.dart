import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Test(),
  ));
}

// class Home extends StatelessWidget {
//   int ludoNumber = 2;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 236, 35, 62),
//       appBar: AppBar(
//         elevation: 20,
//         centerTitle: true,
//         title: Center(
//           child: Text('Luddo_App'),
//         ),
//         backgroundColor: Color.fromARGB(255, 236, 35, 62),
//       ),
//       body: Center(
//         child: Row(
//           children: [
//             Expanded(
//                 child: Padding(
//               padding: const EdgeInsets.only(left: 16, right: 16),
//               child: GestureDetector(
//                   onTap: () {
//                     print('taphghped');
//                   },
//                   child: Image.asset('images/dice$ludoNumber.png')),
//             )),
//             Expanded(
//                 child: Padding(
//               padding: const EdgeInsets.only(left: 16, right: 16),
//               child: GestureDetector(
//                   onTap: () {
//                     print('hi');
//                   },
//                   child: Image.asset('images/dice4.png')),
//             )),
//           ],
//         ),
//       ),
//     );
//   }
// }

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int ludoNumber = 1;
  int ludoNumber2 = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 35, 62),
      appBar: AppBar(
        elevation: 20,
        centerTitle: true,
        title: Center(
          child: Text('Luddo_App'),
        ),
        backgroundColor: Color.fromARGB(255, 236, 35, 62),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      ludoNumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$ludoNumber.png')),
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      ludoNumber2 = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$ludoNumber2.png')),
            )),
          ],
        ),
      ),
    );
  }
}
