import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
      title: "Frases do dia",
      home: HomeState()
  ));
}

class HomeState extends StatefulWidget {
  const HomeState({super.key});

  @override
  State<HomeState> createState() => _HomeStateState();
}

class _HomeStateState extends State<HomeState> {

  var _texto = "Clique para sortear uma frase";
  var _frases = [
    "Frase 1",
    "Frase 2",
    "Frase 3",
    "Frase 4",
    "Frase 5",
    "Frase 6"
  ];

  void sortearFrase(){

    var _fraseEscolhida = new Random().nextInt(6);
    setState(() {
      _texto = _frases[_fraseEscolhida];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.lightGreen
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        width: double.infinity, //ocupar 100% da largura disponivel
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.amber)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.all(10)
            ),
            Image.asset("imagens/logo.png"),
            Text(_texto),
            ElevatedButton(
                onPressed: () => sortearFrase(),
                child: Text("Nova frase")
            )
          ],
        ),
      )
    );
  }
}


