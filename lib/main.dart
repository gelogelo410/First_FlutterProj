import 'package:flutter/material.dart';

void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 192, 248, 248),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('Checking List'),
          centerTitle: true,
        ),
        body: const SafeArea(
            child: Center(
              child: Column(
                children: [
                  Text('Nami dakilang Chismosa.'),
                  SizedBox(
                    height: 10,
                  ),
                  LinearProgressIndicator(
                    value: 0.9,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListahanSaMgaGiChismisNiNami()
                ],
              ),
            ),
          ),
        ),
      );
  }
}

class ListahanSaMgaGiChismisNiNami extends StatelessWidget {
  const ListahanSaMgaGiChismisNiNami({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Chismosa(),
        Chismosa(),
        Chismosa(),
        Chismosa(),
        Chismosa(),
        Chismosa(),
        Chismosa(),
        Chismosa(),
        Chismosa(),
      ],

    );
  }
}


class Chismosa extends StatefulWidget {
  const Chismosa({super.key});

  @override
  State<Chismosa> createState() => _ChismosaState();
}

class _ChismosaState extends State<Chismosa> {
  bool balyu = false;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          onChanged: (newValue){
            setState(() {
              balyu = !balyu; balyu = balyu;
            });
          },
          value: balyu,
        ),
        const Text('Naay Pink CARD'),
      ],
    );
  }
}
