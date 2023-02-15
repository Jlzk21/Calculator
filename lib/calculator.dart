import 'package:flutter/material.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  late int sd;
  late int operator;
  late String result;
  String txtOutput = '';

  final ButtonStyle style = ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50.0),

  )));


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            ListTile(
              title: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  txtOutput,
                  style: const TextStyle(
                    fontSize: 60,
                    textBaseline: TextBaseline.alphabetic,
                  ),
                ),
              ),
              trailing: PopupMenuButton<String>(
                padding: EdgeInsets.zero,
                onSelected: (value) {},
                itemBuilder: (context) => <PopupMenuItem<String>>[
                  const PopupMenuItem<String>(
                    child: Text(
                      'History',
                    ),
                  ),
                  const PopupMenuItem<String>(
                    enabled: false,
                    child: Text(
                      'Dev by JULZ',
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: style,
                              child: const Text('MC')),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  txtOutput = '';
                                  result = '';
                                });
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                              child: const Text('C')),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  txtOutput = '${txtOutput}7';
                                });
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                              child: const Text('7')),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  txtOutput = '${txtOutput}4';
                                });
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                              child: const Text('4')),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  txtOutput = '${txtOutput}1';
                                });
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                              child: const Text('1')),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  operator = 5;
                                  sd = int.parse(txtOutput);
                                  txtOutput = '';
                                });
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                              child: const Text('%')),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                              child: const Text('M+')),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              onPressed: () {
                                operator = 4;
                                sd = int.parse(txtOutput);
                                txtOutput = '';
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                              child: const Text('/')),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  txtOutput = '${txtOutput}8';
                                });
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                              child: const Text('8')),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  txtOutput = '${txtOutput}5';
                                });
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                              child: const Text('5')),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  txtOutput = '${txtOutput}2';
                                });
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                              child: const Text('2')),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  txtOutput = '${txtOutput}0';
                                });
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                              child: const Text('0')),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                              child: const Text('M-')),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              onPressed: () {
                                operator = 3;
                                sd = int.parse(txtOutput);
                                txtOutput = '';
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                              child: const Text('*')),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  txtOutput = '${txtOutput}9';
                                });
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                              child: const Text('9')),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  txtOutput = '${txtOutput}6';
                                });
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                              child: const Text('6')),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  txtOutput = '${txtOutput}3';
                                });
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                              child: const Text('3')),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  txtOutput = '$txtOutput.';
                                });
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                              child: const Text('.')),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                              child: const Text('MR')),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  txtOutput = ((txtOutput.isEmpty)
                                      ? ''
                                      : (txtOutput.substring(
                                          0, txtOutput.length - 1)));
                                });
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                              child: const Text('DEL')),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              onPressed: () {
                                operator = 2;
                                sd = int.parse(txtOutput);
                                txtOutput = '';
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                              child: const Text('-')),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  operator = 1;
                                  sd = int.parse(txtOutput);
                                  txtOutput = '';
                                });
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                              child: const Text('+')),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 120 + 15,
                          width: 60,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  switch (operator) {
                                    case 1:
                                      result = (sd + int.parse(txtOutput))
                                          .toString();
                                      txtOutput = result;
                                      break;
                                    case 2:
                                      result = (sd - int.parse(txtOutput))
                                          .toString();
                                      txtOutput = result;
                                      break;
                                    case 3:
                                      result = (sd * int.parse(txtOutput))
                                          .toString();
                                      txtOutput = result;
                                      break;
                                    case 4:
                                      result = (sd / int.parse(txtOutput))
                                          .toString();
                                      txtOutput = result;
                                      break;
                                    case 5:
                                      result = (sd * 100).toString();
                                      txtOutput = result;
                                      break;
                                    case 6:
                                      break;
                                  }
                                });
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                              child: const Text('=')),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
