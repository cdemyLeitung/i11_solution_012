import 'package:flutter/material.dart';
import 'package:i11_solution_012/02_distributed/distributed_homepage_title.dart';
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
        title: DistributedHomepageTitle(counters: counters),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(child: _quadrant(0)),
                Expanded(child: _quadrant(1)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: _quadrant(2)),
                Expanded(child: _quadrant(3)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _quadrant(int number) => DistributedQuadrant(
    number: number,
    onClick: _changeValue,
    getValue: _getValue,
  );
}
