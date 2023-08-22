import 'package:dart_widgets/main.dart';
import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.green,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Color.fromARGB(255, 189, 170, 170),
                ),
                Container(
                  width: 200,
                  height: 200,
                  padding: const EdgeInsets.all(5),
                  alignment: Alignment.bottomCenter,
                  decoration: const BoxDecoration(
                    backgroundBlendMode: BlendMode.overlay,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Colors.grey,
                        Color.fromARGB(255, 46, 44, 44),
                        Colors.black
                      ],
                    ),
                  ),
                  child: const Text(
                    'Foreground Text',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
