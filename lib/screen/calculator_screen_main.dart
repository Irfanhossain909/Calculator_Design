import 'package:flutter/material.dart';

class CalculatorScreenMain extends StatelessWidget {
  const CalculatorScreenMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Calculator',
          style: TextStyle(fontSize: 18.0, color: Colors.black87),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Column(
            children: [
              Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: Screen(
                            text: '0',
                          )),
                    ],
                  )),
            ],
          )),
          Expanded(
              flex: 4,
              child: Column(
            children: [
              Expanded(
                flex:1,
                  child: Row(
                    children: [
                      Expanded(
                          child: MyBox(text: 'log',)),
                      Expanded(
                          child: MyBox(text: 'In',)),
                      Expanded(
                          child: MyBox(text: 'x^n',)),
                      Expanded(
                          child: MyBox(text: 'sqrt',)),
                      Expanded(
                          child: MyBox(text: '!',)),
                    ],
                  )),
              Expanded(
                flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: MyBox(text: 'sin',)),
                      Expanded(
                          flex: 1,
                          child: MyBox(text: 'cos',)),
                      Expanded(
                          flex: 2,
                          child: MyBox(text: 'tan',)),
                    ],
                  )),
              Expanded(
                flex: 4,
                  child: Row(
                    children: [
                      Expanded(child: Column(
                        children: [
                          Expanded(child: MyBox(text: '7',)),
                          Expanded(child: MyBox(text: '4',)),
                          Expanded(child: MyBox(text: '1',)),
                          Expanded(child: MyBox(text: '',)),
                        ],
                      )),
                      Expanded(child: Column(
                        children: [
                          Expanded(child: MyBox(text: '8',)),
                          Expanded(child: MyBox(text: '5',)),
                          Expanded(child: MyBox(text: '2',)),
                          Expanded(child: MyBox(text: '0',)),
                        ],
                      )),
                      Expanded(child: Column(
                        children: [
                          Expanded(child: MyBox(text: '9',)),
                          Expanded(child: MyBox(text: '6',)),
                          Expanded(child: MyBox(text: '3',)),
                          Expanded(child: MyBox(text: '.',)),
                        ],
                      )),
                      Expanded(child: Column(
                        children: [
                          Expanded(child: MyBox(text: '+',)),
                          Expanded(child: MyBox(text: '-',)),
                          Expanded(child: MyBox(text: '*',)),
                          Expanded(child: MyBox(text: '/',)),
                        ],
                      )),
                      Expanded(child: Column(
                        children: [
                          Expanded(
                              flex: 1,
                              child: MyBox(text: 'AC',)),
                          Expanded(
                              flex: 1,
                              child: MyBox(text: 'C',)),
                          Expanded(
                              flex: 2,
                              child: MyBox(text: '=',)),
                        ],
                      )),
                    ],
                  )),
            ],
          )),

        ],
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  const MyBox({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      margin: const EdgeInsets.all(1.0),
      width: 100.0,
      //height: 100.0,
      decoration: BoxDecoration(
        color: Colors.cyan,
        borderRadius: BorderRadius.circular(6.0),
        gradient: LinearGradient(
          colors: [Colors.teal,Colors.teal],
        )



      ),
      child: Text(text, style: TextStyle(fontSize: 30.0, color: Colors.white),),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({super.key, required this.text,});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.teal,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,Colors.teal.shade400,
          ],
        )
      ),
      alignment: AlignmentDirectional.centerEnd,
      width: double.infinity,
      // height: 200.0,
      child: Text(text, style: TextStyle(fontSize: 100.0),),
    );
  }
}
