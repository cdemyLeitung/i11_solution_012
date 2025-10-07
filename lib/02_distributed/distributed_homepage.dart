import 'package:flutter/material.dart';
import 'package:i11_solution_012/02_distributed/distributed_quadrant.dart';

class DistributedHomepage extends StatefulWidget {
  const DistributedHomepage({super.key});

  @override
  State<DistributedHomepage> createState() => DistributedHomepageState();
}

class DistributedHomepageState extends State<DistributedHomepage> {
  List<int> counters = [0, 0, 0, 0];

  void _changeValue(int number, int direction) {
    final changeNumber = switch (number) {
      0 => 3,
      1 => 2,
      2 => 1,
      3 => 0,
      _ => throw ArgumentError(),
    };
    setState(() {
      counters[changeNumber] = counters[changeNumber] + direction;
    });
  }

  int _getValue(int number) => counters[number];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Row(
          children: [
            Container(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 2, 5, 5),
                child: Text(
                  '${counters.fold(0, (before, current) => before + current)}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  'Titel',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 2, 5, 5),
                child: Text(
                  '${counters.fold(0, (before, current) => before + current)}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                for (var i = 0; i < 2; i++)
                  Expanded(
                    child: DistributedQuadrant(
                      number: i,
                      onClick: _changeValue,
                      getValue: _getValue,
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                for (var i = 2; i < 4; i++)
                  Expanded(
                    child: DistributedQuadrant(
                      number: i,
                      onClick: _changeValue,
                      getValue: _getValue,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
